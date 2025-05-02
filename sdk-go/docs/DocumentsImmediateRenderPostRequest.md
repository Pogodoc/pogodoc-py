# DocumentsImmediateRenderPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | **map[string]interface{}** |  | 
**Type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**Target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**TemplateId** | Pointer to **string** |  | [optional] 
**FormatOpts** | Pointer to [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md) |  | [optional] 
**Template** | Pointer to **string** |  | [optional] 

## Methods

### NewDocumentsImmediateRenderPostRequest

`func NewDocumentsImmediateRenderPostRequest(data map[string]interface{}, type_ TemplatesTemplateIdPutRequestAllOfTemplateInfoType, target DocumentsInitPostRequestAllOfTarget, ) *DocumentsImmediateRenderPostRequest`

NewDocumentsImmediateRenderPostRequest instantiates a new DocumentsImmediateRenderPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDocumentsImmediateRenderPostRequestWithDefaults

`func NewDocumentsImmediateRenderPostRequestWithDefaults() *DocumentsImmediateRenderPostRequest`

NewDocumentsImmediateRenderPostRequestWithDefaults instantiates a new DocumentsImmediateRenderPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *DocumentsImmediateRenderPostRequest) GetData() map[string]interface{}`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *DocumentsImmediateRenderPostRequest) GetDataOk() (*map[string]interface{}, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *DocumentsImmediateRenderPostRequest) SetData(v map[string]interface{})`

SetData sets Data field to given value.


### GetType

`func (o *DocumentsImmediateRenderPostRequest) GetType() TemplatesTemplateIdPutRequestAllOfTemplateInfoType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DocumentsImmediateRenderPostRequest) GetTypeOk() (*TemplatesTemplateIdPutRequestAllOfTemplateInfoType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DocumentsImmediateRenderPostRequest) SetType(v TemplatesTemplateIdPutRequestAllOfTemplateInfoType)`

SetType sets Type field to given value.


### GetTarget

`func (o *DocumentsImmediateRenderPostRequest) GetTarget() DocumentsInitPostRequestAllOfTarget`

GetTarget returns the Target field if non-nil, zero value otherwise.

### GetTargetOk

`func (o *DocumentsImmediateRenderPostRequest) GetTargetOk() (*DocumentsInitPostRequestAllOfTarget, bool)`

GetTargetOk returns a tuple with the Target field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTarget

`func (o *DocumentsImmediateRenderPostRequest) SetTarget(v DocumentsInitPostRequestAllOfTarget)`

SetTarget sets Target field to given value.


### GetTemplateId

`func (o *DocumentsImmediateRenderPostRequest) GetTemplateId() string`

GetTemplateId returns the TemplateId field if non-nil, zero value otherwise.

### GetTemplateIdOk

`func (o *DocumentsImmediateRenderPostRequest) GetTemplateIdOk() (*string, bool)`

GetTemplateIdOk returns a tuple with the TemplateId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateId

`func (o *DocumentsImmediateRenderPostRequest) SetTemplateId(v string)`

SetTemplateId sets TemplateId field to given value.

### HasTemplateId

`func (o *DocumentsImmediateRenderPostRequest) HasTemplateId() bool`

HasTemplateId returns a boolean if a field has been set.

### GetFormatOpts

`func (o *DocumentsImmediateRenderPostRequest) GetFormatOpts() TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts`

GetFormatOpts returns the FormatOpts field if non-nil, zero value otherwise.

### GetFormatOptsOk

`func (o *DocumentsImmediateRenderPostRequest) GetFormatOptsOk() (*TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts, bool)`

GetFormatOptsOk returns a tuple with the FormatOpts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFormatOpts

`func (o *DocumentsImmediateRenderPostRequest) SetFormatOpts(v TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts)`

SetFormatOpts sets FormatOpts field to given value.

### HasFormatOpts

`func (o *DocumentsImmediateRenderPostRequest) HasFormatOpts() bool`

HasFormatOpts returns a boolean if a field has been set.

### GetTemplate

`func (o *DocumentsImmediateRenderPostRequest) GetTemplate() string`

GetTemplate returns the Template field if non-nil, zero value otherwise.

### GetTemplateOk

`func (o *DocumentsImmediateRenderPostRequest) GetTemplateOk() (*string, bool)`

GetTemplateOk returns a tuple with the Template field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplate

`func (o *DocumentsImmediateRenderPostRequest) SetTemplate(v string)`

SetTemplate sets Template field to given value.

### HasTemplate

`func (o *DocumentsImmediateRenderPostRequest) HasTemplate() bool`

HasTemplate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


