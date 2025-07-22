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
from pogodoc import PogodocClient, RenderConfig
from dotenv import load_dotenv
import os

load_dotenv()

def main():
    client = PogodocClient()

    sample_data = {
        "name": "John Doe",
        "email": "john.doe@example.com",
        "phone": "1234567890",
        "address": "123 Main St, Anytown, USA",
        "city": "Anytown",
    }

    response = client.generate_document(
        template_id = os.getenv("TEMPLATE_ID"),
        data = sample_data,
        render_config = RenderConfig(
            type = "html",
            target = "pdf",
        ),
    )

    print("Generated document url:\n", response.output.data.url)

if __name__ == "__main__":
    main()

```

### License

MIT License
