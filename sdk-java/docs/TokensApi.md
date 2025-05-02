# TokensApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**apiTokensTokenIdDelete**](TokensApi.md#apiTokensTokenIdDelete) | **DELETE** /api-tokens/{tokenId} | Delete API Token |


<a id="apiTokensTokenIdDelete"></a>
# **apiTokensTokenIdDelete**
> Object apiTokensTokenIdDelete(tokenId)

Delete API Token

Invalidates an API token by storing it in the deleted tokens S3 bucket, preventing future use of the token for authentication.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.auth.*;
import org.openapitools.client.models.*;
import org.openapitools.client.api.TokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.pogodoc.com");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    TokensApi apiInstance = new TokensApi(defaultClient);
    String tokenId = "tokenId_example"; // String | 
    try {
      Object result = apiInstance.apiTokensTokenIdDelete(tokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokensApi#apiTokensTokenIdDelete");
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
| **tokenId** | **String**|  | |

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

