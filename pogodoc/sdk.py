import os
import typing
import json
import io
import time
from pogodoc.client.client import PogodocApi
from pogodoc.utils import RenderConfig, upload_to_s3_with_url
from pogodoc.client.templates.types import SaveCreatedTemplateRequestPreviewIds, SaveCreatedTemplateRequestTemplateInfo, UpdateTemplateRequestPreviewIds, UpdateTemplateRequestTemplateInfo

class PogodocClient(PogodocApi):
    def __init__(self, token: str = None, base_url: str = None):
        token = token or os.getenv("POGODOC_API_TOKEN")
        base_url = base_url or os.getenv("POGODOC_BASE_URL")

        if not token:
            raise ValueError("API token is required. Please provide it either as a parameter or set the API_TOKEN environment variable.")

        super().__init__(token=token, base_url=base_url)
   
    def save_template(self, path: str, template_info:SaveCreatedTemplateRequestTemplateInfo):
        """
        Creates and saves a new template from a local ZIP file.

        Args:
            path: Local filesystem path to the ZIP file containing the template.
            template_info: Template metadata including:
                - title: Display name of the template
                - description: Detailed description of the template
                - type: Template type (e.g. "html", "docx")
                - sample_data: Example data structure for template preview
                - categories: List of category tags
                - source_code: Optional source code reference

        Returns:
            str: The ID of the newly created template
        """
        zip = open(path, "rb")
        zip_length = os.path.getsize(path)
        return self.save_template_from_file_stream(payload=zip, payload_length=zip_length, template_info=template_info)
    
    def save_template_from_file_stream(self, payload:io.BufferedReader, payload_length:int, template_info:SaveCreatedTemplateRequestTemplateInfo):
        """
        Creates and saves a new template from a file stream.

        Args:
            payload: File stream containing the template ZIP file
            payload_length: Length of the file stream in bytes
            template_info: Template metadata including:
                - title: Display name of the template
                - description: Detailed description of the template
                - type: Template type (e.g. "html", "docx") 
                - sample_data: Example data structure for template preview
                - categories: List of category tags
                - source_code: Optional source code reference

        Returns:
            str: The ID of the newly created template
        """
        init_response = self.templates.initialize_template_creation()

        template_id = init_response.template_id

        upload_to_s3_with_url(presigned_url=init_response.presigned_template_upload_url, payload=payload, payload_length=payload_length, content_type="application/zip")

        self.templates.extract_template_files(template_id)

        preview_response = self.templates.generate_template_previews(template_id,
            type=template_info.type,
            data=template_info.sample_data
        )

        self.templates.save_created_template(template_id, 
            template_info=template_info,
            preview_ids=SaveCreatedTemplateRequestPreviewIds(
                png_job_id=preview_response.png_preview.job_id,
                pdf_job_id=preview_response.pdf_preview.job_id
            )
        )

        return template_id
    
    def update_template(self, template_id: str, path: str, template_info:UpdateTemplateRequestTemplateInfo):
        """
        Updates an existing template with new content and metadata from a local ZIP file.

        Args:
            template_id: The ID of the template to update
            path: Local filesystem path to the new template ZIP file
            template_info: Updated template metadata including:
                - title: Display name of the template
                - description: Detailed description of the template
                - type: Template type (e.g. "html", "docx")
                - sample_data: Example data structure for template preview
                - categories: List of category tags
                - source_code: Optional source code reference

        Returns:
            UpdateTemplateResponse: Response containing the updated template details

        Raises:
            FileNotFoundError: If the template file cannot be found at the specified path
        """
        if not os.path.exists(path):
            raise FileNotFoundError(f"Template file not found at path: {path}")

        zip = open(path, "rb")
        zip_length = os.path.getsize(path)

        return self.update_template_from_file_stream(
            template_id=template_id,
            payload=zip,
            payload_length=zip_length,
            template_info=template_info
        )

    def update_template_from_file_stream(self, template_id: str, payload:io.BufferedReader, payload_length:int, template_info:UpdateTemplateRequestTemplateInfo):
        """
        Updates an existing template with new content and metadata from a file stream.

        Args:
            template_id: The ID of the template to update
            payload: File stream containing the new template ZIP file
            payload_length: Length of the file stream in bytes
            template_info: Updated template metadata including:
                - title: Display name of the template
                - description: Detailed description of the template
                - type: Template type (e.g. "html", "docx")
                - sample_data: Example data structure for template preview
                - categories: List of category tags
                - source_code: Optional source code reference

        Returns:
            UpdateTemplateResponse: Response containing the updated template details
        """
        init_response = self.templates.initialize_template_creation()
        content_id = init_response.template_id

        upload_to_s3_with_url(
            presigned_url=init_response.presigned_template_upload_url,
            payload=payload,
            payload_length=payload_length,
            content_type="application/zip"
        )

        self.templates.extract_template_files(content_id)

        preview_response = self.templates.generate_template_previews(
            template_id=content_id,
            type=template_info.type,
            data=template_info.sample_data
        )

        updated_template_response = self.templates.update_template(
            template_id=template_id,
            content_id=content_id,
            template_info=template_info,
            preview_ids= UpdateTemplateRequestPreviewIds(
                png_job_id=preview_response.png_preview.job_id,
                pdf_job_id=preview_response.pdf_preview.job_id
            )
        )
        return updated_template_response

    def generate_document(self, data: dict, render_config: RenderConfig, personal_upload_presigned_s3_url:typing.Optional[str] = None,  template: typing.Optional[str] = None, template_id: typing.Optional[str] = None):
        """
        Generates a document and returns the result immediately.
        Use this method for quick, synchronous rendering of small documents.
        The result is returned directly in the response.
        For larger documents or when you need to handle rendering asynchronously, use `start_generate_document`.

        Args:
            data: Dictionary containing the data to populate the template with
            render_config: Configuration object containing:
                - type: Output format (e.g. "pdf", "png", "html")
                - target: Render target location (e.g. "url", "s3")
                - format_opts: Optional format-specific settings
            personal_upload_presigned_s3_url: Optional presigned S3 URL for uploading the rendered document
            template: Optional raw template HTML string. Either template or template_id must be provided
            template_id: Optional template ID to use. Either template or template_id must be provided
        """
        init_response = self.start_generate_document(data, render_config, personal_upload_presigned_s3_url, template, template_id)
        return self.poll_for_job_completion(init_response.job_id)

    def start_generate_document(self, data: dict, render_config: RenderConfig, personal_upload_presigned_s3_url:typing.Optional[str] = None,  template: typing.Optional[str] = None, template_id: typing.Optional[str] = None):
        """
        Generates a document by rendering a template with provided data.

        Args:
            data: Dictionary containing the data to populate the template with
            render_config: Configuration object containing:
                - type: Output format (e.g. "pdf", "png", "html")
                - target: Render target location (e.g. "url", "s3")
                - format_opts: Optional format-specific settings
            personal_upload_presigned_s3_url: Optional presigned S3 URL for uploading the rendered document
            template: Optional raw template HTML string. Either template or template_id must be provided
            template_id: Optional template ID to use. Either template or template_id must be provided

        Returns:
            StartRenderJobResponse: Response containing the job id of the document being generated
        """

        # Prepare rendering options from the render_config object
        render_options = {
            "type": render_config.type,
            "target": render_config.target,
        }
        if render_config.format_opts:
            render_options["format_opts"] = render_config.format_opts

        init_response = self.documents.initialize_render_job(
            data=data,
            template_id=template_id,
            **render_options
        )
        
        if data and init_response.presigned_data_upload_url:
            data_string = json.dumps(data)
            data_stream = io.BytesIO(data_string.encode('utf-8'))
            data_length = len(data_string)

            upload_to_s3_with_url(
                presigned_url=init_response.presigned_data_upload_url,
                payload=data_stream,
                payload_length=data_length,
                content_type="application/json"
            )

        if template and init_response.presigned_template_upload_url:
            upload_to_s3_with_url(
                presigned_url=init_response.presigned_template_upload_url,
                payload=io.BytesIO(template.encode('utf-8')),
                payload_length=len(template),
                content_type="text/html"
            )

        return self.documents.start_render_job(
            job_id=init_response.job_id,
            upload_presigned_s_3_url=personal_upload_presigned_s3_url
        )
    
    
    def generate_document_immediate(self, data: dict, render_config: RenderConfig, template: typing.Optional[str] = None, template_id: typing.Optional[str] = None):
        """
        Generates a document and returns the result immediately.
        Use this method for quick, synchronous rendering of small documents.
        The result is returned directly in the response.
        For larger documents or when you need to handle rendering asynchronously, use `generateDocument`.

        Args:
            data: Dictionary containing the data to populate the template with
            render_config: Configuration object containing:
                - type: Output format (e.g. "pdf", "png", "html")
                - target: Render target location (e.g. "url", "s3")
                - format_opts: Optional format-specific settings
            personal_upload_presigned_s3_url: Optional presigned S3 URL for uploading the rendered document
            template: Optional raw template HTML string. Either template or template_id must be provided
            template_id: Optional template ID to use. Either template or template_id must be provided

        Returns:
            StartImmediateRenderResponse: Response containing the presigned url of the generated document
        """
        return self.documents.start_immediate_render(
            template_id=template_id,
            template=template,
            type=render_config.type,
            target=render_config.target,
            format_opts=render_config.format_opts,
            start_immediate_render_request_data=data,
        )
    
    def poll_for_job_completion(self, job_id: str, max_attempts: int = 60, interval_ms: int = 500):

        time.sleep(1)
        for attempt in range(max_attempts):
            job = self.documents.get_job_status(job_id)
            if job.status == "done":
                return job
            time.sleep(interval_ms / 1000)
        return self.documents.get_job_status(job_id)