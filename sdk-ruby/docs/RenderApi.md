# OpenapiClient::RenderApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**documents_immediate_render_post**](RenderApi.md#documents_immediate_render_post) | **POST** /documents/immediate-render | Immediate Render |
| [**documents_init_post**](RenderApi.md#documents_init_post) | **POST** /documents/init | Initialize Render Job |
| [**documents_job_id_render_post**](RenderApi.md#documents_job_id_render_post) | **POST** /documents/{jobId}/render | Start Render Job |
| [**documents_render_preview_post**](RenderApi.md#documents_render_preview_post) | **POST** /documents/render-preview | Generate Document Preview |
| [**jobs_job_id_get**](RenderApi.md#jobs_job_id_get) | **GET** /jobs/{jobId} | Get Job Status |


## documents_immediate_render_post

> <DocumentsImmediateRenderPost200Response> documents_immediate_render_post(opts)

Immediate Render

Combines initialization and rendering in one step. Creates a job, uploads template/data directly, starts rendering, and adds the document to Strapi. Requires subscription check.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RenderApi.new
opts = {
  documents_immediate_render_post_request: OpenapiClient::DocumentsImmediateRenderPostRequest.new({data: { key: 3.56}, type: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoType.new, target: OpenapiClient::DocumentsInitPostRequestAllOfTarget.new}) # DocumentsImmediateRenderPostRequest | 
}

begin
  # Immediate Render
  result = api_instance.documents_immediate_render_post(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_immediate_render_post: #{e}"
end
```

#### Using the documents_immediate_render_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentsImmediateRenderPost200Response>, Integer, Hash)> documents_immediate_render_post_with_http_info(opts)

```ruby
begin
  # Immediate Render
  data, status_code, headers = api_instance.documents_immediate_render_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentsImmediateRenderPost200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_immediate_render_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **documents_immediate_render_post_request** | [**DocumentsImmediateRenderPostRequest**](DocumentsImmediateRenderPostRequest.md) |  | [optional] |

### Return type

[**DocumentsImmediateRenderPost200Response**](DocumentsImmediateRenderPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## documents_init_post

> <DocumentsInitPost200Response> documents_init_post(opts)

Initialize Render Job

Creates a new render job with a unique ID, sets up S3 storage for template and data files, and generates presigned upload URLs if needed. Requires subscription check.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RenderApi.new
opts = {
  documents_init_post_request: OpenapiClient::DocumentsInitPostRequest.new({type: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoType.new, target: OpenapiClient::DocumentsInitPostRequestAllOfTarget.new}) # DocumentsInitPostRequest | 
}

begin
  # Initialize Render Job
  result = api_instance.documents_init_post(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_init_post: #{e}"
end
```

#### Using the documents_init_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentsInitPost200Response>, Integer, Hash)> documents_init_post_with_http_info(opts)

```ruby
begin
  # Initialize Render Job
  data, status_code, headers = api_instance.documents_init_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentsInitPost200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_init_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **documents_init_post_request** | [**DocumentsInitPostRequest**](DocumentsInitPostRequest.md) |  | [optional] |

### Return type

[**DocumentsInitPost200Response**](DocumentsInitPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## documents_job_id_render_post

> <DocumentsJobIdRenderPost200Response> documents_job_id_render_post(job_id, opts)

Start Render Job

Takes a previously initialized job, updates its status to in-progress, and triggers the rendering process using Puppeteer. Can optionally wait for render completion.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RenderApi.new
job_id = 'job_id_example' # String | 
opts = {
  documents_job_id_render_post_request: OpenapiClient::DocumentsJobIdRenderPostRequest.new # DocumentsJobIdRenderPostRequest | 
}

begin
  # Start Render Job
  result = api_instance.documents_job_id_render_post(job_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_job_id_render_post: #{e}"
end
```

#### Using the documents_job_id_render_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentsJobIdRenderPost200Response>, Integer, Hash)> documents_job_id_render_post_with_http_info(job_id, opts)

```ruby
begin
  # Start Render Job
  data, status_code, headers = api_instance.documents_job_id_render_post_with_http_info(job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentsJobIdRenderPost200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_job_id_render_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |
| **documents_job_id_render_post_request** | [**DocumentsJobIdRenderPostRequest**](DocumentsJobIdRenderPostRequest.md) |  | [optional] |

### Return type

[**DocumentsJobIdRenderPost200Response**](DocumentsJobIdRenderPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## documents_render_preview_post

> <TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview> documents_render_preview_post(template_id, templates_template_id_render_previews_post_request)

Generate Document Preview

Generates a preview by creating a single-page render job, processing it immediately, and returning the output URL. Used for template visualization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RenderApi.new
template_id = 'template_id_example' # String | 
templates_template_id_render_previews_post_request = OpenapiClient::TemplatesTemplateIdRenderPreviewsPostRequest.new({type: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoType.new, data: { key: 3.56}}) # TemplatesTemplateIdRenderPreviewsPostRequest | 

begin
  # Generate Document Preview
  result = api_instance.documents_render_preview_post(template_id, templates_template_id_render_previews_post_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_render_preview_post: #{e}"
end
```

#### Using the documents_render_preview_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview>, Integer, Hash)> documents_render_preview_post_with_http_info(template_id, templates_template_id_render_previews_post_request)

```ruby
begin
  # Generate Document Preview
  data, status_code, headers = api_instance.documents_render_preview_post_with_http_info(template_id, templates_template_id_render_previews_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->documents_render_preview_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **templates_template_id_render_previews_post_request** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md) |  |  |

### Return type

[**TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview**](TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## jobs_job_id_get

> <JobsJobIdGet200Response> jobs_job_id_get(job_id)

Get Job Status

Fetches detailed job information from S3 storage including job status, template ID, target format, and output details if available.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RenderApi.new
job_id = 'job_id_example' # String | 

begin
  # Get Job Status
  result = api_instance.jobs_job_id_get(job_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->jobs_job_id_get: #{e}"
end
```

#### Using the jobs_job_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobsJobIdGet200Response>, Integer, Hash)> jobs_job_id_get_with_http_info(job_id)

```ruby
begin
  # Get Job Status
  data, status_code, headers = api_instance.jobs_job_id_get_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobsJobIdGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RenderApi->jobs_job_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**JobsJobIdGet200Response**](JobsJobIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

