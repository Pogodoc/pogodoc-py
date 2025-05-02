# DocumentsInitPost200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**job_id** | **str** |  | 
**target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**presigned_data_upload_url** | **str** |  | 
**presigned_template_upload_url** | **str** |  | 

## Example

```python
from openapi_client.models.documents_init_post200_response import DocumentsInitPost200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentsInitPost200Response from a JSON string
documents_init_post200_response_instance = DocumentsInitPost200Response.from_json(json)
# print the JSON string representation of the object
print(DocumentsInitPost200Response.to_json())

# convert the object into a dict
documents_init_post200_response_dict = documents_init_post200_response_instance.to_dict()
# create an instance of DocumentsInitPost200Response from a dict
documents_init_post200_response_from_dict = DocumentsInitPost200Response.from_dict(documents_init_post200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


