# DocumentsInitPost200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **string** |  | 
**Target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**PresignedDataUploadUrl** | **NullableString** |  | 
**PresignedTemplateUploadUrl** | **NullableString** |  | 

## Methods

### NewDocumentsInitPost200Response

`func NewDocumentsInitPost200Response(jobId string, target DocumentsInitPostRequestAllOfTarget, presignedDataUploadUrl NullableString, presignedTemplateUploadUrl NullableString, ) *DocumentsInitPost200Response`

NewDocumentsInitPost200Response instantiates a new DocumentsInitPost200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDocumentsInitPost200ResponseWithDefaults

`func NewDocumentsInitPost200ResponseWithDefaults() *DocumentsInitPost200Response`

NewDocumentsInitPost200ResponseWithDefaults instantiates a new DocumentsInitPost200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetJobId

`func (o *DocumentsInitPost200Response) GetJobId() string`

GetJobId returns the JobId field if non-nil, zero value otherwise.

### GetJobIdOk

`func (o *DocumentsInitPost200Response) GetJobIdOk() (*string, bool)`

GetJobIdOk returns a tuple with the JobId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobId

`func (o *DocumentsInitPost200Response) SetJobId(v string)`

SetJobId sets JobId field to given value.


### GetTarget

`func (o *DocumentsInitPost200Response) GetTarget() DocumentsInitPostRequestAllOfTarget`

GetTarget returns the Target field if non-nil, zero value otherwise.

### GetTargetOk

`func (o *DocumentsInitPost200Response) GetTargetOk() (*DocumentsInitPostRequestAllOfTarget, bool)`

GetTargetOk returns a tuple with the Target field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTarget

`func (o *DocumentsInitPost200Response) SetTarget(v DocumentsInitPostRequestAllOfTarget)`

SetTarget sets Target field to given value.


### GetPresignedDataUploadUrl

`func (o *DocumentsInitPost200Response) GetPresignedDataUploadUrl() string`

GetPresignedDataUploadUrl returns the PresignedDataUploadUrl field if non-nil, zero value otherwise.

### GetPresignedDataUploadUrlOk

`func (o *DocumentsInitPost200Response) GetPresignedDataUploadUrlOk() (*string, bool)`

GetPresignedDataUploadUrlOk returns a tuple with the PresignedDataUploadUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPresignedDataUploadUrl

`func (o *DocumentsInitPost200Response) SetPresignedDataUploadUrl(v string)`

SetPresignedDataUploadUrl sets PresignedDataUploadUrl field to given value.


### SetPresignedDataUploadUrlNil

`func (o *DocumentsInitPost200Response) SetPresignedDataUploadUrlNil(b bool)`

 SetPresignedDataUploadUrlNil sets the value for PresignedDataUploadUrl to be an explicit nil

### UnsetPresignedDataUploadUrl
`func (o *DocumentsInitPost200Response) UnsetPresignedDataUploadUrl()`

UnsetPresignedDataUploadUrl ensures that no value is present for PresignedDataUploadUrl, not even an explicit nil
### GetPresignedTemplateUploadUrl

`func (o *DocumentsInitPost200Response) GetPresignedTemplateUploadUrl() string`

GetPresignedTemplateUploadUrl returns the PresignedTemplateUploadUrl field if non-nil, zero value otherwise.

### GetPresignedTemplateUploadUrlOk

`func (o *DocumentsInitPost200Response) GetPresignedTemplateUploadUrlOk() (*string, bool)`

GetPresignedTemplateUploadUrlOk returns a tuple with the PresignedTemplateUploadUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPresignedTemplateUploadUrl

`func (o *DocumentsInitPost200Response) SetPresignedTemplateUploadUrl(v string)`

SetPresignedTemplateUploadUrl sets PresignedTemplateUploadUrl field to given value.


### SetPresignedTemplateUploadUrlNil

`func (o *DocumentsInitPost200Response) SetPresignedTemplateUploadUrlNil(b bool)`

 SetPresignedTemplateUploadUrlNil sets the value for PresignedTemplateUploadUrl to be an explicit nil

### UnsetPresignedTemplateUploadUrl
`func (o *DocumentsInitPost200Response) UnsetPresignedTemplateUploadUrl()`

UnsetPresignedTemplateUploadUrl ensures that no value is present for PresignedTemplateUploadUrl, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


