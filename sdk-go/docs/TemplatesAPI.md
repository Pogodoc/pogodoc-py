# \TemplatesAPI

All URIs are relative to *https://api.pogodoc.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TemplatesInitGet**](TemplatesAPI.md#TemplatesInitGet) | **Get** /templates/init | Initialize Template Creation
[**TemplatesTemplateIdClonePost**](TemplatesAPI.md#TemplatesTemplateIdClonePost) | **Post** /templates/{templateId}/clone | Clone Template
[**TemplatesTemplateIdDelete**](TemplatesAPI.md#TemplatesTemplateIdDelete) | **Delete** /templates/{templateId} | Delete Template
[**TemplatesTemplateIdIndexHtmlGet**](TemplatesAPI.md#TemplatesTemplateIdIndexHtmlGet) | **Get** /templates/{templateId}/index-html | Get Template Index HTML
[**TemplatesTemplateIdIndexHtmlPost**](TemplatesAPI.md#TemplatesTemplateIdIndexHtmlPost) | **Post** /templates/{templateId}/index-html | Upload Template Index HTML
[**TemplatesTemplateIdPost**](TemplatesAPI.md#TemplatesTemplateIdPost) | **Post** /templates/{templateId} | Save New Template
[**TemplatesTemplateIdPresignedUrlGet**](TemplatesAPI.md#TemplatesTemplateIdPresignedUrlGet) | **Get** /templates/{templateId}/presigned-url | Generate Presigned URL
[**TemplatesTemplateIdPut**](TemplatesAPI.md#TemplatesTemplateIdPut) | **Put** /templates/{templateId} | Update Template
[**TemplatesTemplateIdRenderPreviewsPost**](TemplatesAPI.md#TemplatesTemplateIdRenderPreviewsPost) | **Post** /templates/{templateId}/render-previews | Generate Template Previews
[**TemplatesTemplateIdUnzipPost**](TemplatesAPI.md#TemplatesTemplateIdUnzipPost) | **Post** /templates/{templateId}/unzip | Extract Template Files



## TemplatesInitGet

> TemplatesInitGet200Response TemplatesInitGet(ctx).Execute()

Initialize Template Creation



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesInitGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesInitGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesInitGet`: TemplatesInitGet200Response
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesInitGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesInitGetRequest struct via the builder pattern


### Return type

[**TemplatesInitGet200Response**](TemplatesInitGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdClonePost

> TemplatesTemplateIdClonePost200Response TemplatesTemplateIdClonePost(ctx, templateId).Execute()

Clone Template



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdClonePost(context.Background(), templateId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdClonePost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdClonePost`: TemplatesTemplateIdClonePost200Response
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdClonePost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdClonePostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**TemplatesTemplateIdClonePost200Response**](TemplatesTemplateIdClonePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdDelete

> interface{} TemplatesTemplateIdDelete(ctx, templateId).Execute()

Delete Template



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdDelete(context.Background(), templateId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdDelete`: interface{}
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdDeleteRequest struct via the builder pattern


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


## TemplatesTemplateIdIndexHtmlGet

> TemplatesTemplateIdIndexHtmlGet200Response TemplatesTemplateIdIndexHtmlGet(ctx, templateId).Execute()

Get Template Index HTML



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdIndexHtmlGet(context.Background(), templateId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdIndexHtmlGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdIndexHtmlGet`: TemplatesTemplateIdIndexHtmlGet200Response
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdIndexHtmlGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdIndexHtmlGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdIndexHtmlPost

> interface{} TemplatesTemplateIdIndexHtmlPost(ctx, templateId).TemplatesTemplateIdIndexHtmlGet200Response(templatesTemplateIdIndexHtmlGet200Response).Execute()

Upload Template Index HTML



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
	templatesTemplateIdIndexHtmlGet200Response := *openapiclient.NewTemplatesTemplateIdIndexHtmlGet200Response("TemplateIndex_example") // TemplatesTemplateIdIndexHtmlGet200Response | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdIndexHtmlPost(context.Background(), templateId).TemplatesTemplateIdIndexHtmlGet200Response(templatesTemplateIdIndexHtmlGet200Response).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdIndexHtmlPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdIndexHtmlPost`: interface{}
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdIndexHtmlPost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdIndexHtmlPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **templatesTemplateIdIndexHtmlGet200Response** | [**TemplatesTemplateIdIndexHtmlGet200Response**](TemplatesTemplateIdIndexHtmlGet200Response.md) |  | 

### Return type

**interface{}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdPost

> interface{} TemplatesTemplateIdPost(ctx, templateId).TemplatesTemplateIdPostRequest(templatesTemplateIdPostRequest).Execute()

Save New Template



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
	templatesTemplateIdPostRequest := *openapiclient.NewTemplatesTemplateIdPostRequest(*openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfo("Title_example", "Description_example", *openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfoType(), map[string]interface{}{"key": interface{}(123)}, []openapiclient.TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner{*openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner()}), *openapiclient.NewTemplatesTemplateIdPutRequestAllOfPreviewIds("PngJobId_example", "PdfJobId_example")) // TemplatesTemplateIdPostRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdPost(context.Background(), templateId).TemplatesTemplateIdPostRequest(templatesTemplateIdPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdPost`: interface{}
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdPost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **templatesTemplateIdPostRequest** | [**TemplatesTemplateIdPostRequest**](TemplatesTemplateIdPostRequest.md) |  | 

### Return type

**interface{}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdPresignedUrlGet

> TemplatesTemplateIdPresignedUrlGet200Response TemplatesTemplateIdPresignedUrlGet(ctx, templateId).Execute()

Generate Presigned URL



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdPresignedUrlGet(context.Background(), templateId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdPresignedUrlGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdPresignedUrlGet`: TemplatesTemplateIdPresignedUrlGet200Response
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdPresignedUrlGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdPresignedUrlGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**TemplatesTemplateIdPresignedUrlGet200Response**](TemplatesTemplateIdPresignedUrlGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdPut

> TemplatesTemplateIdPut200Response TemplatesTemplateIdPut(ctx, templateId).TemplatesTemplateIdPutRequest(templatesTemplateIdPutRequest).Execute()

Update Template



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
	templatesTemplateIdPutRequest := *openapiclient.NewTemplatesTemplateIdPutRequest(*openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfo("Title_example", "Description_example", *openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfoType(), map[string]interface{}{"key": interface{}(123)}, []openapiclient.TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner{*openapiclient.NewTemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner()}), *openapiclient.NewTemplatesTemplateIdPutRequestAllOfPreviewIds("PngJobId_example", "PdfJobId_example"), "ContentId_example") // TemplatesTemplateIdPutRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdPut(context.Background(), templateId).TemplatesTemplateIdPutRequest(templatesTemplateIdPutRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdPut``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdPut`: TemplatesTemplateIdPut200Response
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdPut`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdPutRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **templatesTemplateIdPutRequest** | [**TemplatesTemplateIdPutRequest**](TemplatesTemplateIdPutRequest.md) |  | 

### Return type

[**TemplatesTemplateIdPut200Response**](TemplatesTemplateIdPut200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdRenderPreviewsPost

> TemplatesTemplateIdRenderPreviewsPost200Response TemplatesTemplateIdRenderPreviewsPost(ctx, templateId).TemplatesTemplateIdRenderPreviewsPostRequest(templatesTemplateIdRenderPreviewsPostRequest).Execute()

Generate Template Previews



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
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdRenderPreviewsPost(context.Background(), templateId).TemplatesTemplateIdRenderPreviewsPostRequest(templatesTemplateIdRenderPreviewsPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdRenderPreviewsPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdRenderPreviewsPost`: TemplatesTemplateIdRenderPreviewsPost200Response
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdRenderPreviewsPost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdRenderPreviewsPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **templatesTemplateIdRenderPreviewsPostRequest** | [**TemplatesTemplateIdRenderPreviewsPostRequest**](TemplatesTemplateIdRenderPreviewsPostRequest.md) |  | 

### Return type

[**TemplatesTemplateIdRenderPreviewsPost200Response**](TemplatesTemplateIdRenderPreviewsPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TemplatesTemplateIdUnzipPost

> interface{} TemplatesTemplateIdUnzipPost(ctx, templateId).TemplatesTemplateIdUnzipPostRequest(templatesTemplateIdUnzipPostRequest).Execute()

Extract Template Files



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
	templatesTemplateIdUnzipPostRequest := *openapiclient.NewTemplatesTemplateIdUnzipPostRequest("TemplateId_example") // TemplatesTemplateIdUnzipPostRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TemplatesAPI.TemplatesTemplateIdUnzipPost(context.Background(), templateId).TemplatesTemplateIdUnzipPostRequest(templatesTemplateIdUnzipPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TemplatesAPI.TemplatesTemplateIdUnzipPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TemplatesTemplateIdUnzipPost`: interface{}
	fmt.Fprintf(os.Stdout, "Response from `TemplatesAPI.TemplatesTemplateIdUnzipPost`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**templateId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiTemplatesTemplateIdUnzipPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **templatesTemplateIdUnzipPostRequest** | [**TemplatesTemplateIdUnzipPostRequest**](TemplatesTemplateIdUnzipPostRequest.md) |  | 

### Return type

**interface{}**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

