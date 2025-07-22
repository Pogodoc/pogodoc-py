## Pogodoc Python SDK

The Pogodoc Python SDK enables developers to seamlessly generate documents and manage templates using Pogodoc’s API.

### Installation

To install the Python SDK, just execute the following command

```bash
$ pip install pogodoc
```

### Setup

To use the SDK you will need an API key which can be obtained from the [Pogodoc Dashboard](https://app.pogodoc.com)

### Example

```py
from pogodoc import PogodocClient, SaveCreatedTemplateRequestTemplateInfo, UpdateTemplateRequestTemplateInfo
from pogodoc.utils import RenderConfig
from dotenv import load_dotenv

load_dotenv()

def main():
    client = PogodocClient()

    sampleData = {
        "name": "John Doe",
        "email": "john.doe@example.com",
        "phone": "1234567890",
        "address": "123 Main St, Anytown, USA",
        "city": "Anytown",
    }

    response = client.generate_document(
        template_id = template_id,
        data = sample_data,
        render_config = RenderConfig(
            type = "ejs",
            target = "pdf",
        ),
        should_wait_for_render_completion = True,
  )

    print("Generated document url:\n", response.output.data.url)

if __name__ == "__main__":
    main()

```

### License

MIT License
