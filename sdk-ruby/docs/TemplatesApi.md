# OpenapiClient::TemplatesApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**templates_init_get**](TemplatesApi.md#templates_init_get) | **GET** /templates/init | Initialize Template Creation |
| [**templates_template_id_clone_post**](TemplatesApi.md#templates_template_id_clone_post) | **POST** /templates/{templateId}/clone | Clone Template |
| [**templates_template_id_delete**](TemplatesApi.md#templates_template_id_delete) | **DELETE** /templates/{templateId} | Delete Template |
| [**templates_template_id_index_html_get**](TemplatesApi.md#templates_template_id_index_html_get) | **GET** /templates/{templateId}/index-html | Get Template Index HTML |
| [**templates_template_id_index_html_post**](TemplatesApi.md#templates_template_id_index_html_post) | **POST** /templates/{templateId}/index-html | Upload Template Index HTML |
| [**templates_template_id_post**](TemplatesApi.md#templates_template_id_post) | **POST** /templates/{templateId} | Save New Template |
| [**templates_template_id_presigned_url_get**](TemplatesApi.md#templates_template_id_presigned_url_get) | **GET** /templates/{templateId}/presigned-url | Generate Presigned URL |
| [**templates_template_id_put**](TemplatesApi.md#templates_template_id_put) | **PUT** /templates/{templateId} | Update Template |
| [**templates_template_id_render_previews_post**](TemplatesApi.md#templates_template_id_render_previews_post) | **POST** /templates/{templateId}/render-previews | Generate Template Previews |
| [**templates_template_id_unzip_post**](TemplatesApi.md#templates_template_id_unzip_post) | **POST** /templates/{templateId}/unzip | Extract Template Files |


## templates_init_get

> <TemplatesInitGet200Response> templates_init_get

Initialize Template Creation

Initializes template creation by generating a unique ID and providing a presigned URL for template ZIP upload. Sets unfinished tag for tracking incomplete templates.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new

begin
  # Initialize Template Creation
  result = api_instance.templates_init_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_init_get: #{e}"
end
```

#### Using the templates_init_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesInitGet200Response>, Integer, Hash)> templates_init_get_with_http_info

```ruby
begin
  # Initialize Template Creation
  data, status_code, headers = api_instance.templates_init_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesInitGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_init_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TemplatesInitGet200Response**](TemplatesInitGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_template_id_clone_post

> <TemplatesTemplateIdClonePost200Response> templates_template_id_clone_post(template_id)

Clone Template

Creates a new template by duplicating an existing template's content and metadata. Includes copying preview files and template index.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 

begin
  # Clone Template
  result = api_instance.templates_template_id_clone_post(template_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_clone_post: #{e}"
end
```

#### Using the templates_template_id_clone_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIdClonePost200Response>, Integer, Hash)> templates_template_id_clone_post_with_http_info(template_id)

```ruby
begin
  # Clone Template
  data, status_code, headers = api_instance.templates_template_id_clone_post_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIdClonePost200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_clone_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |

### Return type

[**TemplatesTemplateIdClonePost200Response**](TemplatesTemplateIdClonePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_template_id_delete

> Object templates_template_id_delete(template_id)

Delete Template

Deletes a template from Strapi and associated S3 storage. Removes all associated files and metadata.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 

begin
  # Delete Template
  result = api_instance.templates_template_id_delete(template_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_delete: #{e}"
end
```

#### Using the templates_template_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> templates_template_id_delete_with_http_info(template_id)

```ruby
begin
  # Delete Template
  data, status_code, headers = api_instance.templates_template_id_delete_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_template_id_index_html_get

> <TemplatesTemplateIdIndexHtmlGet200Response> templates_template_id_index_html_get(template_id)

Get Template Index HTML

Retrieves the template index.html file from S3 storage. Used for rendering the template in the browser.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 

begin
  # Get Template Index HTML
  result = api_instance.templates_template_id_index_html_get(template_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_index_html_get: #{e}"
end
```

#### Using the templates_template_id_index_html_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIdIndexHtmlGet200Response>, Integer, Hash)> templates_template_id_index_html_get_with_http_info(template_id)

```ruby
begin
  # Get Template Index HTML
  data, status_code, headers = api_instance.templates_template_id_index_html_get_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIdIndexHtmlGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_index_html_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |

### Return type

[**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_template_id_index_html_post

> Object templates_template_id_index_html_post(template_id, templates_template_id_index_html_get200_response)

Upload Template Index HTML

Uploads the template index.html file to S3 storage. Used for rendering the template in the browser.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 
templates_template_id_index_html_get200_response = OpenapiClient::TemplatesTemplateIdIndexHtmlGet200Response.new({template_index: 'template_index_example'}) # TemplatesTemplateIdIndexHtmlGet200Response | 

begin
  # Upload Template Index HTML
  result = api_instance.templates_template_id_index_html_post(template_id, templates_template_id_index_html_get200_response)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_index_html_post: #{e}"
end
```

#### Using the templates_template_id_index_html_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> templates_template_id_index_html_post_with_http_info(template_id, templates_template_id_index_html_get200_response)

```ruby
begin
  # Upload Template Index HTML
  data, status_code, headers = api_instance.templates_template_id_index_html_post_with_http_info(template_id, templates_template_id_index_html_get200_response)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_index_html_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **templates_template_id_index_html_get200_response** | [**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## templates_template_id_post

> Object templates_template_id_post(template_id, templates_template_id_post_request)

Save New Template

Finalizes template creation by saving template info to Strapi, copying preview files to permanent storage, and creating template index. Removes unfinished tag upon completion.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 
templates_template_id_post_request = OpenapiClient::TemplatesTemplateIdPostRequest.new({template_info: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfo.new({title: 'title_example', description: 'description_example', type: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoType.new, sample_data: { key: 3.56}, categories: [OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner.new]}), preview_ids: OpenapiClient::TemplatesTemplateIdPutRequestAllOfPreviewIds.new({png_job_id: 'png_job_id_example', pdf_job_id: 'pdf_job_id_example'})}) # TemplatesTemplateIdPostRequest | 

begin
  # Save New Template
  result = api_instance.templates_template_id_post(template_id, templates_template_id_post_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_post: #{e}"
end
```

#### Using the templates_template_id_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> templates_template_id_post_with_http_info(template_id, templates_template_id_post_request)

```ruby
begin
  # Save New Template
  data, status_code, headers = api_instance.templates_template_id_post_with_http_info(template_id, templates_template_id_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **templates_template_id_post_request** | [**TemplatesTemplateIdPostRequest**](TemplatesTemplateIdPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## templates_template_id_presigned_url_get

> <TemplatesTemplateIdPresignedUrlGet200Response> templates_template_id_presigned_url_get(template_id)

Generate Presigned URL

Generates a presigned URL for template access. Used for downloading template files from S3 storage.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 

begin
  # Generate Presigned URL
  result = api_instance.templates_template_id_presigned_url_get(template_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_presigned_url_get: #{e}"
end
```

#### Using the templates_template_id_presigned_url_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIdPresignedUrlGet200Response>, Integer, Hash)> templates_template_id_presigned_url_get_with_http_info(template_id)

```ruby
begin
  # Generate Presigned URL
  data, status_code, headers = api_instance.templates_template_id_presigned_url_get_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIdPresignedUrlGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_presigned_url_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |

### Return type

[**TemplatesTemplateIdPresignedUrlGet200Response**](TemplatesTemplateIdPresignedUrlGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_template_id_put

> <TemplatesTemplateIdPut200Response> templates_template_id_put(template_id, opts)

Update Template

Updates template content, handles S3 storage cleanup for old content, updates template metadata in Strapi, and manages preview files. Removes unfinished tags after successful update.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 
opts = {
  templates_template_id_put_request: OpenapiClient::TemplatesTemplateIdPutRequest.new({template_info: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfo.new({title: 'title_example', description: 'description_example', type: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoType.new, sample_data: { key: 3.56}, categories: [OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner.new]}), preview_ids: OpenapiClient::TemplatesTemplateIdPutRequestAllOfPreviewIds.new({png_job_id: 'png_job_id_example', pdf_job_id: 'pdf_job_id_example'}), content_id: 'content_id_example'}) # TemplatesTemplateIdPutRequest | 
}

begin
  # Update Template
  result = api_instance.templates_template_id_put(template_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_put: #{e}"
end
```

#### Using the templates_template_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIdPut200Response>, Integer, Hash)> templates_template_id_put_with_http_info(template_id, opts)

```ruby
begin
  # Update Template
  data, status_code, headers = api_instance.templates_template_id_put_with_http_info(template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIdPut200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **templates_template_id_put_request** | [**TemplatesTemplateIdPutRequest**](TemplatesTemplateIdPutRequest.md) |  | [optional] |

### Return type

[**TemplatesTemplateIdPut200Response**](TemplatesTemplateIdPut200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## templates_template_id_render_previews_post

> <TemplatesTemplateIdRenderPreviewsPost200Response> templates_template_id_render_previews_post(template_id, templates_template_id_render_previews_post_request)

Generate Template Previews

Creates both PNG and PDF preview files for template visualization. Generates previews in parallel and returns URLs for both formats.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 
templates_template_id_render_previews_post_request = OpenapiClient::TemplatesTemplateIdRenderPreviewsPostRequest.new({type: OpenapiClient::TemplatesTemplateIdPutRequestAllOfTemplateInfoType.new, data: { key: 3.56}}) # TemplatesTemplateIdRenderPreviewsPostRequest | 

begin
  # Generate Template Previews
  result = api_instance.templates_template_id_render_previews_post(template_id, templates_template_id_render_previews_post_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_render_previews_post: #{e}"
end
```

#### Using the templates_template_id_render_previews_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIdRenderPreviewsPost200Response>, Integer, Hash)> templates_template_id_render_previews_post_with_http_info(template_id, templates_template_id_render_previews_post_request)

```ruby
begin
  # Generate Template Previews
  data, status_code, headers = api_instance.templates_template_id_render_previews_post_with_http_info(template_id, templates_template_id_render_previews_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIdRenderPreviewsPost200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_render_previews_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **templates_template_id_render_previews_post_request** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md) |  |  |

### Return type

[**TemplatesTemplateIdRenderPreviewsPost200Response**](TemplatesTemplateIdRenderPreviewsPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## templates_template_id_unzip_post

> Object templates_template_id_unzip_post(template_id, templates_template_id_unzip_post_request)

Extract Template Files

Extracts contents from an uploaded template ZIP file and stores individual files in the appropriate S3 storage structure.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TemplatesApi.new
template_id = 'template_id_example' # String | 
templates_template_id_unzip_post_request = OpenapiClient::TemplatesTemplateIdUnzipPostRequest.new({template_id: 'template_id_example'}) # TemplatesTemplateIdUnzipPostRequest | 

begin
  # Extract Template Files
  result = api_instance.templates_template_id_unzip_post(template_id, templates_template_id_unzip_post_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_unzip_post: #{e}"
end
```

#### Using the templates_template_id_unzip_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> templates_template_id_unzip_post_with_http_info(template_id, templates_template_id_unzip_post_request)

```ruby
begin
  # Extract Template Files
  data, status_code, headers = api_instance.templates_template_id_unzip_post_with_http_info(template_id, templates_template_id_unzip_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_unzip_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** |  |  |
| **templates_template_id_unzip_post_request** | [**TemplatesTemplateIdUnzipPostRequest**](TemplatesTemplateIdUnzipPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

