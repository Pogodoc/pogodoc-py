# JobsJobIdGet200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**JobId** | **string** |  | 
**Target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**Output** | Pointer to [**JobsJobIdGet200ResponseOutput**](JobsJobIdGet200ResponseOutput.md) |  | [optional] 
**Success** | Pointer to **bool** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 

## Methods

### NewJobsJobIdGet200Response

`func NewJobsJobIdGet200Response(type_ TemplatesTemplateIdPutRequestAllOfTemplateInfoType, jobId string, target DocumentsInitPostRequestAllOfTarget, ) *JobsJobIdGet200Response`

NewJobsJobIdGet200Response instantiates a new JobsJobIdGet200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewJobsJobIdGet200ResponseWithDefaults

`func NewJobsJobIdGet200ResponseWithDefaults() *JobsJobIdGet200Response`

NewJobsJobIdGet200ResponseWithDefaults instantiates a new JobsJobIdGet200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *JobsJobIdGet200Response) GetType() TemplatesTemplateIdPutRequestAllOfTemplateInfoType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *JobsJobIdGet200Response) GetTypeOk() (*TemplatesTemplateIdPutRequestAllOfTemplateInfoType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *JobsJobIdGet200Response) SetType(v TemplatesTemplateIdPutRequestAllOfTemplateInfoType)`

SetType sets Type field to given value.


### GetJobId

`func (o *JobsJobIdGet200Response) GetJobId() string`

GetJobId returns the JobId field if non-nil, zero value otherwise.

### GetJobIdOk

`func (o *JobsJobIdGet200Response) GetJobIdOk() (*string, bool)`

GetJobIdOk returns a tuple with the JobId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobId

`func (o *JobsJobIdGet200Response) SetJobId(v string)`

SetJobId sets JobId field to given value.


### GetTarget

`func (o *JobsJobIdGet200Response) GetTarget() DocumentsInitPostRequestAllOfTarget`

GetTarget returns the Target field if non-nil, zero value otherwise.

### GetTargetOk

`func (o *JobsJobIdGet200Response) GetTargetOk() (*DocumentsInitPostRequestAllOfTarget, bool)`

GetTargetOk returns a tuple with the Target field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTarget

`func (o *JobsJobIdGet200Response) SetTarget(v DocumentsInitPostRequestAllOfTarget)`

SetTarget sets Target field to given value.


### GetOutput

`func (o *JobsJobIdGet200Response) GetOutput() JobsJobIdGet200ResponseOutput`

GetOutput returns the Output field if non-nil, zero value otherwise.

### GetOutputOk

`func (o *JobsJobIdGet200Response) GetOutputOk() (*JobsJobIdGet200ResponseOutput, bool)`

GetOutputOk returns a tuple with the Output field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOutput

`func (o *JobsJobIdGet200Response) SetOutput(v JobsJobIdGet200ResponseOutput)`

SetOutput sets Output field to given value.

### HasOutput

`func (o *JobsJobIdGet200Response) HasOutput() bool`

HasOutput returns a boolean if a field has been set.

### GetSuccess

`func (o *JobsJobIdGet200Response) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *JobsJobIdGet200Response) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *JobsJobIdGet200Response) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *JobsJobIdGet200Response) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetStatus

`func (o *JobsJobIdGet200Response) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *JobsJobIdGet200Response) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *JobsJobIdGet200Response) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *JobsJobIdGet200Response) HasStatus() bool`

HasStatus returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


