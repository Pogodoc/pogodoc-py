# \RenderAPI

All URIs are relative to *https://api.pogodoc.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DocumentsImmediateRenderPost**](RenderAPI.md#DocumentsImmediateRenderPost) | **Post** /documents/immediate-render | Immediate Render
[**DocumentsInitPost**](RenderAPI.md#DocumentsInitPost) | **Post** /documents/init | Initialize Render Job
[**DocumentsJobIdRenderPost**](RenderAPI.md#DocumentsJobIdRenderPost) | **Post** /documents/{jobId}/render | Start Render Job
[**DocumentsRenderPreviewPost**](RenderAPI.md#DocumentsRenderPreviewPost) | **Post** /documents/render-preview | Generate Document Preview
[**JobsJobIdGet**](RenderAPI.md#JobsJobIdGet) | **Get** /jobs/{jobId} | Get Job Status



## DocumentsImmediateRenderPost

> DocumentsImmediateRenderPost200Response DocumentsImmediateRenderPost(ctx).DocumentsImmediateRenderPostRequest(documentsImmediateRenderPostRequest).Execute()

Immediate Render



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
	documentsImmediateRenderPostRequest := *openapiclient.NewDocumentsImmediateRenderPostRequest(map[string]interface{}{"key": interface{}(123)}, *openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfoType(), *openapiclient.NewDocumentsInitPostRequestAllOfTarget()) // DocumentsImmediateRenderPostRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RenderAPI.DocumentsImmediateRenderPost(context.Background()).DocumentsImmediateRenderPostRequest(documentsImmediateRenderPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RenderAPI.DocumentsImmediateRenderPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DocumentsImmediateRenderPost`: DocumentsImmediateRenderPost200Response
	fmt.Fprintf(os.Stdout, "Response from `RenderAPI.DocumentsImmediateRenderPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDocumentsImmediateRenderPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentsImmediateRenderPostRequest** | [**DocumentsImmediateRenderPostRequest**](DocumentsImmediateRenderPostRequest.md) |  | 

### Return type

[**DocumentsImmediateRenderPost200Response**](DocumentsImmediateRenderPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DocumentsInitPost

> DocumentsInitPost200Response DocumentsInitPost(ctx).DocumentsInitPostRequest(documentsInitPostRequest).Execute()

Initialize Render Job



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
	documentsInitPostRequest := *openapiclient.NewDocumentsInitPostRequest(*openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfoType(), *openapiclient.NewDocumentsInitPostRequestAllOfTarget()) // DocumentsInitPostRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RenderAPI.DocumentsInitPost(context.Background()).DocumentsInitPostRequest(documentsInitPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RenderAPI.DocumentsInitPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DocumentsInitPost`: DocumentsInitPost200Response
	fmt.Fprintf(os.Stdout, "Response from `RenderAPI.DocumentsInitPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDocumentsInitPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentsInitPostRequest** | [**DocumentsInitPostRequest**](DocumentsInitPostRequest.md) |  | 

### Return type

[**DocumentsInitPost200Response**](DocumentsInitPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DocumentsJobIdRenderPost

> DocumentsJobIdRenderPost200Response DocumentsJobIdRenderPost(ctx, jobId).DocumentsJobIdRenderPostRequest(documentsJobIdRenderPostRequest).Execute()

Start Render Job



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
	jobId := "jobId_example" // string | 
	documentsJobIdRenderPostRequest := *openapiclient.NewDocumentsJobIdRenderPostRequest() // DocumentsJobIdRenderPostRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RenderAPI.DocumentsJobIdRenderPost(context.Background(), jobId).DocumentsJobIdRenderPostRequest(documentsJobIdRenderPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RenderAPI.DocumentsJobIdRenderPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DocumentsJobIdRenderPost`: DocumentsJobIdRenderPost200Response
	fmt.Fprintf(os.Stdout, "Response from `RenderAPI.DocumentsJobIdRenderPost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**jobId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDocumentsJobIdRenderPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **documentsJobIdRenderPostRequest** | [**DocumentsJobIdRenderPostRequest**](DocumentsJobIdRenderPostRequest.md) |  | 

### Return type

[**DocumentsJobIdRenderPost200Response**](DocumentsJobIdRenderPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DocumentsRenderPreviewPost

> TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview DocumentsRenderPreviewPost(ctx).TemplateId(templateId).TemplatesTemplateIdRenderPreviewsPostRequest(templatesTemplateIdRenderPreviewsPostRequest).Execute()

Generate Document Preview



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
	templateId := "templateId_example" // string | 
	templatesTemplateIdRenderPreviewsPostRequest := *openapiclient.NewTemplatesTemplateIdRenderPreviewsPostRequest(*openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfoType(), map[string]interface{}{"key": interface{}(123)}) // TemplatesTemplateIdRenderPreviewsPostRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RenderAPI.DocumentsRenderPreviewPost(context.Background()).TemplateId(templateId).TemplatesTemplateIdRenderPreviewsPostRequest(templatesTemplateIdRenderPreviewsPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RenderAPI.DocumentsRenderPreviewPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DocumentsRenderPreviewPost`: TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview
	fmt.Fprintf(os.Stdout, "Response from `RenderAPI.DocumentsRenderPreviewPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDocumentsRenderPreviewPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **string** |  | 
 **templatesTemplateIdRenderPreviewsPostRequest** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md) |  | 

### Return type

[**TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview**](TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## JobsJobIdGet

> JobsJobIdGet200Response JobsJobIdGet(ctx, jobId).Execute()

Get Job Status



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
	jobId := "jobId_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RenderAPI.JobsJobIdGet(context.Background(), jobId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RenderAPI.JobsJobIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `JobsJobIdGet`: JobsJobIdGet200Response
	fmt.Fprintf(os.Stdout, "Response from `RenderAPI.JobsJobIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**jobId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiJobsJobIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**JobsJobIdGet200Response**](JobsJobIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

