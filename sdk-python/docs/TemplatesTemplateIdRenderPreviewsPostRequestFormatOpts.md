# TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_page** | **float** |  | [optional] 
**to_page** | **float** |  | [optional] 
**format** | [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOptsAllOfFormat**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOptsAllOfFormat.md) |  | [optional] 
**wait_for_selector** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.templates_template_id_render_previews_post_request_format_opts import TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts

# TODO update the JSON string below
json = "{}"
# create an instance of TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts from a JSON string
templates_template_id_render_previews_post_request_format_opts_instance = TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.from_json(json)
# print the JSON string representation of the object
print(TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.to_json())

# convert the object into a dict
templates_template_id_render_previews_post_request_format_opts_dict = templates_template_id_render_previews_post_request_format_opts_instance.to_dict()
# create an instance of TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts from a dict
templates_template_id_render_previews_post_request_format_opts_from_dict = TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.from_dict(templates_template_id_render_previews_post_request_format_opts_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


