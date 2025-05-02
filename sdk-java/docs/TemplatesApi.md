# TemplatesApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**templatesInitGet**](TemplatesApi.md#templatesInitGet) | **GET** /templates/init | Initialize Template Creation |
| [**templatesTemplateIdClonePost**](TemplatesApi.md#templatesTemplateIdClonePost) | **POST** /templates/{templateId}/clone | Clone Template |
| [**templatesTemplateIdDelete**](TemplatesApi.md#templatesTemplateIdDelete) | **DELETE** /templates/{templateId} | Delete Template |
| [**templatesTemplateIdIndexHtmlGet**](TemplatesApi.md#templatesTemplateIdIndexHtmlGet) | **GET** /templates/{templateId}/index-html | Get Template Index HTML |
| [**templatesTemplateIdIndexHtmlPost**](TemplatesApi.md#templatesTemplateIdIndexHtmlPost) | **POST** /templates/{templateId}/index-html | Upload Template Index HTML |
| [**templatesTemplateIdPost**](TemplatesApi.md#templatesTemplateIdPost) | **POST** /templates/{templateId} | Save New Template |
| [**templatesTemplateIdPresignedUrlGet**](TemplatesApi.md#templatesTemplateIdPresignedUrlGet) | **GET** /templates/{templateId}/presigned-url | Generate Presigned URL |
| [**templatesTemplateIdPut**](TemplatesApi.md#templatesTemplateIdPut) | **PUT** /templates/{templateId} | Update Template |
| [**templatesTemplateIdRenderPreviewsPost**](TemplatesApi.md#templatesTemplateIdRenderPreviewsPost) | **POST** /templates/{templateId}/render-previews | Generate Template Previews |
| [**templatesTemplateIdUnzipPost**](TemplatesApi.md#templatesTemplateIdUnzipPost) | **POST** /templates/{templateId}/unzip | Extract Template Files |


<a id="templatesInitGet"></a>
# **templatesInitGet**
> TemplatesInitGet200Response templatesInitGet()

Initialize Template Creation

Initializes template creation by generating a unique ID and providing a presigned URL for template ZIP upload. Sets unfinished tag for tracking incomplete templates.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    try {
      TemplatesInitGet200Response result = apiInstance.templatesInitGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesInitGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

<a id="templatesTemplateIdClonePost"></a>
# **templatesTemplateIdClonePost**
> TemplatesTemplateIdClonePost200Response templatesTemplateIdClonePost(templateId)

Clone Template

Creates a new template by duplicating an existing template&#39;s content and metadata. Includes copying preview files and template index.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    try {
      TemplatesTemplateIdClonePost200Response result = apiInstance.templatesTemplateIdClonePost(templateId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdClonePost");
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

<a id="templatesTemplateIdDelete"></a>
# **templatesTemplateIdDelete**
> Object templatesTemplateIdDelete(templateId)

Delete Template

Deletes a template from Strapi and associated S3 storage. Removes all associated files and metadata.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    try {
      Object result = apiInstance.templatesTemplateIdDelete(templateId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdDelete");
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

<a id="templatesTemplateIdIndexHtmlGet"></a>
# **templatesTemplateIdIndexHtmlGet**
> TemplatesTemplateIdIndexHtmlGet200Response templatesTemplateIdIndexHtmlGet(templateId)

Get Template Index HTML

Retrieves the template index.html file from S3 storage. Used for rendering the template in the browser.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    try {
      TemplatesTemplateIdIndexHtmlGet200Response result = apiInstance.templatesTemplateIdIndexHtmlGet(templateId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdIndexHtmlGet");
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

<a id="templatesTemplateIdIndexHtmlPost"></a>
# **templatesTemplateIdIndexHtmlPost**
> Object templatesTemplateIdIndexHtmlPost(templateId, templatesTemplateIdIndexHtmlGet200Response)

Upload Template Index HTML

Uploads the template index.html file to S3 storage. Used for rendering the template in the browser.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    TemplatesTemplateIdIndexHtmlGet200Response templatesTemplateIdIndexHtmlGet200Response = new TemplatesTemplateIdIndexHtmlGet200Response(); // TemplatesTemplateIdIndexHtmlGet200Response | 
    try {
      Object result = apiInstance.templatesTemplateIdIndexHtmlPost(templateId, templatesTemplateIdIndexHtmlGet200Response);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdIndexHtmlPost");
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
| **templatesTemplateIdIndexHtmlGet200Response** | [**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md)|  | |

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

<a id="templatesTemplateIdPost"></a>
# **templatesTemplateIdPost**
> Object templatesTemplateIdPost(templateId, templatesTemplateIdPostRequest)

Save New Template

Finalizes template creation by saving template info to Strapi, copying preview files to permanent storage, and creating template index. Removes unfinished tag upon completion.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    TemplatesTemplateIdPostRequest templatesTemplateIdPostRequest = new TemplatesTemplateIdPostRequest(); // TemplatesTemplateIdPostRequest | 
    try {
      Object result = apiInstance.templatesTemplateIdPost(templateId, templatesTemplateIdPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdPost");
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
| **templatesTemplateIdPostRequest** | [**TemplatesTemplateIdPostRequest**](TemplatesTemplateIdPostRequest.md)|  | |

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

<a id="templatesTemplateIdPresignedUrlGet"></a>
# **templatesTemplateIdPresignedUrlGet**
> TemplatesTemplateIdPresignedUrlGet200Response templatesTemplateIdPresignedUrlGet(templateId)

Generate Presigned URL

Generates a presigned URL for template access. Used for downloading template files from S3 storage.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    try {
      TemplatesTemplateIdPresignedUrlGet200Response result = apiInstance.templatesTemplateIdPresignedUrlGet(templateId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdPresignedUrlGet");
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

<a id="templatesTemplateIdPut"></a>
# **templatesTemplateIdPut**
> TemplatesTemplateIdPut200Response templatesTemplateIdPut(templateId, templatesTemplateIdPutRequest)

Update Template

Updates template content, handles S3 storage cleanup for old content, updates template metadata in Strapi, and manages preview files. Removes unfinished tags after successful update.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    TemplatesTemplateIdPutRequest templatesTemplateIdPutRequest = new TemplatesTemplateIdPutRequest(); // TemplatesTemplateIdPutRequest | 
    try {
      TemplatesTemplateIdPut200Response result = apiInstance.templatesTemplateIdPut(templateId, templatesTemplateIdPutRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdPut");
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
| **templatesTemplateIdPutRequest** | [**TemplatesTemplateIdPutRequest**](TemplatesTemplateIdPutRequest.md)|  | [optional] |

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

<a id="templatesTemplateIdRenderPreviewsPost"></a>
# **templatesTemplateIdRenderPreviewsPost**
> TemplatesTemplateIdRenderPreviewsPost200Response templatesTemplateIdRenderPreviewsPost(templateId, templatesTemplateIdRenderPreviewsPostRequest)

Generate Template Previews

Creates both PNG and PDF preview files for template visualization. Generates previews in parallel and returns URLs for both formats.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    TemplatesTemplateIdRenderPreviewsPostRequest templatesTemplateIdRenderPreviewsPostRequest = new TemplatesTemplateIdRenderPreviewsPostRequest(); // TemplatesTemplateIdRenderPreviewsPostRequest | 
    try {
      TemplatesTemplateIdRenderPreviewsPost200Response result = apiInstance.templatesTemplateIdRenderPreviewsPost(templateId, templatesTemplateIdRenderPreviewsPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdRenderPreviewsPost");
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

<a id="templatesTemplateIdUnzipPost"></a>
# **templatesTemplateIdUnzipPost**
> Object templatesTemplateIdUnzipPost(templateId, templatesTemplateIdUnzipPostRequest)

Extract Template Files

Extracts contents from an uploaded template ZIP file and stores individual files in the appropriate S3 storage structure.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TemplatesApi apiInstance = new TemplatesApi(defaultClient);
    String templateId = "templateId_example"; // String | 
    TemplatesTemplateIdUnzipPostRequest templatesTemplateIdUnzipPostRequest = new TemplatesTemplateIdUnzipPostRequest(); // TemplatesTemplateIdUnzipPostRequest | 
    try {
      Object result = apiInstance.templatesTemplateIdUnzipPost(templateId, templatesTemplateIdUnzipPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TemplatesApi#templatesTemplateIdUnzipPost");
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
| **templatesTemplateIdUnzipPostRequest** | [**TemplatesTemplateIdUnzipPostRequest**](TemplatesTemplateIdUnzipPostRequest.md)|  | |

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

