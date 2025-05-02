# TemplatesTemplateIdPutRequestAllOfTemplateInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | 
**description** | **str** |  | 
**type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**sample_data** | **Dict[str, object]** |  | 
**source_code** | **str** |  | [optional] 
**categories** | [**List[TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner]**](TemplatesTemplateIdPutRequestAllOfTemplateInfoCategoriesInner.md) |  | 

## Example

```python
from openapi_client.models.templates_template_id_put_request_all_of_template_info import TemplatesTemplateIdPutRequestAllOfTemplateInfo

# TODO update the JSON string below
json = "{}"
# create an instance of TemplatesTemplateIdPutRequestAllOfTemplateInfo from a JSON string
templates_template_id_put_request_all_of_template_info_instance = TemplatesTemplateIdPutRequestAllOfTemplateInfo.from_json(json)
# print the JSON string representation of the object
print(TemplatesTemplateIdPutRequestAllOfTemplateInfo.to_json())

# convert the object into a dict
templates_template_id_put_request_all_of_template_info_dict = templates_template_id_put_request_all_of_template_info_instance.to_dict()
# create an instance of TemplatesTemplateIdPutRequestAllOfTemplateInfo from a dict
templates_template_id_put_request_all_of_template_info_from_dict = TemplatesTemplateIdPutRequestAllOfTemplateInfo.from_dict(templates_template_id_put_request_all_of_template_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


