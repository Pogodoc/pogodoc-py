# Org.OpenAPITools.Api.TemplatesApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**TemplatesInitGet**](TemplatesApi.md#templatesinitget) | **GET** /templates/init | Initialize Template Creation |
| [**TemplatesTemplateIdClonePost**](TemplatesApi.md#templatestemplateidclonepost) | **POST** /templates/{templateId}/clone | Clone Template |
| [**TemplatesTemplateIdDelete**](TemplatesApi.md#templatestemplateiddelete) | **DELETE** /templates/{templateId} | Delete Template |
| [**TemplatesTemplateIdIndexHtmlGet**](TemplatesApi.md#templatestemplateidindexhtmlget) | **GET** /templates/{templateId}/index-html | Get Template Index HTML |
| [**TemplatesTemplateIdIndexHtmlPost**](TemplatesApi.md#templatestemplateidindexhtmlpost) | **POST** /templates/{templateId}/index-html | Upload Template Index HTML |
| [**TemplatesTemplateIdPost**](TemplatesApi.md#templatestemplateidpost) | **POST** /templates/{templateId} | Save New Template |
| [**TemplatesTemplateIdPresignedUrlGet**](TemplatesApi.md#templatestemplateidpresignedurlget) | **GET** /templates/{templateId}/presigned-url | Generate Presigned URL |
| [**TemplatesTemplateIdPut**](TemplatesApi.md#templatestemplateidput) | **PUT** /templates/{templateId} | Update Template |
| [**TemplatesTemplateIdRenderPreviewsPost**](TemplatesApi.md#templatestemplateidrenderpreviewspost) | **POST** /templates/{templateId}/render-previews | Generate Template Previews |
| [**TemplatesTemplateIdUnzipPost**](TemplatesApi.md#templatestemplateidunzippost) | **POST** /templates/{templateId}/unzip | Extract Template Files |

<a id="templatesinitget"></a>
# **TemplatesInitGet**
> TemplatesInitGet200Response TemplatesInitGet ()

Initialize Template Creation

Initializes template creation by generating a unique ID and providing a presigned URL for template ZIP upload. Sets unfinished tag for tracking incomplete templates.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesInitGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);

            try
            {
                // Initialize Template Creation
                TemplatesInitGet200Response result = apiInstance.TemplatesInitGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesInitGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesInitGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Initialize Template Creation
    ApiResponse<TemplatesInitGet200Response> response = apiInstance.TemplatesInitGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesInitGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidclonepost"></a>
# **TemplatesTemplateIdClonePost**
> TemplatesTemplateIdClonePost200Response TemplatesTemplateIdClonePost (string templateId)

Clone Template

Creates a new template by duplicating an existing template's content and metadata. Includes copying preview files and template index.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdClonePostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 

            try
            {
                // Clone Template
                TemplatesTemplateIdClonePost200Response result = apiInstance.TemplatesTemplateIdClonePost(templateId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdClonePost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdClonePostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Clone Template
    ApiResponse<TemplatesTemplateIdClonePost200Response> response = apiInstance.TemplatesTemplateIdClonePostWithHttpInfo(templateId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdClonePostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateiddelete"></a>
# **TemplatesTemplateIdDelete**
> Object TemplatesTemplateIdDelete (string templateId)

Delete Template

Deletes a template from Strapi and associated S3 storage. Removes all associated files and metadata.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdDeleteExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 

            try
            {
                // Delete Template
                Object result = apiInstance.TemplatesTemplateIdDelete(templateId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdDelete: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdDeleteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Delete Template
    ApiResponse<Object> response = apiInstance.TemplatesTemplateIdDeleteWithHttpInfo(templateId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdDeleteWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidindexhtmlget"></a>
# **TemplatesTemplateIdIndexHtmlGet**
> TemplatesTemplateIdIndexHtmlGet200Response TemplatesTemplateIdIndexHtmlGet (string templateId)

Get Template Index HTML

Retrieves the template index.html file from S3 storage. Used for rendering the template in the browser.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdIndexHtmlGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 

            try
            {
                // Get Template Index HTML
                TemplatesTemplateIdIndexHtmlGet200Response result = apiInstance.TemplatesTemplateIdIndexHtmlGet(templateId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdIndexHtmlGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdIndexHtmlGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Template Index HTML
    ApiResponse<TemplatesTemplateIdIndexHtmlGet200Response> response = apiInstance.TemplatesTemplateIdIndexHtmlGetWithHttpInfo(templateId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdIndexHtmlGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidindexhtmlpost"></a>
# **TemplatesTemplateIdIndexHtmlPost**
> Object TemplatesTemplateIdIndexHtmlPost (string templateId, TemplatesTemplateIdIndexHtmlGet200Response templatesTemplateIdIndexHtmlGet200Response)

Upload Template Index HTML

Uploads the template index.html file to S3 storage. Used for rendering the template in the browser.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdIndexHtmlPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 
            var templatesTemplateIdIndexHtmlGet200Response = new TemplatesTemplateIdIndexHtmlGet200Response(); // TemplatesTemplateIdIndexHtmlGet200Response | 

            try
            {
                // Upload Template Index HTML
                Object result = apiInstance.TemplatesTemplateIdIndexHtmlPost(templateId, templatesTemplateIdIndexHtmlGet200Response);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdIndexHtmlPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdIndexHtmlPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Upload Template Index HTML
    ApiResponse<Object> response = apiInstance.TemplatesTemplateIdIndexHtmlPostWithHttpInfo(templateId, templatesTemplateIdIndexHtmlGet200Response);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdIndexHtmlPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |
| **templatesTemplateIdIndexHtmlGet200Response** | [**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidpost"></a>
# **TemplatesTemplateIdPost**
> Object TemplatesTemplateIdPost (string templateId, TemplatesTemplateIdPostRequest templatesTemplateIdPostRequest)

Save New Template

Finalizes template creation by saving template info to Strapi, copying preview files to permanent storage, and creating template index. Removes unfinished tag upon completion.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 
            var templatesTemplateIdPostRequest = new TemplatesTemplateIdPostRequest(); // TemplatesTemplateIdPostRequest | 

            try
            {
                // Save New Template
                Object result = apiInstance.TemplatesTemplateIdPost(templateId, templatesTemplateIdPostRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Save New Template
    ApiResponse<Object> response = apiInstance.TemplatesTemplateIdPostWithHttpInfo(templateId, templatesTemplateIdPostRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |
| **templatesTemplateIdPostRequest** | [**TemplatesTemplateIdPostRequest**](TemplatesTemplateIdPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidpresignedurlget"></a>
# **TemplatesTemplateIdPresignedUrlGet**
> TemplatesTemplateIdPresignedUrlGet200Response TemplatesTemplateIdPresignedUrlGet (string templateId)

Generate Presigned URL

Generates a presigned URL for template access. Used for downloading template files from S3 storage.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdPresignedUrlGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 

            try
            {
                // Generate Presigned URL
                TemplatesTemplateIdPresignedUrlGet200Response result = apiInstance.TemplatesTemplateIdPresignedUrlGet(templateId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdPresignedUrlGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdPresignedUrlGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Generate Presigned URL
    ApiResponse<TemplatesTemplateIdPresignedUrlGet200Response> response = apiInstance.TemplatesTemplateIdPresignedUrlGetWithHttpInfo(templateId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdPresignedUrlGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidput"></a>
# **TemplatesTemplateIdPut**
> TemplatesTemplateIdPut200Response TemplatesTemplateIdPut (string templateId, TemplatesTemplateIdPutRequest templatesTemplateIdPutRequest = null)

Update Template

Updates template content, handles S3 storage cleanup for old content, updates template metadata in Strapi, and manages preview files. Removes unfinished tags after successful update.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdPutExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 
            var templatesTemplateIdPutRequest = new TemplatesTemplateIdPutRequest(); // TemplatesTemplateIdPutRequest |  (optional) 

            try
            {
                // Update Template
                TemplatesTemplateIdPut200Response result = apiInstance.TemplatesTemplateIdPut(templateId, templatesTemplateIdPutRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdPut: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdPutWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update Template
    ApiResponse<TemplatesTemplateIdPut200Response> response = apiInstance.TemplatesTemplateIdPutWithHttpInfo(templateId, templatesTemplateIdPutRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdPutWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |
| **templatesTemplateIdPutRequest** | [**TemplatesTemplateIdPutRequest**](TemplatesTemplateIdPutRequest.md) |  | [optional]  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidrenderpreviewspost"></a>
# **TemplatesTemplateIdRenderPreviewsPost**
> TemplatesTemplateIdRenderPreviewsPost200Response TemplatesTemplateIdRenderPreviewsPost (string templateId, TemplatesTemplateIdRenderPreviewsPostRequest templatesTemplateIdRenderPreviewsPostRequest)

Generate Template Previews

Creates both PNG and PDF preview files for template visualization. Generates previews in parallel and returns URLs for both formats.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdRenderPreviewsPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 
            var templatesTemplateIdRenderPreviewsPostRequest = new TemplatesTemplateIdRenderPreviewsPostRequest(); // TemplatesTemplateIdRenderPreviewsPostRequest | 

            try
            {
                // Generate Template Previews
                TemplatesTemplateIdRenderPreviewsPost200Response result = apiInstance.TemplatesTemplateIdRenderPreviewsPost(templateId, templatesTemplateIdRenderPreviewsPostRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdRenderPreviewsPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdRenderPreviewsPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Generate Template Previews
    ApiResponse<TemplatesTemplateIdRenderPreviewsPost200Response> response = apiInstance.TemplatesTemplateIdRenderPreviewsPostWithHttpInfo(templateId, templatesTemplateIdRenderPreviewsPostRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdRenderPreviewsPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |
| **templatesTemplateIdRenderPreviewsPostRequest** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md) |  |  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="templatestemplateidunzippost"></a>
# **TemplatesTemplateIdUnzipPost**
> Object TemplatesTemplateIdUnzipPost (string templateId, TemplatesTemplateIdUnzipPostRequest templatesTemplateIdUnzipPostRequest)

Extract Template Files

Extracts contents from an uploaded template ZIP file and stores individual files in the appropriate S3 storage structure.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class TemplatesTemplateIdUnzipPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TemplatesApi(config);
            var templateId = "templateId_example";  // string | 
            var templatesTemplateIdUnzipPostRequest = new TemplatesTemplateIdUnzipPostRequest(); // TemplatesTemplateIdUnzipPostRequest | 

            try
            {
                // Extract Template Files
                Object result = apiInstance.TemplatesTemplateIdUnzipPost(templateId, templatesTemplateIdUnzipPostRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdUnzipPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the TemplatesTemplateIdUnzipPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Extract Template Files
    ApiResponse<Object> response = apiInstance.TemplatesTemplateIdUnzipPostWithHttpInfo(templateId, templatesTemplateIdUnzipPostRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TemplatesApi.TemplatesTemplateIdUnzipPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **templateId** | **string** |  |  |
| **templatesTemplateIdUnzipPostRequest** | [**TemplatesTemplateIdUnzipPostRequest**](TemplatesTemplateIdUnzipPostRequest.md) |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

