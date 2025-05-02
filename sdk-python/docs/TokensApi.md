# openapi_client.TokensApi

All URIs are relative to *https://api.pogodoc.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_tokens_token_id_delete**](TokensApi.md#api_tokens_token_id_delete) | **DELETE** /api-tokens/{tokenId} | Delete API Token


# **api_tokens_token_id_delete**
> object api_tokens_token_id_delete(token_id)

Delete API Token

Invalidates an API token by storing it in the deleted tokens S3 bucket, preventing future use of the token for authentication.

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
    api_instance = openapi_client.TokensApi(api_client)
    token_id = 'token_id_example' # str | 

    try:
        # Delete API Token
        api_response = api_instance.api_tokens_token_id_delete(token_id)
        print("The response of TokensApi->api_tokens_token_id_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokensApi->api_tokens_token_id_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **str**|  | 

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

