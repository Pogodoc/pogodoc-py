# OpenapiClient::DocumentsImmediateRenderPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Hash&lt;String, Object&gt;** |  |  |
| **type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  |  |
| **target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  |  |
| **template_id** | **String** |  | [optional] |
| **format_opts** | [**TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts**](TemplatesTemplateIdRenderPreviewsPostRequestFormatOpts.md) |  | [optional] |
| **template** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DocumentsImmediateRenderPostRequest.new(
  data: null,
  type: null,
  target: null,
  template_id: null,
  format_opts: null,
  template: null
)
```

