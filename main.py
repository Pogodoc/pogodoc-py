import os
import json
import io
from sdk.client import PogodocApi, AsyncPogodocApi
from utils import upload_to_s3_with_url
from sdk.templates.types.clone_template_response import CloneTemplateResponse
from sdk.templates.types.generate_presigned_get_url_response import GeneratePresignedGetUrlResponse
from sdk.templates.types.generate_template_previews_request_format_opts import GenerateTemplatePreviewsRequestFormatOpts
from sdk.templates.types.generate_template_previews_request_type import GenerateTemplatePreviewsRequestType
from sdk.templates.types.generate_template_previews_response import GenerateTemplatePreviewsResponse
from sdk.templates.types.get_template_index_html_response import GetTemplateIndexHtmlResponse
from sdk.templates.types.initialize_template_creation_response import InitializeTemplateCreationResponse
from sdk.templates.types.save_created_template_request_preview_ids import SaveCreatedTemplateRequestPreviewIds
from sdk.templates.types.save_created_template_request_template_info import SaveCreatedTemplateRequestTemplateInfo
from sdk.templates.types.update_template_request_preview_ids import UpdateTemplateRequestPreviewIds
from sdk.templates.types.update_template_request_template_info import UpdateTemplateRequestTemplateInfo
from sdk.templates.types.update_template_response import UpdateTemplateResponse


class PogodocClient(PogodocApi):
    def __init__(self, token: str, base_url: str):
        super().__init__(token=token, base_url=base_url)
   
    def save_template(self, path: str, **kwargs):
        zip = open(path, "rb")
        zip_length = os.path.getsize(path)
        return self.save_template_from_file_stream(payload=zip, payload_length=zip_length, **kwargs)
    
    def save_template_from_file_stream(self, payload, payload_length, **kwargs):
        init_response = self.templates.initialize_template_creation()

        template_id = init_response.job_id

        upload_to_s3_with_url(presigned_url=init_response.presigned_template_upload_url, payload=payload, payload_length=payload_length, content_type="application/zip")

        self.templates.extract_template_files(template_id)

        preview_response = self.templates.generate_template_previews(template_id,
            type=kwargs.get("type"),
            data=kwargs.get("data")
        )

        self.templates.save_created_template(template_id, 
            template_info=SaveCreatedTemplateRequestTemplateInfo(
                title=kwargs.get("title"),
                description=kwargs.get("description"),
                type=kwargs.get("type"),
                sample_data=kwargs.get("data"),
                categories=kwargs.get("categories"),
                source_code=kwargs.get("source_code")
            ),
            preview_ids=SaveCreatedTemplateRequestPreviewIds(
                png_job_id=preview_response.png_preview.job_id,
                pdf_job_id=preview_response.pdf_preview.job_id
            )
        )

        return template_id
    
    def update_template(self, template_id: str, path: str, **kwargs):
        """
        Updates an existing template with new content and/or metadata.

        Args:
            template_id: The ID of the template to update.
            path: Path to the new template ZIP file.
            **kwargs: Additional metadata such as title, description, type, sample_data, categories, source_code.
        """
        if not os.path.exists(path):
            raise FileNotFoundError(f"Template file not found at path: {path}")

        zip_length = os.path.getsize(path)
        with open(path, "rb") as zip_payload:
            return self.update_template_from_file_stream(
                template_id=template_id,
                payload=zip_payload,
                payload_length=zip_length,
                **kwargs
            )

    def update_template_from_file_stream(self, template_id: str, payload, payload_length, **kwargs):
        """
        Helper method to update a template using a file stream.
        """
        init_response = self.templates.initialize_template_creation()
        content_id = init_response.job_id

        upload_to_s3_with_url(
            presigned_url=init_response.presigned_template_upload_url,
            payload=payload,
            payload_length=payload_length,
            content_type="application/zip"
        )

        self.templates.extract_template_files(content_id)

        preview_response = self.templates.generate_template_previews(
            content_id,
            type=kwargs.get("type"),  # Template type (e.g., HTML, DOCX)
            data=kwargs.get("sample_data")  # Sample data for preview generation
        )

        template_info_obj = UpdateTemplateRequestTemplateInfo(
            title=kwargs.get("title"),
            description=kwargs.get("description"),
            type=kwargs.get("type"),
            sample_data=kwargs.get("sample_data"),
            categories=kwargs.get("categories"),
            source_code=kwargs.get("source_code") # Included if part of the type definition
        )

        updated_template_response = self.templates.update_template(
            template_id=template_id,  # The original template_id to update
            content_id=content_id,    # The new content bundle id
            template_info=template_info_obj,
            preview_ids=UpdateTemplateRequestPreviewIds(
                png_job_id=preview_response.png_preview.job_id,
                pdf_job_id=preview_response.pdf_preview.job_id
            )
        )
        # The update_template SDK call returns UpdateTemplateResponse, which might contain the content_id or other info.
        # TS example returns content_id. Let's return the response object from the SDK call for more flexibility.
        return updated_template_response


    def generate_document(self, template_id: str, data: dict, render_type: str, render_target: str, **kwargs):
        """
        Generates a document from a template and data.

        Args:
            template_id: ID of the template to use.
            data: Dictionary of data to populate the template.
            render_type (str): Output format type (e.g., 'PDF', 'PNG').
            render_target (str): Target for the rendered document (e.g., 'URL', 'S3').
            **kwargs: Render configuration options:
                format_opts (dict, optional): Format-specific options.
                personal_upload_presigned_s3_url (str, optional): Presigned S3 URL for direct upload if target is S3.
                should_wait_for_render_completion (bool, optional): Whether to wait for rendering to complete.
        """
        init_params = {
            "type": render_type,
            "target": render_target,
            "template_id": template_id,
        }
        format_opts = kwargs.get("format_opts")
        if format_opts:
            init_params["format_opts"] = format_opts
        
        init_response = self.documents.initialize_render_job(**init_params)

        print(init_response.job_id)

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


        start_render_job_kwargs = {}
        personal_s3_url = kwargs.get("personal_upload_presigned_s3_url")
        if personal_s3_url:
            start_render_job_kwargs["upload_presigned_s3_url"] = personal_s3_url
        
        should_wait = kwargs.get("should_wait_for_render_completion")
        if should_wait is not None:
            start_render_job_kwargs["should_wait_for_render_completion"] = should_wait

        self.documents.start_render_job(
            job_id=init_response.job_id,
            **start_render_job_kwargs
        )

        results = self.documents.get_job_status(init_response.job_id)
        return results


'''import { createReadStream, statSync } from "fs";
import { PogodocApiClient } from "./sdk";
import {
  FileStreamProps,
  GenerateDocumentProps,
  SaveTemplateMetadata,
  UpdateTemplateProps,
} from "./types";
import { uploadToS3WithUrl } from "./utils";
import { Readable } from "stream";
import { InitializeRenderJobRequest, StartRenderJobRequest } from "./sdk/api";

class PogodocClient extends PogodocApiClient {
  async saveTemplate({
    path,
    ...rest
  }: {
    path: string;
  } & SaveTemplateMetadata) {
    const zip = createReadStream(path);
    const zipLength = statSync(path).size;

    return await this.saveTemplateFromFileStream({
      payload: zip,
      payloadLength: zipLength,
      ...rest,
    });
  }

  async saveTemplateFromFileStream({
    payload,
    payloadLength,
    ...metadata
  }: FileStreamProps & SaveTemplateMetadata) {
    const { presignedTemplateUploadUrl, jobId: templateId } =
      await this.templates.initializeTemplateCreation();

    await uploadToS3WithUrl(
      presignedTemplateUploadUrl,
      payload,
      payloadLength,
      "application/zip"
    );

    await this.templates.extractTemplateFiles(templateId);

    const { pdfPreview, pngPreview } =
      await this.templates.generateTemplatePreviews(templateId, {
        type: metadata.type,
        data: metadata.sampleData,
      });

    console.log(pdfPreview, pngPreview);

    await this.templates.saveCreatedTemplate(templateId, {
      templateInfo: {
        title: metadata.title,
        description: metadata.description,
        type: metadata.type,
        categories: metadata.categories,
        sampleData: metadata.sampleData,
      },
      previewIds: {
        pngJobId: pngPreview.jobId,
        pdfJobId: pdfPreview.jobId,
      },
    });

    return templateId;
  }

  async updateTemplate({
    path,
    ...rest
  }: {
    path: string;
    templateId: string;
  } & UpdateTemplateProps) {
    const zip = createReadStream(path);
    const zipLength = statSync(path).size;

    return await this.updateTemplateFromFileStream({
      payload: zip,
      payloadLength: zipLength,
      ...rest,
    });
  }

  async updateTemplateFromFileStream({
    payload,
    payloadLength,
    ...metadata
  }: FileStreamProps & UpdateTemplateProps) {
    const { presignedTemplateUploadUrl, jobId: contentId } =
      await this.templates.initializeTemplateCreation();

    await uploadToS3WithUrl(
      presignedTemplateUploadUrl,
      payload,
      payloadLength,
      "application/zip"
    );

    await this.templates.extractTemplateFiles(contentId);

    const { pdfPreview, pngPreview } =
      await this.templates.generateTemplatePreviews(contentId, {
        type: metadata.type,
        data: metadata.sampleData,
      });

    await this.templates.updateTemplate(metadata.templateId, {
      contentId,
      templateInfo: {
        title: metadata.title,
        description: metadata.description,
        type: metadata.type,
        categories: metadata.categories,
        sampleData: metadata.sampleData,
      },
      previewIds: {
        pngJobId: pngPreview.jobId,
        pdfJobId: pdfPreview.jobId,
      },
    });

    return contentId;
  }

  async generateDocument({
    template,
    templateId,
    data,
    renderConfig,
  }: GenerateDocumentProps) {
    const initRequest: InitializeRenderJobRequest = {
      type: renderConfig.type,
      target: renderConfig.target,
      templateId,
    };

    if (renderConfig.formatOpts) {
      initRequest.formatOpts = renderConfig.formatOpts;
    }

    const initResponse = await this.documents.initializeRenderJob(initRequest);

    const dataString = JSON.stringify(data);
    const dataStream = Readable.from(dataString);

    if (initResponse.presignedDataUploadUrl) {
      await uploadToS3WithUrl(
        initResponse.presignedDataUploadUrl,
        dataStream,
        dataString.length
      );
    }

    if (template && initResponse.presignedTemplateUploadUrl) {
      await uploadToS3WithUrl(
        initResponse.presignedTemplateUploadUrl,
        Readable.from(template),
        template.length,
        "text/html"
      );
    }

    const startRenderJobRequest: StartRenderJobRequest = {
      uploadPresignedS3Url: renderConfig.personalUploadPresignedS3Url,
    };

    if (renderConfig.shouldWaitForRenderCompletion) {
      startRenderJobRequest.shouldWaitForRenderCompletion = true;
    }

    await this.documents.startRenderJob(
      initResponse.jobId,
      startRenderJobRequest
    );

    const results = await this.documents.getJobStatus(initResponse.jobId);

    return results;
  }
}

export default PogodocClient;
'''