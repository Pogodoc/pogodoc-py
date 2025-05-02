# DocumentsInitPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to **map[string]interface{}** |  | [optional] 
**Type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**Target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**TemplateId** | Pointer to **string** |  | [optional] 
**FormatOpts** | Pointer to [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md) |  | [optional] 

## Methods

### NewDocumentsInitPostRequest

`func NewDocumentsInitPostRequest(type_ TemplatesTemplateIdPutRequestAllOfTemplateInfoType, target DocumentsInitPostRequestAllOfTarget, ) *DocumentsInitPostRequest`

NewDocumentsInitPostRequest instantiates a new DocumentsInitPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDocumentsInitPostRequestWithDefaults

`func NewDocumentsInitPostRequestWithDefaults() *DocumentsInitPostRequest`

NewDocumentsInitPostRequestWithDefaults instantiates a new DocumentsInitPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *DocumentsInitPostRequest) GetData() map[string]interface{}`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *DocumentsInitPostRequest) GetDataOk() (*map[string]interface{}, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *DocumentsInitPostRequest) SetData(v map[string]interface{})`

SetData sets Data field to given value.

### HasData

`func (o *DocumentsInitPostRequest) HasData() bool`

HasData returns a boolean if a field has been set.

### GetType

`func (o *DocumentsInitPostRequest) GetType() TemplatesTemplateIdPutRequestAllOfTemplateInfoType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DocumentsInitPostRequest) GetTypeOk() (*TemplatesTemplateIdPutRequestAllOfTemplateInfoType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DocumentsInitPostRequest) SetType(v TemplatesTemplateIdPutRequestAllOfTemplateInfoType)`

SetType sets Type field to given value.


### GetTarget

`func (o *DocumentsInitPostRequest) GetTarget() DocumentsInitPostRequestAllOfTarget`

GetTarget returns the Target field if non-nil, zero value otherwise.

### GetTargetOk

`func (o *DocumentsInitPostRequest) GetTargetOk() (*DocumentsInitPostRequestAllOfTarget, bool)`

GetTargetOk returns a tuple with the Target field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTarget

`func (o *DocumentsInitPostRequest) SetTarget(v DocumentsInitPostRequestAllOfTarget)`

SetTarget sets Target field to given value.


### GetTemplateId

`func (o *DocumentsInitPostRequest) GetTemplateId() string`

GetTemplateId returns the TemplateId field if non-nil, zero value otherwise.

### GetTemplateIdOk

`func (o *DocumentsInitPostRequest) GetTemplateIdOk() (*string, bool)`

GetTemplateIdOk returns a tuple with the TemplateId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateId

`func (o *DocumentsInitPostRequest) SetTemplateId(v string)`

SetTemplateId sets TemplateId field to given value.

### HasTemplateId

`func (o *DocumentsInitPostRequest) HasTemplateId() bool`

HasTemplateId returns a boolean if a field has been set.

### GetFormatOpts

`func (o *DocumentsInitPostRequest) GetFormatOpts() TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts`

GetFormatOpts returns the FormatOpts field if non-nil, zero value otherwise.

### GetFormatOptsOk

`func (o *DocumentsInitPostRequest) GetFormatOptsOk() (*TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts, bool)`

GetFormatOptsOk returns a tuple with the FormatOpts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFormatOpts

`func (o *DocumentsInitPostRequest) SetFormatOpts(v TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts)`

SetFormatOpts sets FormatOpts field to given value.

### HasFormatOpts

`func (o *DocumentsInitPostRequest) HasFormatOpts() bool`

HasFormatOpts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


