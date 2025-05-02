# DocumentsJobIdRenderPostRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**should_wait_for_render_completion** | **bool** |  | [optional] 
**upload_presigned_s3_url** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.documents_job_id_render_post_request import DocumentsJobIdRenderPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentsJobIdRenderPostRequest from a JSON string
documents_job_id_render_post_request_instance = DocumentsJobIdRenderPostRequest.from_json(json)
# print the JSON string representation of the object
print(DocumentsJobIdRenderPostRequest.to_json())

# convert the object into a dict
documents_job_id_render_post_request_dict = documents_job_id_render_post_request_instance.to_dict()
# create an instance of DocumentsJobIdRenderPostRequest from a dict
documents_job_id_render_post_request_from_dict = DocumentsJobIdRenderPostRequest.from_dict(documents_job_id_render_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


