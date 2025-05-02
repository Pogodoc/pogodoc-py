# JobsJobIdGet200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**job_id** | **str** |  | 
**target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**output** | [**JobsJobIdGet200ResponseOutput**](JobsJobIdGet200ResponseOutput.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.jobs_job_id_get200_response import JobsJobIdGet200Response

# TODO update the JSON string below
json = "{}"
# create an instance of JobsJobIdGet200Response from a JSON string
jobs_job_id_get200_response_instance = JobsJobIdGet200Response.from_json(json)
# print the JSON string representation of the object
print(JobsJobIdGet200Response.to_json())

# convert the object into a dict
jobs_job_id_get200_response_dict = jobs_job_id_get200_response_instance.to_dict()
# create an instance of JobsJobIdGet200Response from a dict
jobs_job_id_get200_response_from_dict = JobsJobIdGet200Response.from_dict(jobs_job_id_get200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


