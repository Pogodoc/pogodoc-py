# DocumentsImmediateRenderPostRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, object]** |  | 
**type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  | 
**template_id** | **str** |  | [optional] 
**format_opts** | [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md) |  | [optional] 
**template** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.documents_immediate_render_post_request import DocumentsImmediateRenderPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentsImmediateRenderPostRequest from a JSON string
documents_immediate_render_post_request_instance = DocumentsImmediateRenderPostRequest.from_json(json)
# print the JSON string representation of the object
print(DocumentsImmediateRenderPostRequest.to_json())

# convert the object into a dict
documents_immediate_render_post_request_dict = documents_immediate_render_post_request_instance.to_dict()
# create an instance of DocumentsImmediateRenderPostRequest from a dict
documents_immediate_render_post_request_from_dict = DocumentsImmediateRenderPostRequest.from_dict(documents_immediate_render_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


