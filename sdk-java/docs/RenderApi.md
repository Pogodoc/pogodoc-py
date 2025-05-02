# RenderApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**documentsImmediateRenderPost**](RenderApi.md#documentsImmediateRenderPost) | **POST** /documents/immediate-render | Immediate Render |
| [**documentsInitPost**](RenderApi.md#documentsInitPost) | **POST** /documents/init | Initialize Render Job |
| [**documentsJobIdRenderPost**](RenderApi.md#documentsJobIdRenderPost) | **POST** /documents/{jobId}/render | Start Render Job |
| [**documentsRenderPreviewPost**](RenderApi.md#documentsRenderPreviewPost) | **POST** /documents/render-preview | Generate Document Preview |
| [**jobsJobIdGet**](RenderApi.md#jobsJobIdGet) | **GET** /jobs/{jobId} | Get Job Status |


<a id="documentsImmediateRenderPost"></a>
# **documentsImmediateRenderPost**
> DocumentsImmediateRenderPost200Response documentsImmediateRenderPost(documentsImmediateRenderPostRequest)

Immediate Render

Combines initialization and rendering in one step. Creates a job, uploads template/data directly, starts rendering, and adds the document to Strapi. Requires subscription check.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.RenderApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    RenderApi apiInstance = new RenderApi(defaultClient);
    DocumentsImmediateRenderPostRequest documentsImmediateRenderPostRequest = new DocumentsImmediateRenderPostRequest(); // DocumentsImmediateRenderPostRequest | 
    try {
      DocumentsImmediateRenderPost200Response result = apiInstance.documentsImmediateRenderPost(documentsImmediateRenderPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RenderApi#documentsImmediateRenderPost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **documentsImmediateRenderPostRequest** | [**DocumentsImmediateRenderPostRequest**](DocumentsImmediateRenderPostRequest.md)|  | [optional] |

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

<a id="documentsInitPost"></a>
# **documentsInitPost**
> DocumentsInitPost200Response documentsInitPost(documentsInitPostRequest)

Initialize Render Job

Creates a new render job with a unique ID, sets up S3 storage for template and data files, and generates presigned upload URLs if needed. Requires subscription check.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.RenderApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    RenderApi apiInstance = new RenderApi(defaultClient);
    DocumentsInitPostRequest documentsInitPostRequest = new DocumentsInitPostRequest(); // DocumentsInitPostRequest | 
    try {
      DocumentsInitPost200Response result = apiInstance.documentsInitPost(documentsInitPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RenderApi#documentsInitPost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **documentsInitPostRequest** | [**DocumentsInitPostRequest**](DocumentsInitPostRequest.md)|  | [optional] |

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

<a id="documentsJobIdRenderPost"></a>
# **documentsJobIdRenderPost**
> DocumentsJobIdRenderPost200Response documentsJobIdRenderPost(jobId, documentsJobIdRenderPostRequest)

Start Render Job

Takes a previously initialized job, updates its status to in-progress, and triggers the rendering process using Puppeteer. Can optionally wait for render completion.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.RenderApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    RenderApi apiInstance = new RenderApi(defaultClient);
    String jobId = "jobId_example"; // String | 
    DocumentsJobIdRenderPostRequest documentsJobIdRenderPostRequest = new DocumentsJobIdRenderPostRequest(); // DocumentsJobIdRenderPostRequest | 
    try {
      DocumentsJobIdRenderPost200Response result = apiInstance.documentsJobIdRenderPost(jobId, documentsJobIdRenderPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RenderApi#documentsJobIdRenderPost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **jobId** | **String**|  | |
| **documentsJobIdRenderPostRequest** | [**DocumentsJobIdRenderPostRequest**](DocumentsJobIdRenderPostRequest.md)|  | [optional] |

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

<a id="documentsRenderPreviewPost"></a>
# **documentsRenderPreviewPost**
> TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview documentsRenderPreviewPost(templateId, templatesTemplateIdRenderPreviewsPostRequest)

Generate Document Preview

Generates a preview by creating a single-page render job, processing it immediately, and returning the output URL. Used for template visualization.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.RenderApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    RenderApi apiInstance = new RenderApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    TemplatesTemplateIdRenderPreviewsPostRequest templatesTemplateIdRenderPreviewsPostRequest = new TemplatesTemplateIdRenderPreviewsPostRequest(); // TemplatesTemplateIdRenderPreviewsPostRequest | 
    try {
      TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview result = apiInstance.documentsRenderPreviewPost(templateId, templatesTemplateIdRenderPreviewsPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RenderApi#documentsRenderPreviewPost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **templateId** | **String**|  | |
| **templatesTemplateIdRenderPreviewsPostRequest** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md)|  | |

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

<a id="jobsJobIdGet"></a>
# **jobsJobIdGet**
> JobsJobIdGet200Response jobsJobIdGet(jobId)

Get Job Status

Fetches detailed job information from S3 storage including job status, template ID, target format, and output details if available.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.RenderApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    RenderApi apiInstance = new RenderApi(defaultClient);
    String jobId = "jobId_example"; // String | 
    try {
      JobsJobIdGet200Response result = apiInstance.jobsJobIdGet(jobId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RenderApi#jobsJobIdGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **jobId** | **String**|  | |

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

