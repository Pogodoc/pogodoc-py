# TemplatesTemplateIdPutRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_info** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfo**](TemplatesTemplateIdPutRequestAllOfTemplateInfo.md) |  | 
**preview_ids** | [**TemplatesTemplateIdPutRequestAllOfPreviewIds**](TemplatesTemplateIdPutRequestAllOfPreviewIds.md) |  | 
**content_id** | **str** |  | 

## Example

```python
from openapi_client.models.templates_template_id_put_request import TemplatesTemplateIdPutRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TemplatesTemplateIdPutRequest from a JSON string
templates_template_id_put_request_instance = TemplatesTemplateIdPutRequest.from_json(json)
# print the JSON string representation of the object
print(TemplatesTemplateIdPutRequest.to_json())

# convert the object into a dict
templates_template_id_put_request_dict = templates_template_id_put_request_instance.to_dict()
# create an instance of TemplatesTemplateIdPutRequest from a dict
templates_template_id_put_request_from_dict = TemplatesTemplateIdPutRequest.from_dict(templates_template_id_put_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


