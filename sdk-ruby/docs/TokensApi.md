# OpenapiClient::TokensApi

All URIs are relative to *https://api.pogodoc.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_tokens_token_id_delete**](TokensApi.md#api_tokens_token_id_delete) | **DELETE** /api-tokens/{tokenId} | Delete API Token |


## api_tokens_token_id_delete

> Object api_tokens_token_id_delete(token_id)

Delete API Token

Invalidates an API token by storing it in the deleted tokens S3 bucket, preventing future use of the token for authentication.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Api Token): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TokensApi.new
token_id = 'token_id_example' # String | 

begin
  # Delete API Token
  result = api_instance.api_tokens_token_id_delete(token_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TokensApi->api_tokens_token_id_delete: #{e}"
end
```

#### Using the api_tokens_token_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> api_tokens_token_id_delete_with_http_info(token_id)

```ruby
begin
  # Delete API Token
  data, status_code, headers = api_instance.api_tokens_token_id_delete_with_http_info(token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TokensApi->api_tokens_token_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_id** | **String** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

