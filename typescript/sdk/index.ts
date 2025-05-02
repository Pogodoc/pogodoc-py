import axios from "axios";
import { createReadStream, statSync } from "fs";
import {
  DocumentsImmediateRenderPostRequest,
  RenderApi,
  TemplatesApi,
  TemplatesTemplateIdRenderPreviewsPostRequest,
  TokensApi,
  DocumentsInitPostRequest,
  DocumentsJobIdRenderPostRequest,
  TemplatesTemplateIdUnzipPostRequest,
  TemplatesTemplateIdPostRequest,
  TemplatesTemplateIdPutRequest,
} from "../api";
import { Configuration } from "../configuration";
import {
  GenerateDocumentProps,
  SaveTemplateMetadata,
  UpdateTemplateProps,
} from "./types";
import { uploadToS3WithUrl } from "./utils";
import { Readable } from "stream";

class PogodocClient {
  private config: Configuration;
  private templatesApi: TemplatesApi;
  private renderApi: RenderApi;
  private tokensApi: TokensApi;

  constructor({ token, gatewayURL }: { token: string; gatewayURL?: string }) {
    this.config = new Configuration({
      accessToken: token,
      basePath: gatewayURL || "https://api.pogodoc.com",
    });
    this.templatesApi = new TemplatesApi(this.config);
    this.renderApi = new RenderApi(this.config);
    this.tokensApi = new TokensApi(this.config);
  }

  async initDocument(request: DocumentsInitPostRequest) {
    return await this.renderApi.documentsInitPost(request);
  }

  async startRender(jobId: string, request?: DocumentsJobIdRenderPostRequest) {
    return await this.renderApi.documentsJobIdRenderPost(jobId, request);
  }

  async getJobStatus(jobId: string) {
    return await this.renderApi.jobsJobIdGet(jobId);
  }

  async initTemplate() {
    return await this.templatesApi.templatesInitGet();
  }

  async unzipTemplate(
    templateId: string,
    request: TemplatesTemplateIdUnzipPostRequest
  ) {
    return await this.templatesApi.templatesTemplateIdUnzipPost(
      templateId,
      request
    );
  }

  async finalizeTemplate(
    templateId: string,
    request: TemplatesTemplateIdPostRequest
  ) {
    return await this.templatesApi.templatesTemplateIdPost(templateId, request);
  }

  async updateTemplateMetadata(
    templateId: string,
    request: TemplatesTemplateIdPutRequest
  ) {
    return await this.templatesApi.templatesTemplateIdPut(templateId, request);
  }

  async generateDocument({
    template,
    templateId,
    data,
    renderConfig,
  }: GenerateDocumentProps) {
    const initResponse = await this.renderApi.documentsInitPost({
      type: renderConfig.type,
      target: renderConfig.target,
      formatOpts: renderConfig.formatOpts,
      templateId,
    });

    const dataString = JSON.stringify(data);
    const dataStream = Readable.from(dataString);

    if (initResponse.data.presignedDataUploadUrl) {
      await uploadToS3WithUrl(
        initResponse.data.presignedDataUploadUrl,
        dataStream,
        dataString.length
      );
    }

    if (template && initResponse.data.presignedTemplateUploadUrl) {
      await uploadToS3WithUrl(
        initResponse.data.presignedTemplateUploadUrl,
        Readable.from(template),
        template.length,
        "text/html"
      );
    }

    await this.renderApi.documentsJobIdRenderPost(initResponse.data.jobId, {
      uploadPresignedS3Url: renderConfig.personalUploadPresignedS3Url,
      shouldWaitForRenderCompletion: renderConfig.shouldWaitForRenderCompletion,
    });

    const results = await this.renderApi.jobsJobIdGet(initResponse.data.jobId);

    return results.data;
  }

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
    categories,
    title,
    description,
    sampleData,
    type,
    formatOpts,
  }: {
    payload: any;
    payloadLength: number;
    categories: string[];
    title: string;
    description: string;
    sampleData: any;
    type: string;
    formatOpts?: any;
  }) {
    const initResponse = await this.templatesApi.templatesInitGet();
    const templateId = initResponse.data.jobId;
    console.log(templateId);

    await uploadToS3WithUrl(
      initResponse.data.presignedTemplateUploadUrl,
      payload,
      payloadLength,
      "application/zip"
    );

    await this.templatesApi.templatesTemplateIdUnzipPost(templateId, {
      templateId,
    });

    const previewResponse =
      await this.templatesApi.templatesTemplateIdRenderPreviewsPost(
        templateId,
        {
          type,
          data: sampleData,
          formatOpts,
        }
      );

    console.log(previewResponse.data);

    await this.templatesApi.templatesTemplateIdPost(templateId, {
      templateInfo: {
        title,
        description,
        type,
        categories,
        sampleData,
      },
      previewIds: {
        pngJobId: previewResponse.data.pngPreview.jobId,
        pdfJobId: previewResponse.data.pdfPreview.jobId,
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
  } & SaveTemplateMetadata) {
    const zip = createReadStream(path);
    const zipLength = statSync(path).size;

    return await this.updateTemplateFromFileStream({
      payload: zip,
      payloadLength: zipLength,
      ...rest,
    });
  }

  async updateTemplateFromFileStream({
    templateId,
    payload,
    payloadLength,
    categories,
    title,
    description,
    sampleData,
    type,
    formatOpts,
  }: UpdateTemplateProps) {
    const initResponse = await this.templatesApi.templatesInitGet();
    const contentId = initResponse.data.jobId;

    await uploadToS3WithUrl(
      initResponse.data.presignedTemplateUploadUrl,
      payload,
      payloadLength,
      "application/zip"
    );

    await this.templatesApi.templatesTemplateIdUnzipPost(contentId, {
      templateId: contentId,
    });

    const previewResponse =
      await this.templatesApi.templatesTemplateIdRenderPreviewsPost(contentId, {
        type,
        data: sampleData,
        formatOpts,
      });

    console.log(previewResponse.data);

    const { pngPreview, pdfPreview } = previewResponse.data;

    const updateResponse = await this.templatesApi.templatesTemplateIdPut(
      templateId,
      {
        contentId,
        templateInfo: {
          title,
          description,
          type,
          categories,
          sampleData,
        },
        previewIds: {
          pngJobId: pngPreview.jobId,
          pdfJobId: pdfPreview.jobId,
        },
      }
    );

    return updateResponse.data.newContentId;
  }

  async deleteTemplate(templateId: string) {
    await this.templatesApi.templatesTemplateIdDelete(templateId);
  }

  async cloneTemplate(templateId: string) {
    const response = await this.templatesApi.templatesTemplateIdClonePost(
      templateId
    );
    return response.data;
  }

  async generateTemplatePresignedGetUrl(templateId: string) {
    const response = await this.templatesApi.templatesTemplateIdPresignedUrlGet(
      templateId
    );
    return response.data;
  }

  async getTemplateIndexHtml(templateId: string) {
    const response = await this.templatesApi.templatesTemplateIdIndexHtmlGet(
      templateId
    );
    return response.data;
  }

  async uploadTemplateIndexHtml(templateId: string, templateIndex: string) {
    await this.templatesApi.templatesTemplateIdIndexHtmlPost(templateId, {
      templateIndex,
    });
  }

  async deleteApiToken(tokenId: string) {
    await this.tokensApi.apiTokensTokenIdDelete(tokenId);
    return true;
  }

  async renderDocumentPreview(
    templateId: string,
    renderConfig: TemplatesTemplateIdRenderPreviewsPostRequest
  ) {
    const response = await this.renderApi.documentsRenderPreviewPost(
      templateId,
      renderConfig
    );
    return response.data;
  }

  async immediateRender(renderConfig: DocumentsImmediateRenderPostRequest) {
    const response = await this.renderApi.documentsImmediateRenderPost(
      renderConfig
    );
    return response.data;
  }
}

export default PogodocClient;
