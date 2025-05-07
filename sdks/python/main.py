import os
from sdk.client import PogodocApi, AsyncPogodocApi
from utils import upload_to_s3_with_url


class PogodocClient(PogodocApi):
    def __init__(self, token: str, base_url: str):
        super().__init__(token=token, base_url=base_url)
   
    def save_template(self, path: str, **kwargs):
        zip = open(path, "rb")
        zip_length = os.path.getsize(path)
        return self.save_template_from_file_stream(payload=zip, payload_length=zip_length, **kwargs)
    
    def save_template_from_file_stream(self, payload, payload_length, **kwargs):
        init_response = self.templates.initialize_template_creation()
        print(f"Template ID: {init_response.job_id}")

        upload_to_s3_with_url(presigned_url=init_response.presigned_template_upload_url, payload=payload, payload_length=payload_length, content_type="application/zip")
        print("Uploaded template to S3\n")
        self.templates.extract_template_files(init_response.job_id)
        print("Extracted template files\n")
        preview_response = self.templates.generate_template_previews(init_response.job_id, {
            "type": kwargs.get("type"),
            "data": kwargs.get("data")
        })
        print(preview_response)

        self.templates.save_created_template(init_response.job_id, {
            "template_info": {
                "title": kwargs.get("title"),
                "description": kwargs.get("description"),
                "type": kwargs.get("type"),
                "data": kwargs.get("data")
            },
            "preview_ids": {
                "png_job_id": preview_response,
                "pdf_job_id": preview_response.pdf_job_id
            }
        })


    def update_template(self, path: str, **kwargs):
        return self.update_template(path=path, **kwargs)

    def generate_document(self, template: str, data: dict):
        return self.generate_document(template=template, data=data)


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