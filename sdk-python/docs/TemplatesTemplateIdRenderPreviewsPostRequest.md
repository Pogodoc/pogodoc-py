# TemplatesTemplateIdRenderPreviewsPostRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  | 
**data** | **Dict[str, object]** |  | 
**format_opts** | [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md) |  | [optional] 

## Example

```python
from openapi_client.models.templates_template_id_render_previews_post_request import TemplatesTemplateIdRenderPreviewsPostRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TemplatesTemplateIdRenderPreviewsPostRequest from a JSON string
templates_template_id_render_previews_post_request_instance = TemplatesTemplateIdRenderPreviewsPostRequest.from_json(json)
# print the JSON string representation of the object
print(TemplatesTemplateIdRenderPreviewsPostRequest.to_json())

# convert the object into a dict
templates_template_id_render_previews_post_request_dict = templates_template_id_render_previews_post_request_instance.to_dict()
# create an instance of TemplatesTemplateIdRenderPreviewsPostRequest from a dict
templates_template_id_render_previews_post_request_from_dict = TemplatesTemplateIdRenderPreviewsPostRequest.from_dict(templates_template_id_render_previews_post_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


