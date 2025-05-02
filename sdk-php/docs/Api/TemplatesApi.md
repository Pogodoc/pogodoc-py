# OpenAPI\Client\TemplatesApi

All URIs are relative to https://api.pogodoc.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**templatesInitGet()**](TemplatesApi.md#templatesInitGet) | **GET** /templates/init | Initialize Template Creation |
| [**templatesTemplateIdClonePost()**](TemplatesApi.md#templatesTemplateIdClonePost) | **POST** /templates/{templateId}/clone | Clone Template |
| [**templatesTemplateIdDelete()**](TemplatesApi.md#templatesTemplateIdDelete) | **DELETE** /templates/{templateId} | Delete Template |
| [**templatesTemplateIdIndexHtmlGet()**](TemplatesApi.md#templatesTemplateIdIndexHtmlGet) | **GET** /templates/{templateId}/index-html | Get Template Index HTML |
| [**templatesTemplateIdIndexHtmlPost()**](TemplatesApi.md#templatesTemplateIdIndexHtmlPost) | **POST** /templates/{templateId}/index-html | Upload Template Index HTML |
| [**templatesTemplateIdPost()**](TemplatesApi.md#templatesTemplateIdPost) | **POST** /templates/{templateId} | Save New Template |
| [**templatesTemplateIdPresignedUrlGet()**](TemplatesApi.md#templatesTemplateIdPresignedUrlGet) | **GET** /templates/{templateId}/presigned-url | Generate Presigned URL |
| [**templatesTemplateIdPut()**](TemplatesApi.md#templatesTemplateIdPut) | **PUT** /templates/{templateId} | Update Template |
| [**templatesTemplateIdRenderPreviewsPost()**](TemplatesApi.md#templatesTemplateIdRenderPreviewsPost) | **POST** /templates/{templateId}/render-previews | Generate Template Previews |
| [**templatesTemplateIdUnzipPost()**](TemplatesApi.md#templatesTemplateIdUnzipPost) | **POST** /templates/{templateId}/unzip | Extract Template Files |


## `templatesInitGet()`

```php
templatesInitGet(): \OpenAPI\Client\Model\TemplatesInitGet200Response
```

Initialize Template Creation

Initializes template creation by generating a unique ID and providing a presigned URL for template ZIP upload. Sets unfinished tag for tracking incomplete templates.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->templatesInitGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesInitGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\TemplatesInitGet200Response**](../Model/TemplatesInitGet200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdClonePost()`

```php
templatesTemplateIdClonePost($template_id): \OpenAPI\Client\Model\TemplatesTemplateIdClonePost200Response
```

Clone Template

Creates a new template by duplicating an existing template's content and metadata. Includes copying preview files and template index.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string

try {
    $result = $apiInstance->templatesTemplateIdClonePost($template_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdClonePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\TemplatesTemplateIdClonePost200Response**](../Model/TemplatesTemplateIdClonePost200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdDelete()`

```php
templatesTemplateIdDelete($template_id): mixed
```

Delete Template

Deletes a template from Strapi and associated S3 storage. Removes all associated files and metadata.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string

try {
    $result = $apiInstance->templatesTemplateIdDelete($template_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdIndexHtmlGet()`

```php
templatesTemplateIdIndexHtmlGet($template_id): \OpenAPI\Client\Model\TemplatesTemplateIdIndexHtmlGet200Response
```

Get Template Index HTML

Retrieves the template index.html file from S3 storage. Used for rendering the template in the browser.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string

try {
    $result = $apiInstance->templatesTemplateIdIndexHtmlGet($template_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdIndexHtmlGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\TemplatesTemplateIdIndexHtmlGet200Response**](../Model/TemplatesTemplateIdIndexHtmlGet200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdIndexHtmlPost()`

```php
templatesTemplateIdIndexHtmlPost($template_id, $templates_template_id_index_html_get200_response): mixed
```

Upload Template Index HTML

Uploads the template index.html file to S3 storage. Used for rendering the template in the browser.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string
$templates_template_id_index_html_get200_response = new \OpenAPI\Client\Model\TemplatesTemplateIdIndexHtmlGet200Response(); // \OpenAPI\Client\Model\TemplatesTemplateIdIndexHtmlGet200Response

try {
    $result = $apiInstance->templatesTemplateIdIndexHtmlPost($template_id, $templates_template_id_index_html_get200_response);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdIndexHtmlPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |
| **templates_template_id_index_html_get200_response** | [**\OpenAPI\Client\Model\TemplatesTemplateIdIndexHtmlGet200Response**](../Model/TemplatesTemplateIdIndexHtmlGet200Response.md)|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdPost()`

```php
templatesTemplateIdPost($template_id, $templates_template_id_post_request): mixed
```

Save New Template

Finalizes template creation by saving template info to Strapi, copying preview files to permanent storage, and creating template index. Removes unfinished tag upon completion.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string
$templates_template_id_post_request = new \OpenAPI\Client\Model\TemplatesTemplateIdPostRequest(); // \OpenAPI\Client\Model\TemplatesTemplateIdPostRequest

try {
    $result = $apiInstance->templatesTemplateIdPost($template_id, $templates_template_id_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |
| **templates_template_id_post_request** | [**\OpenAPI\Client\Model\TemplatesTemplateIdPostRequest**](../Model/TemplatesTemplateIdPostRequest.md)|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdPresignedUrlGet()`

```php
templatesTemplateIdPresignedUrlGet($template_id): \OpenAPI\Client\Model\TemplatesTemplateIdPresignedUrlGet200Response
```

Generate Presigned URL

Generates a presigned URL for template access. Used for downloading template files from S3 storage.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string

try {
    $result = $apiInstance->templatesTemplateIdPresignedUrlGet($template_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdPresignedUrlGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\TemplatesTemplateIdPresignedUrlGet200Response**](../Model/TemplatesTemplateIdPresignedUrlGet200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdPut()`

```php
templatesTemplateIdPut($template_id, $templates_template_id_put_request): \OpenAPI\Client\Model\TemplatesTemplateIdPut200Response
```

Update Template

Updates template content, handles S3 storage cleanup for old content, updates template metadata in Strapi, and manages preview files. Removes unfinished tags after successful update.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string
$templates_template_id_put_request = new \OpenAPI\Client\Model\TemplatesTemplateIdPutRequest(); // \OpenAPI\Client\Model\TemplatesTemplateIdPutRequest

try {
    $result = $apiInstance->templatesTemplateIdPut($template_id, $templates_template_id_put_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |
| **templates_template_id_put_request** | [**\OpenAPI\Client\Model\TemplatesTemplateIdPutRequest**](../Model/TemplatesTemplateIdPutRequest.md)|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\TemplatesTemplateIdPut200Response**](../Model/TemplatesTemplateIdPut200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdRenderPreviewsPost()`

```php
templatesTemplateIdRenderPreviewsPost($template_id, $templates_template_id_render_previews_post_request): \OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPost200Response
```

Generate Template Previews

Creates both PNG and PDF preview files for template visualization. Generates previews in parallel and returns URLs for both formats.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string
$templates_template_id_render_previews_post_request = new \OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPostRequest(); // \OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPostRequest

try {
    $result = $apiInstance->templatesTemplateIdRenderPreviewsPost($template_id, $templates_template_id_render_previews_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdRenderPreviewsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |
| **templates_template_id_render_previews_post_request** | [**\OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPostRequest**](../Model/TemplatesTemplateIdRenderPreviewsPostRequest.md)|  | |

### Return type

[**\OpenAPI\Client\Model\TemplatesTemplateIdRenderPreviewsPost200Response**](../Model/TemplatesTemplateIdRenderPreviewsPost200Response.md)

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `templatesTemplateIdUnzipPost()`

```php
templatesTemplateIdUnzipPost($template_id, $templates_template_id_unzip_post_request): mixed
```

Extract Template Files

Extracts contents from an uploaded template ZIP file and stores individual files in the appropriate S3 storage structure.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TemplatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$template_id = 'template_id_example'; // string
$templates_template_id_unzip_post_request = new \OpenAPI\Client\Model\TemplatesTemplateIdUnzipPostRequest(); // \OpenAPI\Client\Model\TemplatesTemplateIdUnzipPostRequest

try {
    $result = $apiInstance->templatesTemplateIdUnzipPost($template_id, $templates_template_id_unzip_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->templatesTemplateIdUnzipPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **template_id** | **string**|  | |
| **templates_template_id_unzip_post_request** | [**\OpenAPI\Client\Model\TemplatesTemplateIdUnzipPostRequest**](../Model/TemplatesTemplateIdUnzipPostRequest.md)|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
