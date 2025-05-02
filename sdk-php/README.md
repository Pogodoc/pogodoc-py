# OpenAPIClient-php

API for Pogodoc document and template management service. Provides endpoints for rendering documents, managing templates, generating previews, and handling API tokens.


## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RenderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$documents_immediate_render_post_request = new \OpenAPI\Client\Model\DocumentsImmediateRenderPostRequest(); // \OpenAPI\Client\Model\DocumentsImmediateRenderPostRequest

try {
    $result = $apiInstance->documentsImmediateRenderPost($documents_immediate_render_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenderApi->documentsImmediateRenderPost: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.pogodoc.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*RenderApi* | [**documentsImmediateRenderPost**](docs/Api/RenderApi.md#documentsimmediaterenderpost) | **POST** /documents/immediate-render | Immediate Render
*RenderApi* | [**documentsInitPost**](docs/Api/RenderApi.md#documentsinitpost) | **POST** /documents/init | Initialize Render Job
*RenderApi* | [**documentsJobIdRenderPost**](docs/Api/RenderApi.md#documentsjobidrenderpost) | **POST** /documents/{jobId}/render | Start Render Job
*RenderApi* | [**documentsRenderPreviewPost**](docs/Api/RenderApi.md#documentsrenderpreviewpost) | **POST** /documents/render-preview | Generate Document Preview
*RenderApi* | [**jobsJobIdGet**](docs/Api/RenderApi.md#jobsjobidget) | **GET** /jobs/{jobId} | Get Job Status
*TemplatesApi* | [**templatesInitGet**](docs/Api/TemplatesApi.md#templatesinitget) | **GET** /templates/init | Initialize Template Creation
*TemplatesApi* | [**templatesTemplateIdClonePost**](docs/Api/TemplatesApi.md#templatestemplateidclonepost) | **POST** /templates/{templateId}/clone | Clone Template
*TemplatesApi* | [**templatesTemplateIdDelete**](docs/Api/TemplatesApi.md#templatestemplateiddelete) | **DELETE** /templates/{templateId} | Delete Template
*TemplatesApi* | [**templatesTemplateIdIndexHtmlGet**](docs/Api/TemplatesApi.md#templatestemplateidindexhtmlget) | **GET** /templates/{templateId}/index-html | Get Template Index HTML
*TemplatesApi* | [**templatesTemplateIdIndexHtmlPost**](docs/Api/TemplatesApi.md#templatestemplateidindexhtmlpost) | **POST** /templates/{templateId}/index-html | Upload Template Index HTML
*TemplatesApi* | [**templatesTemplateIdPost**](docs/Api/TemplatesApi.md#templatestemplateidpost) | **POST** /templates/{templateId} | Save New Template
*TemplatesApi* | [**templatesTemplateIdPresignedUrlGet**](docs/Api/TemplatesApi.md#templatestemplateidpresignedurlget) | **GET** /templates/{templateId}/presigned-url | Generate Presigned URL
*TemplatesApi* | [**templatesTemplateIdPut**](docs/Api/TemplatesApi.md#templatestemplateidput) | **PUT** /templates/{templateId} | Update Template
*TemplatesApi* | [**templatesTemplateIdRenderPreviewsPost**](docs/Api/TemplatesApi.md#templatestemplateidrenderpreviewspost) | **POST** /templates/{templateId}/render-previews | Generate Template Previews
*TemplatesApi* | [**templatesTemplateIdUnzipPost**](docs/Api/TemplatesApi.md#templatestemplateidunzippost) | **POST** /templates/{templateId}/unzip | Extract Template Files
*TokensApi* | [**apiTokensTokenIdDelete**](docs/Api/TokensApi.md#apitokenstokeniddelete) | **DELETE** /api-tokens/{tokenId} | Delete API Token

## Models

- [DocumentsImmediateRenderPost200Response](docs/Model/DocumentsImmediateRenderPost200Response.md)
- [DocumentsImmediateRenderPostRequest](docs/Model/DocumentsImmediateRenderPostRequest.md)
- [DocumentsInitPost200Response](docs/Model/DocumentsInitPost200Response.md)
- [DocumentsInitPostRequest](docs/Model/DocumentsInitPostRequest.md)
- [DocumentsInitPostRequestAllOfTarget](docs/Model/DocumentsInitPostRequestAllOfTarget.md)
- [DocumentsJobIdRenderPost200Response](docs/Model/DocumentsJobIdRenderPost200Response.md)
- [DocumentsJobIdRenderPostRequest](docs/Model/DocumentsJobIdRenderPostRequest.md)
- [JobsJobIdGet200Response](docs/Model/JobsJobIdGet200Response.md)
- [JobsJobIdGet200ResponseOutput](docs/Model/JobsJobIdGet200ResponseOutput.md)
- [JobsJobIdGet200ResponseOutputMetadata](docs/Model/JobsJobIdGet200ResponseOutputMetadata.md)
- [TemplatesInitGet200Response](docs/Model/TemplatesInitGet200Response.md)
- [TemplatesTemplateIdClonePost200Response](docs/Model/TemplatesTemplateIdClonePost200Response.md)
- [TemplatesTemplateIdIndexHtmlGet200Response](docs/Model/TemplatesTemplateIdIndexHtmlGet200Response.md)
- [TemplatesTemplateIdPostRequest](docs/Model/TemplatesTemplateIdPostRequest.md)
- [TemplatesTemplateIdPresignedUrlGet200Response](docs/Model/TemplatesTemplateIdPresignedUrlGet200Response.md)
- [TemplatesTemplateIdPut200Response](docs/Model/TemplatesTemplateIdPut200Response.md)
- [TemplatesTemplateIdPutRequest](docs/Model/TemplatesTemplateIdPutRequest.md)
- [TemplatesTemplateIdPutRequestAllOfPreviewIds](docs/Model/TemplatesTemplateIdPutRequestAllOfPreviewIds.md)
- [TemplatesTemplateIdPutRequestAllOfTemplateInfo](docs/Model/TemplatesTemplateIdPutRequestAllOfTemplateInfo.md)
- [TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner](docs/Model/TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner.md)
- [TemplatesTemplateIdPutRequestAllOfTemplateInfoType](docs/Model/TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md)
- [TemplatesTemplateIdRenderPreviewsPost200Response](docs/Model/TemplatesTemplateIdRenderPreviewsPost200Response.md)
- [TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview](docs/Model/TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview.md)
- [TemplatesTemplateIdRenderPreviewsPostRequest](docs/Model/TemplatesTemplateIdRenderPreviewsPostRequest.md)
- [TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts](docs/Model/TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md)
- [TemplatesTemplateIdRenderPreviewsPostRequestFormatOptsAllOfFormat](docs/Model/TemplatesTemplateIdRenderPreviewsPostRequestFormatOptsAllOfFormat.md)
- [TemplatesTemplateIdUnzipPostRequest](docs/Model/TemplatesTemplateIdUnzipPostRequest.md)

## Authorization

Authentication schemes defined for the API:
### bearerAuth

- **Type**: Bearer authentication (Api Token)

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `0.1.0`
    - Generator version: `7.13.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
