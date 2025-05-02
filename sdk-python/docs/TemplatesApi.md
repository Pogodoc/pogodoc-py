# openapi_client.TemplatesApi

All URIs are relative to *https://api.pogodoc.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**templates_init_get**](TemplatesApi.md#templates_init_get) | **GET** /templates/init | Initialize Template Creation
[**templates_template_id_clone_post**](TemplatesApi.md#templates_template_id_clone_post) | **POST** /templates/{templateId}/clone | Clone Template
[**templates_template_id_delete**](TemplatesApi.md#templates_template_id_delete) | **DELETE** /templates/{templateId} | Delete Template
[**templates_template_id_index_html_get**](TemplatesApi.md#templates_template_id_index_html_get) | **GET** /templates/{templateId}/index-html | Get Template Index HTML
[**templates_template_id_index_html_post**](TemplatesApi.md#templates_template_id_index_html_post) | **POST** /templates/{templateId}/index-html | Upload Template Index HTML
[**templates_template_id_post**](TemplatesApi.md#templates_template_id_post) | **POST** /templates/{templateId} | Save New Template
[**templates_template_id_presigned_url_get**](TemplatesApi.md#templates_template_id_presigned_url_get) | **GET** /templates/{templateId}/presigned-url | Generate Presigned URL
[**templates_template_id_put**](TemplatesApi.md#templates_template_id_put) | **PUT** /templates/{templateId} | Update Template
[**templates_template_id_render_previews_post**](TemplatesApi.md#templates_template_id_render_previews_post) | **POST** /templates/{templateId}/render-previews | Generate Template Previews
[**templates_template_id_unzip_post**](TemplatesApi.md#templates_template_id_unzip_post) | **POST** /templates/{templateId}/unzip | Extract Template Files


# **templates_init_get**
> TemplatesInitGet200Response templates_init_get()

Initialize Template Creation

Initializes template creation by generating a unique ID and providing a presigned URL for template ZIP upload. Sets unfinished tag for tracking incomplete templates.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_init_get200_response import TemplatesInitGet200Response
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
    api_instance = openapi_client.TemplatesApi(api_client)

    try:
        # Initialize Template Creation
        api_response = api_instance.templates_init_get()
        print("The response of TemplatesApi->templates_init_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_init_get: %s\n" % e)
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templates_template_id_clone_post**
> TemplatesTemplateIdClonePost200Response templates_template_id_clone_post(template_id)

Clone Template

Creates a new template by duplicating an existing template's content and metadata. Includes copying preview files and template index.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_clone_post200_response import TemplatesTemplateIdClonePost200Response
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 

    try:
        # Clone Template
        api_response = api_instance.templates_template_id_clone_post(template_id)
        print("The response of TemplatesApi->templates_template_id_clone_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_clone_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 

### Return type

[**TemplatesTemplateIdClonePost200Response**](TemplatesTemplateIdClonePost200Response.md)

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

# **templates_template_id_delete**
> object templates_template_id_delete(template_id)

Delete Template

Deletes a template from Strapi and associated S3 storage. Removes all associated files and metadata.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 

    try:
        # Delete Template
        api_response = api_instance.templates_template_id_delete(template_id)
        print("The response of TemplatesApi->templates_template_id_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 

### Return type

**object**

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

# **templates_template_id_index_html_get**
> TemplatesTemplateIdIndexHtmlGet200Response templates_template_id_index_html_get(template_id)

Get Template Index HTML

Retrieves the template index.html file from S3 storage. Used for rendering the template in the browser.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_index_html_get200_response import TemplatesTemplateIdIndexHtmlGet200Response
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 

    try:
        # Get Template Index HTML
        api_response = api_instance.templates_template_id_index_html_get(template_id)
        print("The response of TemplatesApi->templates_template_id_index_html_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_index_html_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 

### Return type

[**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md)

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

# **templates_template_id_index_html_post**
> object templates_template_id_index_html_post(template_id, templates_template_id_index_html_get200_response)

Upload Template Index HTML

Uploads the template index.html file to S3 storage. Used for rendering the template in the browser.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_index_html_get200_response import TemplatesTemplateIdIndexHtmlGet200Response
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 
    templates_template_id_index_html_get200_response = openapi_client.TemplatesTemplateIdIndexHtmlGet200Response() # TemplatesTemplateIdIndexHtmlGet200Response | 

    try:
        # Upload Template Index HTML
        api_response = api_instance.templates_template_id_index_html_post(template_id, templates_template_id_index_html_get200_response)
        print("The response of TemplatesApi->templates_template_id_index_html_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_index_html_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **templates_template_id_index_html_get200_response** | [**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md)|  | 

### Return type

**object**

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

# **templates_template_id_post**
> object templates_template_id_post(template_id, templates_template_id_post_request)

Save New Template

Finalizes template creation by saving template info to Strapi, copying preview files to permanent storage, and creating template index. Removes unfinished tag upon completion.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_post_request import TemplatesTemplateIdPostRequest
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 
    templates_template_id_post_request = openapi_client.TemplatesTemplateIdPostRequest() # TemplatesTemplateIdPostRequest | 

    try:
        # Save New Template
        api_response = api_instance.templates_template_id_post(template_id, templates_template_id_post_request)
        print("The response of TemplatesApi->templates_template_id_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **templates_template_id_post_request** | [**TemplatesTemplateIdPostRequest**](TemplatesTemplateIdPostRequest.md)|  | 

### Return type

**object**

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

# **templates_template_id_presigned_url_get**
> TemplatesTemplateIdPresignedUrlGet200Response templates_template_id_presigned_url_get(template_id)

Generate Presigned URL

Generates a presigned URL for template access. Used for downloading template files from S3 storage.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_presigned_url_get200_response import TemplatesTemplateIdPresignedUrlGet200Response
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 

    try:
        # Generate Presigned URL
        api_response = api_instance.templates_template_id_presigned_url_get(template_id)
        print("The response of TemplatesApi->templates_template_id_presigned_url_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_presigned_url_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 

### Return type

[**TemplatesTemplateIdPresignedUrlGet200Response**](TemplatesTemplateIdPresignedUrlGet200Response.md)

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

# **templates_template_id_put**
> TemplatesTemplateIdPut200Response templates_template_id_put(template_id, templates_template_id_put_request=templates_template_id_put_request)

Update Template

Updates template content, handles S3 storage cleanup for old content, updates template metadata in Strapi, and manages preview files. Removes unfinished tags after successful update.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_put200_response import TemplatesTemplateIdPut200Response
from openapi_client.models.templates_template_id_put_request import TemplatesTemplateIdPutRequest
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 
    templates_template_id_put_request = openapi_client.TemplatesTemplateIdPutRequest() # TemplatesTemplateIdPutRequest |  (optional)

    try:
        # Update Template
        api_response = api_instance.templates_template_id_put(template_id, templates_template_id_put_request=templates_template_id_put_request)
        print("The response of TemplatesApi->templates_template_id_put:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_put: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **templates_template_id_put_request** | [**TemplatesTemplateIdPutRequest**](TemplatesTemplateIdPutRequest.md)|  | [optional] 

### Return type

[**TemplatesTemplateIdPut200Response**](TemplatesTemplateIdPut200Response.md)

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

# **templates_template_id_render_previews_post**
> TemplatesTemplateIdRenderPreviewsPost200Response templates_template_id_render_previews_post(template_id, templates_template_id_render_previews_post_request)

Generate Template Previews

Creates both PNG and PDF preview files for template visualization. Generates previews in parallel and returns URLs for both formats.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_render_previews_post200_response import TemplatesTemplateIdRenderPreviewsPost200Response
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 
    templates_template_id_render_previews_post_request = openapi_client.TemplatesTemplateIdRenderPreviewsPostRequest() # TemplatesTemplateIdRenderPreviewsPostRequest | 

    try:
        # Generate Template Previews
        api_response = api_instance.templates_template_id_render_previews_post(template_id, templates_template_id_render_previews_post_request)
        print("The response of TemplatesApi->templates_template_id_render_previews_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_render_previews_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **templates_template_id_render_previews_post_request** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md)|  | 

### Return type

[**TemplatesTemplateIdRenderPreviewsPost200Response**](TemplatesTemplateIdRenderPreviewsPost200Response.md)

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

# **templates_template_id_unzip_post**
> object templates_template_id_unzip_post(template_id, templates_template_id_unzip_post_request)

Extract Template Files

Extracts contents from an uploaded template ZIP file and stores individual files in the appropriate S3 storage structure.

### Example

* Bearer (Api Token) Authentication (bearerAuth):

```python
import openapi_client
from openapi_client.models.templates_template_id_unzip_post_request import TemplatesTemplateIdUnzipPostRequest
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
    api_instance = openapi_client.TemplatesApi(api_client)
    template_id = 'template_id_example' # str | 
    templates_template_id_unzip_post_request = openapi_client.TemplatesTemplateIdUnzipPostRequest() # TemplatesTemplateIdUnzipPostRequest | 

    try:
        # Extract Template Files
        api_response = api_instance.templates_template_id_unzip_post(template_id, templates_template_id_unzip_post_request)
        print("The response of TemplatesApi->templates_template_id_unzip_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->templates_template_id_unzip_post: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **str**|  | 
 **templates_template_id_unzip_post_request** | [**TemplatesTemplateIdUnzipPostRequest**](TemplatesTemplateIdUnzipPostRequest.md)|  | 

### Return type

**object**

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

