# \TokensAPI

All URIs are relative to *https://api.pogodoc.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiTokensTokenIdDelete**](TokensAPI.md#ApiTokensTokenIdDelete) | **Delete** /api-tokens/{tokenId} | Delete API Token



## ApiTokensTokenIdDelete

> interface{} ApiTokensTokenIdDelete(ctx, tokenId).Execute()

Delete API Token



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	tokenId := "tokenId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TokensAPI.ApiTokensTokenIdDelete(context.Background(), tokenId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TokensAPI.ApiTokensTokenIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ApiTokensTokenIdDelete`: interface{}
	fmt.Fprintf(os.Stdout, "Response from `TokensAPI.ApiTokensTokenIdDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**tokenId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiTokensTokenIdDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**interface{}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

