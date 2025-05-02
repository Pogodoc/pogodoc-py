# TemplatesApi

All URIs are relative to *https://api.pogodoc.com*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**templatesInitGet**](#templatesinitget) | **GET** /templates/init | Initialize Template Creation|
|[**templatesTemplateIdClonePost**](#templatestemplateidclonepost) | **POST** /templates/{templateId}/clone | Clone Template|
|[**templatesTemplateIdDelete**](#templatestemplateiddelete) | **DELETE** /templates/{templateId} | Delete Template|
|[**templatesTemplateIdIndexHtmlGet**](#templatestemplateidindexhtmlget) | **GET** /templates/{templateId}/index-html | Get Template Index HTML|
|[**templatesTemplateIdIndexHtmlPost**](#templatestemplateidindexhtmlpost) | **POST** /templates/{templateId}/index-html | Upload Template Index HTML|
|[**templatesTemplateIdPost**](#templatestemplateidpost) | **POST** /templates/{templateId} | Save New Template|
|[**templatesTemplateIdPresignedUrlGet**](#templatestemplateidpresignedurlget) | **GET** /templates/{templateId}/presigned-url | Generate Presigned URL|
|[**templatesTemplateIdPut**](#templatestemplateidput) | **PUT** /templates/{templateId} | Update Template|
|[**templatesTemplateIdRenderPreviewsPost**](#templatestemplateidrenderpreviewspost) | **POST** /templates/{templateId}/render-previews | Generate Template Previews|
|[**templatesTemplateIdUnzipPost**](#templatestemplateidunzippost) | **POST** /templates/{templateId}/unzip | Extract Template Files|

# **templatesInitGet**
> TemplatesInitGet200Response templatesInitGet()

Initializes template creation by generating a unique ID and providing a presigned URL for template ZIP upload. Sets unfinished tag for tracking incomplete templates.

### Example

```typescript
import {
    TemplatesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

const { status, data } = await apiInstance.templatesInitGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**TemplatesInitGet200Response**

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

# **templatesTemplateIdClonePost**
> TemplatesTemplateIdClonePost200Response templatesTemplateIdClonePost()

Creates a new template by duplicating an existing template\'s content and metadata. Includes copying preview files and template index.

### Example

```typescript
import {
    TemplatesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)

const { status, data } = await apiInstance.templatesTemplateIdClonePost(
    templateId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**TemplatesTemplateIdClonePost200Response**

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

# **templatesTemplateIdDelete**
> any templatesTemplateIdDelete()

Deletes a template from Strapi and associated S3 storage. Removes all associated files and metadata.

### Example

```typescript
import {
    TemplatesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)

const { status, data } = await apiInstance.templatesTemplateIdDelete(
    templateId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templateId** | [**string**] |  | defaults to undefined|


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

# **templatesTemplateIdIndexHtmlGet**
> TemplatesTemplateIdIndexHtmlGet200Response templatesTemplateIdIndexHtmlGet()

Retrieves the template index.html file from S3 storage. Used for rendering the template in the browser.

### Example

```typescript
import {
    TemplatesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)

const { status, data } = await apiInstance.templatesTemplateIdIndexHtmlGet(
    templateId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**TemplatesTemplateIdIndexHtmlGet200Response**

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

# **templatesTemplateIdIndexHtmlPost**
> any templatesTemplateIdIndexHtmlPost(templatesTemplateIdIndexHtmlGet200Response)

Uploads the template index.html file to S3 storage. Used for rendering the template in the browser.

### Example

```typescript
import {
    TemplatesApi,
    Configuration,
    TemplatesTemplateIdIndexHtmlGet200Response
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)
let templatesTemplateIdIndexHtmlGet200Response: TemplatesTemplateIdIndexHtmlGet200Response; //

const { status, data } = await apiInstance.templatesTemplateIdIndexHtmlPost(
    templateId,
    templatesTemplateIdIndexHtmlGet200Response
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templatesTemplateIdIndexHtmlGet200Response** | **TemplatesTemplateIdIndexHtmlGet200Response**|  | |
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**any**

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

# **templatesTemplateIdPost**
> any templatesTemplateIdPost(templatesTemplateIdPostRequest)

Finalizes template creation by saving template info to Strapi, copying preview files to permanent storage, and creating template index. Removes unfinished tag upon completion.

### Example

```typescript
import {
    TemplatesApi,
    Configuration,
    TemplatesTemplateIdPostRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)
let templatesTemplateIdPostRequest: TemplatesTemplateIdPostRequest; //

const { status, data } = await apiInstance.templatesTemplateIdPost(
    templateId,
    templatesTemplateIdPostRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templatesTemplateIdPostRequest** | **TemplatesTemplateIdPostRequest**|  | |
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**any**

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

# **templatesTemplateIdPresignedUrlGet**
> TemplatesTemplateIdPresignedUrlGet200Response templatesTemplateIdPresignedUrlGet()

Generates a presigned URL for template access. Used for downloading template files from S3 storage.

### Example

```typescript
import {
    TemplatesApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)

const { status, data } = await apiInstance.templatesTemplateIdPresignedUrlGet(
    templateId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**TemplatesTemplateIdPresignedUrlGet200Response**

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

# **templatesTemplateIdPut**
> TemplatesTemplateIdPut200Response templatesTemplateIdPut()

Updates template content, handles S3 storage cleanup for old content, updates template metadata in Strapi, and manages preview files. Removes unfinished tags after successful update.

### Example

```typescript
import {
    TemplatesApi,
    Configuration,
    TemplatesTemplateIdPutRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)
let templatesTemplateIdPutRequest: TemplatesTemplateIdPutRequest; // (optional)

const { status, data } = await apiInstance.templatesTemplateIdPut(
    templateId,
    templatesTemplateIdPutRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templatesTemplateIdPutRequest** | **TemplatesTemplateIdPutRequest**|  | |
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**TemplatesTemplateIdPut200Response**

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

# **templatesTemplateIdRenderPreviewsPost**
> TemplatesTemplateIdRenderPreviewsPost200Response templatesTemplateIdRenderPreviewsPost(templatesTemplateIdRenderPreviewsPostRequest)

Creates both PNG and PDF preview files for template visualization. Generates previews in parallel and returns URLs for both formats.

### Example

```typescript
import {
    TemplatesApi,
    Configuration,
    TemplatesTemplateIdRenderPreviewsPostRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)
let templatesTemplateIdRenderPreviewsPostRequest: TemplatesTemplateIdRenderPreviewsPostRequest; //

const { status, data } = await apiInstance.templatesTemplateIdRenderPreviewsPost(
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

**TemplatesTemplateIdRenderPreviewsPost200Response**

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

# **templatesTemplateIdUnzipPost**
> any templatesTemplateIdUnzipPost(templatesTemplateIdUnzipPostRequest)

Extracts contents from an uploaded template ZIP file and stores individual files in the appropriate S3 storage structure.

### Example

```typescript
import {
    TemplatesApi,
    Configuration,
    TemplatesTemplateIdUnzipPostRequest
} from './api';

const configuration = new Configuration();
const apiInstance = new TemplatesApi(configuration);

let templateId: string; // (default to undefined)
let templatesTemplateIdUnzipPostRequest: TemplatesTemplateIdUnzipPostRequest; //

const { status, data } = await apiInstance.templatesTemplateIdUnzipPost(
    templateId,
    templatesTemplateIdUnzipPostRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **templatesTemplateIdUnzipPostRequest** | **TemplatesTemplateIdUnzipPostRequest**|  | |
| **templateId** | [**string**] |  | defaults to undefined|


### Return type

**any**

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

