# openapi_client.RenderApi

All URIs are relative to *https://api.pogodoc.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documents_immediate_render_post**](RenderApi.md#documents_immediate_render_post) | **POST** /documents/immediate-render | Immediate Render
[**documents_init_post**](RenderApi.md#documents_init_post) | **POST** /documents/init | Initialize Render Job
[**documents_job_id_render_post**](RenderApi.md#documents_job_id_render_post) | **POST** /documents/{jobId}/render | Start Render Job
[**documents_render_preview_post**](RenderApi.md#documents_render_preview_post) | **POST** /documents/render-preview | Generate Document Preview
[**jobs_job_id_get**](RenderApi.md#jobs_job_id_get) | **GET** /jobs/{jobId} | Get Job Status


# **documents_immediate_render_post**
> DocumentsImmediateRenderPost200Response documents_immediate_render_post(documents_immediate_render_post_request=documents_immediate_render_post_request)

Immediate Render

Combines initialization and rendering in one step. Creates a job, uploads template/data directly, starts rendering, and adds the document to Strapi. Requires subscription check.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.documents_immediate_render_post200_response import DocumentsImmediateRenderPost200Response
from openapi_client.models.documents_immediate_render_post_request import DocumentsImmediateRenderPostRequest
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.pogodoc.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.pogodoc.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (Api Token): bearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.RenderApi(api_client)
    documents_immediate_render_post_request = openapi_client.DocumentsImmediateRenderPostRequest() # DocumentsImmediateRenderPostRequest |  (optional)

    try:
        # Immediate Render
        api_response = api_instance.documents_immediate_render_post(documents_immediate_render_post_request=documents_immediate_render_post_request)
        print("The response of RenderApi->documents_immediate_render_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RenderApi->documents_immediate_render_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documents_immediate_render_post_request** | [**DocumentsImmediateRenderPostRequest**](DocumentsImmediateRenderPostRequest.md)|  | [optional] 

### Return type

[**DocumentsImmediateRenderPost200Response**](DocumentsImmediateRenderPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documents_init_post**
> DocumentsInitPost200Response documents_init_post(documents_init_post_request=documents_init_post_request)

Initialize Render Job

Creates a new render job with a unique ID, sets up S3 storage for template and data files, and generates presigned upload URLs if needed. Requires subscription check.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.documents_init_post200_response import DocumentsInitPost200Response
from openapi_client.models.documents_init_post_request import DocumentsInitPostRequest
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.pogodoc.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.pogodoc.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (Api Token): bearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.RenderApi(api_client)
    documents_init_post_request = openapi_client.DocumentsInitPostRequest() # DocumentsInitPostRequest |  (optional)

    try:
        # Initialize Render Job
        api_response = api_instance.documents_init_post(documents_init_post_request=documents_init_post_request)
        print("The response of RenderApi->documents_init_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RenderApi->documents_init_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documents_init_post_request** | [**DocumentsInitPostRequest**](DocumentsInitPostRequest.md)|  | [optional] 

### Return type

[**DocumentsInitPost200Response**](DocumentsInitPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documents_job_id_render_post**
> DocumentsJobIdRenderPost200Response documents_job_id_render_post(job_id, documents_job_id_render_post_request=documents_job_id_render_post_request)

Start Render Job

Takes a previously initialized job, updates its status to in-progress, and triggers the rendering process using Puppeteer. Can optionally wait for render completion.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.documents_job_id_render_post200_response import DocumentsJobIdRenderPost200Response
from openapi_client.models.documents_job_id_render_post_request import DocumentsJobIdRenderPostRequest
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.pogodoc.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.pogodoc.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (Api Token): bearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.RenderApi(api_client)
    job_id = 'job_id_example' # str | 
    documents_job_id_render_post_request = openapi_client.DocumentsJobIdRenderPostRequest() # DocumentsJobIdRenderPostRequest |  (optional)

    try:
        # Start Render Job
        api_response = api_instance.documents_job_id_render_post(job_id, documents_job_id_render_post_request=documents_job_id_render_post_request)
        print("The response of RenderApi->documents_job_id_render_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RenderApi->documents_job_id_render_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 
 **documents_job_id_render_post_request** | [**DocumentsJobIdRenderPostRequest**](DocumentsJobIdRenderPostRequest.md)|  | [optional] 

### Return type

[**DocumentsJobIdRenderPost200Response**](DocumentsJobIdRenderPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documents_render_preview_post**
> TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview documents_render_preview_post(template_id, templates_template_id_render_previews_post_request)

Generate Document Preview

Generates a preview by creating a single-page render job, processing it immediately, and returning the output URL. Used for template visualization.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_render_previews_post200_response_png_preview import TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview
from openapi_client.models.templates_template_id_render_previews_post_request import TemplatesTemplateIdRenderPreviewsPostRequest
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.pogodoc.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.pogodoc.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (Api Token): bearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.RenderApi(api_client)
    template_id = 'template_id_example' # str | 
    templates_template_id_render_previews_post_request = openapi_client.TemplatesTemplateIdRenderPreviewsPostRequest() # TemplatesTemplateIdRenderPreviewsPostRequest | 

    try:
        # Generate Document Preview
        api_response = api_instance.documents_render_preview_post(template_id, templates_template_id_render_previews_post_request)
        print("The response of RenderApi->documents_render_preview_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RenderApi->documents_render_preview_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **templates_template_id_render_previews_post_request** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md)|  | 

### Return type

[**TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview**](TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jobs_job_id_get**
> JobsJobIdGet200Response jobs_job_id_get(job_id)

Get Job Status

Fetches detailed job information from S3 storage including job status, template ID, target format, and output details if available.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.jobs_job_id_get200_response import JobsJobIdGet200Response
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.pogodoc.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.pogodoc.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (Api Token): bearerAuth
configuration = openapi_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.RenderApi(api_client)
    job_id = 'job_id_example' # str | 

    try:
        # Get Job Status
        api_response = api_instance.jobs_job_id_get(job_id)
        print("The response of RenderApi->jobs_job_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RenderApi->jobs_job_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | 

### Return type

[**JobsJobIdGet200Response**](JobsJobIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

