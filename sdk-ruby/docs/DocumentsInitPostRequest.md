# OpenapiClient::DocumentsInitPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  |  |
| **target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  |  |
| **template_id** | **String** |  | [optional] |
| **format_opts** | [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DocumentsInitPostRequest.new(
  data: null,
  type: null,
  target: null,
  template_id: null,
  format_opts: null
)
```

