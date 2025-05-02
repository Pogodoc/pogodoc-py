# OpenapiClient::JobsJobIdGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**TemplatesTemplateIdPutRequestAllOfTemplateInfoType**](TemplatesTemplateIdPutRequestAllOfTemplateInfoType.md) |  |  |
| **job_id** | **String** |  |  |
| **target** | [**DocumentsInitPostRequestAllOfTarget**](DocumentsInitPostRequestAllOfTarget.md) |  |  |
| **output** | [**JobsJobIdGet200ResponseOutput**](JobsJobIdGet200ResponseOutput.md) |  | [optional] |
| **success** | **Boolean** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::JobsJobIdGet200Response.new(
  type: null,
  job_id: null,
  target: null,
  output: null,
  success: null,
  status: null
)
```

