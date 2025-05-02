# TokensApi

All URIs are relative to *https://api.pogodoc.com*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**apiTokensTokenIdDelete**](#apitokenstokeniddelete) | **DELETE** /api-tokens/{tokenId} | Delete API Token|

# **apiTokensTokenIdDelete**
> any apiTokensTokenIdDelete()

Invalidates an API token by storing it in the deleted tokens S3 bucket, preventing future use of the token for authentication.

### Example

```typescript
import {
    TokensApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new TokensApi(configuration);

let tokenId: string; // (default to undefined)

const { status, data } = await apiInstance.apiTokensTokenIdDelete(
    tokenId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **tokenId** | [**string**] |  | defaults to undefined|


### Return type

**any**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

