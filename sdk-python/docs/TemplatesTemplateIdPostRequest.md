# TemplatesTemplateIdPostRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_info** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfo**](TemplatesTemplateIdPutRequestAllOfTemplateInfo.md) |  | 
**preview_ids** | [**TemplatesTemplateIdPutRequestAllOfPreviewIds**](TemplatesTemplateIdPutRequestAllOfPreviewIds.md) |  | 

## Example

```python
from openapi_client.models.templates_template_id_post_request import TemplatesTemplateIdPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TemplatesTemplateIdPostRequest from a JSON string
templates_template_id_post_request_instance = TemplatesTemplateIdPostRequest.from_json(json)
# print the JSON string representation of the object
print(TemplatesTemplateIdPostRequest.to_json())

# convert the object into a dict
templates_template_id_post_request_dict = templates_template_id_post_request_instance.to_dict()
# create an instance of TemplatesTemplateIdPostRequest from a dict
templates_template_id_post_request_from_dict = TemplatesTemplateIdPostRequest.from_dict(templates_template_id_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


