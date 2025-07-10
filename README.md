## Pogodoc Python SDK

The Pogodoc Python SDK enables developers to seamlessly generate documents and manage templates using Pogodoc’s API.

### Installation

To install the Python SDK, just execute the following command

```bash
$ pip install pogodoc
```

### Setup

To use the SDK you will need an API key which can be obtained from the [Pogodoc Dashboard](https://pogodoc.com)

### Example

```py
from pogodoc import PogodocClient
from pogodoc.utils import RenderConfig
from pogodoc.client.templates.types import SaveCreatedTemplateRequestTemplateInfo, UpdateTemplateRequestTemplateInfo
from dotenv import load_dotenv
import json


load_dotenv()

def readJson(path: str):
    with open(path, "r") as f:
        return json.load(f)

sampleData = readJson("../../data/json_data/react.json")
templatePath = "../../data/templates/React-Demo-App.zip"

def main():
    client = PogodocClient()

    templateId = client.save_template(
        path = templatePath,
        template_info = SaveCreatedTemplateRequestTemplateInfo(
            title = "Invoice",
            description = "Invoice description",
            type = "react",
            sample_data = sampleData,
            categories = ["invoice"]
        )
    )
    print("Created template id:", templateId)

    client.update_template(
        template_id=templateId,
        path=templatePath,
        template_info=UpdateTemplateRequestTemplateInfo(
            title="Invoice Updated",
            description="Description updated",
            type="react",
            sample_data=sampleData,
            categories=["invoice"]
        )
    )

    print("Template updated successfully")

    response = client.generate_document(
        template_id = templateId,
        data = sampleData,
        render_config = RenderConfig(
            type = "resct",
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

```ts
import { PogodocClient } from "@pogodoc/sdk";
import * as fs from "fs";
import * as dotenv from "dotenv";

dotenv.config();

async function main() {
  const client = new PogodocClient();

  const sampleData = readJsonFile("../../data/json_data/react.json");
  const templatePath = "../../data/templates/React-Demo-App.zip";

  const templateId = await client.saveTemplate({
    path: templatePath,
    title: "Invoice",
    description: "Invoice description",
    sampleData: sampleData,
    type: "react",
    categories: ["invoice"],
  });
  console.log("Created template id:", templateId);

  await client.updateTemplate({
    path: templatePath,
    templateId: templateId,
    title: "Invoice Updated",
    description: "Description updated",
    type: "react",
    categories: ["invoice"],
    sampleData: sampleData,
  });
  console.log("Template updated successfully");

  const response = await client.generateDocument({
    templateId: templateId,
    data: sampleData,
    renderConfig: {
      type: "react",
      target: "pdf",
    },
    shouldWaitForRenderCompletion: true,
  });

  console.log("Generated document url: \n", response.output?.data.url);
}

main().then(console.log);

function readJsonFile(filePath: string) {
  try {
    const jsonString = fs.readFileSync(filePath, "utf8");
    const data = JSON.parse(jsonString);

    return data;
  } catch (error) {
    console.error("Error reading the JSON file:", error);
  }
}
```
