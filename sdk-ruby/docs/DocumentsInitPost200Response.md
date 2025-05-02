# OpenapiClient::DocumentsInitPost200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |
| **target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  |  |
| **presigned_data_upload_url** | **String** |  |  |
| **presigned_template_upload_url** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DocumentsInitPost200Response.new(
  job_id: null,
  target: null,
  presigned_data_upload_url: null,
  presigned_template_upload_url: null
)
```

