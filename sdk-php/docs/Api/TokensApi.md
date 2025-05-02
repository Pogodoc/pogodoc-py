# OpenAPI\Client\TokensApi

All URIs are relative to https://api.pogodoc.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**apiTokensTokenIdDelete()**](TokensApi.md#apiTokensTokenIdDelete) | **DELETE** /api-tokens/{tokenId} | Delete API Token |


## `apiTokensTokenIdDelete()`

```php
apiTokensTokenIdDelete($token_id): mixed
```

Delete API Token

Invalidates an API token by storing it in the deleted tokens S3 bucket, preventing future use of the token for authentication.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (Api Token) authorization: bearerAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\TokensApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$token_id = 'token_id_example'; // string

try {
    $result = $apiInstance->apiTokensTokenIdDelete($token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TokensApi->apiTokensTokenIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **token_id** | **string**|  | |

### Return type

**mixed**

### Authorization

[bearerAuth](../../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
