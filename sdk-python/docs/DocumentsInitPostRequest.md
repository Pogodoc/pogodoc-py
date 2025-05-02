# DocumentsInitPostRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, object]** |  | [optional] 
**type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**template_id** | **str** |  | [optional] 
**format_opts** | [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md) |  | [optional] 

## Example

```python
from openapi_client.models.documents_init_post_request import DocumentsInitPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentsInitPostRequest from a JSON string
documents_init_post_request_instance = DocumentsInitPostRequest.from_json(json)
# print the JSON string representation of the object
print(DocumentsInitPostRequest.to_json())

# convert the object into a dict
documents_init_post_request_dict = documents_init_post_request_instance.to_dict()
# create an instance of DocumentsInitPostRequest from a dict
documents_init_post_request_from_dict = DocumentsInitPostRequest.from_dict(documents_init_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


