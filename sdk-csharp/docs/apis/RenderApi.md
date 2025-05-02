# Org.OpenAPITools.Api.RenderApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DocumentsImmediateRenderPost**](RenderApi.md#documentsimmediaterenderpost) | **POST** /documents/immediate-render | Immediate Render |
| [**DocumentsInitPost**](RenderApi.md#documentsinitpost) | **POST** /documents/init | Initialize Render Job |
| [**DocumentsJobIdRenderPost**](RenderApi.md#documentsjobidrenderpost) | **POST** /documents/{jobId}/render | Start Render Job |
| [**DocumentsRenderPreviewPost**](RenderApi.md#documentsrenderpreviewpost) | **POST** /documents/render-preview | Generate Document Preview |
| [**JobsJobIdGet**](RenderApi.md#jobsjobidget) | **GET** /jobs/{jobId} | Get Job Status |

<a id="documentsimmediaterenderpost"></a>
# **DocumentsImmediateRenderPost**
> DocumentsImmediateRenderPost200Response DocumentsImmediateRenderPost (DocumentsImmediateRenderPostRequest documentsImmediateRenderPostRequest = null)

Immediate Render

Combines initialization and rendering in one step. Creates a job, uploads template/data directly, starts rendering, and adds the document to Strapi. Requires subscription check.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class DocumentsImmediateRenderPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new RenderApi(config);
            var documentsImmediateRenderPostRequest = new DocumentsImmediateRenderPostRequest(); // DocumentsImmediateRenderPostRequest |  (optional) 

            try
            {
                // Immediate Render
                DocumentsImmediateRenderPost200Response result = apiInstance.DocumentsImmediateRenderPost(documentsImmediateRenderPostRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RenderApi.DocumentsImmediateRenderPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DocumentsImmediateRenderPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Immediate Render
    ApiResponse<DocumentsImmediateRenderPost200Response> response = apiInstance.DocumentsImmediateRenderPostWithHttpInfo(documentsImmediateRenderPostRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RenderApi.DocumentsImmediateRenderPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **documentsImmediateRenderPostRequest** | [**DocumentsImmediateRenderPostRequest**](DocumentsImmediateRenderPostRequest.md) |  | [optional]  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="documentsinitpost"></a>
# **DocumentsInitPost**
> DocumentsInitPost200Response DocumentsInitPost (DocumentsInitPostRequest documentsInitPostRequest = null)

Initialize Render Job

Creates a new render job with a unique ID, sets up S3 storage for template and data files, and generates presigned upload URLs if needed. Requires subscription check.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class DocumentsInitPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new RenderApi(config);
            var documentsInitPostRequest = new DocumentsInitPostRequest(); // DocumentsInitPostRequest |  (optional) 

            try
            {
                // Initialize Render Job
                DocumentsInitPost200Response result = apiInstance.DocumentsInitPost(documentsInitPostRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RenderApi.DocumentsInitPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DocumentsInitPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Initialize Render Job
    ApiResponse<DocumentsInitPost200Response> response = apiInstance.DocumentsInitPostWithHttpInfo(documentsInitPostRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RenderApi.DocumentsInitPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **documentsInitPostRequest** | [**DocumentsInitPostRequest**](DocumentsInitPostRequest.md) |  | [optional]  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="documentsjobidrenderpost"></a>
# **DocumentsJobIdRenderPost**
> DocumentsJobIdRenderPost200Response DocumentsJobIdRenderPost (string jobId, DocumentsJobIdRenderPostRequest documentsJobIdRenderPostRequest = null)

Start Render Job

Takes a previously initialized job, updates its status to in-progress, and triggers the rendering process using Puppeteer. Can optionally wait for render completion.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class DocumentsJobIdRenderPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new RenderApi(config);
            var jobId = "jobId_example";  // string | 
            var documentsJobIdRenderPostRequest = new DocumentsJobIdRenderPostRequest(); // DocumentsJobIdRenderPostRequest |  (optional) 

            try
            {
                // Start Render Job
                DocumentsJobIdRenderPost200Response result = apiInstance.DocumentsJobIdRenderPost(jobId, documentsJobIdRenderPostRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RenderApi.DocumentsJobIdRenderPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DocumentsJobIdRenderPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Start Render Job
    ApiResponse<DocumentsJobIdRenderPost200Response> response = apiInstance.DocumentsJobIdRenderPostWithHttpInfo(jobId, documentsJobIdRenderPostRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RenderApi.DocumentsJobIdRenderPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **jobId** | **string** |  |  |
| **documentsJobIdRenderPostRequest** | [**DocumentsJobIdRenderPostRequest**](DocumentsJobIdRenderPostRequest.md) |  | [optional]  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="documentsrenderpreviewpost"></a>
# **DocumentsRenderPreviewPost**
> TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview DocumentsRenderPreviewPost (string templateId, TemplatesTemplateIdRenderPreviewsPostRequest templatesTemplateIdRenderPreviewsPostRequest)

Generate Document Preview

Generates a preview by creating a single-page render job, processing it immediately, and returning the output URL. Used for template visualization.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class DocumentsRenderPreviewPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new RenderApi(config);
            var templateId = "templateId_example";  // string | 
            var templatesTemplateIdRenderPreviewsPostRequest = new TemplatesTemplateIdRenderPreviewsPostRequest(); // TemplatesTemplateIdRenderPreviewsPostRequest | 

            try
            {
                // Generate Document Preview
                TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview result = apiInstance.DocumentsRenderPreviewPost(templateId, templatesTemplateIdRenderPreviewsPostRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RenderApi.DocumentsRenderPreviewPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DocumentsRenderPreviewPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Generate Document Preview
    ApiResponse<TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview> response = apiInstance.DocumentsRenderPreviewPostWithHttpInfo(templateId, templatesTemplateIdRenderPreviewsPostRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RenderApi.DocumentsRenderPreviewPostWithHttpInfo: " + e.Message);
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

[**TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview**](TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview.md)

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

<a id="jobsjobidget"></a>
# **JobsJobIdGet**
> JobsJobIdGet200Response JobsJobIdGet (string jobId)

Get Job Status

Fetches detailed job information from S3 storage including job status, template ID, target format, and output details if available.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class JobsJobIdGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new RenderApi(config);
            var jobId = "jobId_example";  // string | 

            try
            {
                // Get Job Status
                JobsJobIdGet200Response result = apiInstance.JobsJobIdGet(jobId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling RenderApi.JobsJobIdGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the JobsJobIdGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get Job Status
    ApiResponse<JobsJobIdGet200Response> response = apiInstance.JobsJobIdGetWithHttpInfo(jobId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling RenderApi.JobsJobIdGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **jobId** | **string** |  |  |

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
| **200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

