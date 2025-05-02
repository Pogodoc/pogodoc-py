# RenderApi

All URIs are relative to *https://api.pogodoc.com*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**documentsImmediateRenderPost**](#documentsimmediaterenderpost) | **POST** /documents/immediate-render | Immediate Render|
|[**documentsInitPost**](#documentsinitpost) | **POST** /documents/init | Initialize Render Job|
|[**documentsJobIdRenderPost**](#documentsjobidrenderpost) | **POST** /documents/{jobId}/render | Start Render Job|
|[**documentsRenderPreviewPost**](#documentsrenderpreviewpost) | **POST** /documents/render-preview | Generate Document Preview|
|[**jobsJobIdGet**](#jobsjobidget) | **GET** /jobs/{jobId} | Get Job Status|

# **documentsImmediateRenderPost**
> DocumentsImmediateRenderPost200Response documentsImmediateRenderPost()

Combines initialization and rendering in one step. Creates a job, uploads template/data directly, starts rendering, and adds the document to Strapi. Requires subscription check.

### Example

```typescript
import {
    RenderApi,
    Configuration,
    DocumentsImmediateRenderPostRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new RenderApi(configuration);

let documentsImmediateRenderPostRequest: DocumentsImmediateRenderPostRequest; // (optional)

const { status, data } = await apiInstance.documentsImmediateRenderPost(
    documentsImmediateRenderPostRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **documentsImmediateRenderPostRequest** | **DocumentsImmediateRenderPostRequest**|  | |


### Return type

**DocumentsImmediateRenderPost200Response**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsInitPost**
> DocumentsInitPost200Response documentsInitPost()

Creates a new render job with a unique ID, sets up S3 storage for template and data files, and generates presigned upload URLs if needed. Requires subscription check.

### Example

```typescript
import {
    RenderApi,
    Configuration,
    DocumentsInitPostRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new RenderApi(configuration);

let documentsInitPostRequest: DocumentsInitPostRequest; // (optional)

const { status, data } = await apiInstance.documentsInitPost(
    documentsInitPostRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **documentsInitPostRequest** | **DocumentsInitPostRequest**|  | |


### Return type

**DocumentsInitPost200Response**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsJobIdRenderPost**
> DocumentsJobIdRenderPost200Response documentsJobIdRenderPost()

Takes a previously initialized job, updates its status to in-progress, and triggers the rendering process using Puppeteer. Can optionally wait for render completion.

### Example

```typescript
import {
    RenderApi,
    Configuration,
    DocumentsJobIdRenderPostRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new RenderApi(configuration);

let jobId: string; // (default to undefined)
let documentsJobIdRenderPostRequest: DocumentsJobIdRenderPostRequest; // (optional)

const { status, data } = await apiInstance.documentsJobIdRenderPost(
    jobId,
    documentsJobIdRenderPostRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **documentsJobIdRenderPostRequest** | **DocumentsJobIdRenderPostRequest**|  | |
| **jobId** | [**string**] |  | defaults to undefined|


### Return type

**DocumentsJobIdRenderPost200Response**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsRenderPreviewPost**
> TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview documentsRenderPreviewPost(templatesTemplateIdRenderPreviewsPostRequest)

Generates a preview by creating a single-page render job, processing it immediately, and returning the output URL. Used for template visualization.

### Example

```typescript
import {
    RenderApi,
    Configuration,
    TemplatesTemplateIdRenderPreviewsPostRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new RenderApi(configuration);

let templateId: string; // (default to undefined)
let templatesTemplateIdRenderPreviewsPostRequest: TemplatesTemplateIdRenderPreviewsPostRequest; //

const { status, data } = await apiInstance.documentsRenderPreviewPost(
    templateId,
    templatesTemplateIdRenderPreviewsPostRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templatesTemplateIdRenderPreviewsPostRequest** | **TemplatesTemplateIdRenderPreviewsPostRequest**|  | |
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**TemplatesTemplateIdRenderPreviewsPost200ResponsePngPreview**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Default Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jobsJobIdGet**
> JobsJobIdGet200Response jobsJobIdGet()

Fetches detailed job information from S3 storage including job status, template ID, target format, and output details if available.

### Example

```typescript
import {
    RenderApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RenderApi(configuration);

let jobId: string; // (default to undefined)

const { status, data } = await apiInstance.jobsJobIdGet(
    jobId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **jobId** | [**string**] |  | defaults to undefined|


### Return type

**JobsJobIdGet200Response**

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

