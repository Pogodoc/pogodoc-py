# OpenAPI\Client\RenderApi

All URIs are relative to https://api.pogodoc.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**documentsImmediateRenderPost()**](RenderApi.md#documentsImmediateRenderPost) | **POST** /documents/immediate-render | Immediate Render |
| [**documentsInitPost()**](RenderApi.md#documentsInitPost) | **POST** /documents/init | Initialize Render Job |
| [**documentsJobIdRenderPost()**](RenderApi.md#documentsJobIdRenderPost) | **POST** /documents/{jobId}/render | Start Render Job |
| [**documentsRenderPreviewPost()**](RenderApi.md#documentsRenderPreviewPost) | **POST** /documents/render-preview | Generate Document Preview |
| [**jobsJobIdGet()**](RenderApi.md#jobsJobIdGet) | **GET** /jobs/{jobId} | Get Job Status |


## `documentsImmediateRenderPost()`

```php
documentsImmediateRenderPost($documents_immediate_render_post_request): \OpenAPI\Client\Model\DocumentsImmediateRenderPost200Response
```

Immediate Render

Combines initialization and rendering in one step. Creates a job, uploads template/data directly, starts rendering, and adds the document to Strapi. Requires subscription check.

### Example

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

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **documents_immediate_render_post_request** | [**\OpenAPI\Client\Model\DocumentsImmediateRenderPostRequest**](../Model/DocumentsImmediateRenderPostRequest.md)|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DocumentsImmediateRenderPost200Response**](../Model/DocumentsImmediateRenderPost200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `documentsInitPost()`

```php
documentsInitPost($documents_init_post_request): \OpenAPI\Client\Model\DocumentsInitPost200Response
```

Initialize Render Job

Creates a new render job with a unique ID, sets up S3 storage for template and data files, and generates presigned upload URLs if needed. Requires subscription check.

### Example

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
$documents_init_post_request = new \OpenAPI\Client\Model\DocumentsInitPostRequest(); // \OpenAPI\Client\Model\DocumentsInitPostRequest

try {
    $result = $apiInstance->documentsInitPost($documents_init_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenderApi->documentsInitPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **documents_init_post_request** | [**\OpenAPI\Client\Model\DocumentsInitPostRequest**](../Model/DocumentsInitPostRequest.md)|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DocumentsInitPost200Response**](../Model/DocumentsInitPost200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `documentsJobIdRenderPost()`

```php
documentsJobIdRenderPost($job_id, $documents_job_id_render_post_request): \OpenAPI\Client\Model\DocumentsJobIdRenderPost200Response
```

Start Render Job

Takes a previously initialized job, updates its status to in-progress, and triggers the rendering process using Puppeteer. Can optionally wait for render completion.

### Example

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
$job_id = 'job_id_example'; // string
$documents_job_id_render_post_request = new \OpenAPI\Client\Model\DocumentsJobIdRenderPostRequest(); // \OpenAPI\Client\Model\DocumentsJobIdRenderPostRequest

try {
    $result = $apiInstance->documentsJobIdRenderPost($job_id, $documents_job_id_render_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenderApi->documentsJobIdRenderPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **job_id** | **string**|  | |
| **documents_job_id_render_post_request** | [**\OpenAPI\Client\Model\DocumentsJobIdRenderPostRequest**](../Model/DocumentsJobIdRenderPostRequest.md)|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\DocumentsJobIdRenderPost200Response**](../Model/DocumentsJobIdRenderPost200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `documentsRenderPreviewPost()`

```php
documentsRenderPreviewPost($template_id, $templates_template_id_render_previews_post_request): \OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview
```

Generate Document Preview

Generates a preview by creating a single-page render job, processing it immediately, and returning the output URL. Used for template visualization.

### Example

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
$template_id = 'template_id_example'; // string
$templates_template_id_render_previews_post_request = new \OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPostRequest(); // \OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPostRequest

try {
    $result = $apiInstance->documentsRenderPreviewPost($template_id, $templates_template_id_render_previews_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenderApi->documentsRenderPreviewPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |
| **templates_template_id_render_previews_post_request** | [**\OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPostRequest**](../Model/TemplatesTemplateIdRenderPreviewsPostRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview**](../Model/TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `jobsJobIdGet()`

```php
jobsJobIdGet($job_id): \OpenAPI\Client\Model\JobsJobIdGet200Response
```

Get Job Status

Fetches detailed job information from S3 storage including job status, template ID, target format, and output details if available.

### Example

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
$job_id = 'job_id_example'; // string

try {
    $result = $apiInstance->jobsJobIdGet($job_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RenderApi->jobsJobIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **job_id** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\JobsJobIdGet200Response**](../Model/JobsJobIdGet200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
