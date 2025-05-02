# Org.OpenAPITools.Api.TokensApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ApiTokensTokenIdDelete**](TokensApi.md#apitokenstokeniddelete) | **DELETE** /api-tokens/{tokenId} | Delete API Token |

<a id="apitokenstokeniddelete"></a>
# **ApiTokensTokenIdDelete**
> Object ApiTokensTokenIdDelete (string tokenId)

Delete API Token

Invalidates an API token by storing it in the deleted tokens S3 bucket, preventing future use of the token for authentication.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class ApiTokensTokenIdDeleteExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.pogodoc.com";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new TokensApi(config);
            var tokenId = "tokenId_example";  // string | 

            try
            {
                // Delete API Token
                Object result = apiInstance.ApiTokensTokenIdDelete(tokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TokensApi.ApiTokensTokenIdDelete: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ApiTokensTokenIdDeleteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Delete API Token
    ApiResponse<Object> response = apiInstance.ApiTokensTokenIdDeleteWithHttpInfo(tokenId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TokensApi.ApiTokensTokenIdDeleteWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **tokenId** | **string** |  |  |

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

