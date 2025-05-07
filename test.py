import asyncio
import json
import os
from main import PogodocClient
from dotenv import load_dotenv

load_dotenv()

def readJson(path: str):
    with open(path, "r") as f:
        return json.load(f)
    
sampleData = readJson("../../data/json_data/react.json")
templatePath = "../../data/templates/React-Demo-App.zip"

def main():
    client = PogodocClient(token=os.getenv("POGODOC_API_TOKEN"), base_url=os.getenv("LAMBDA_BASE_URL"))

    templateId = client.save_template(path=templatePath, title="Test Template", description="Test Description", type="html", data=sampleData, categories=["invoice"], )

    print(templateId)

    document = client.generate_document(template_id=templateId, data=sampleData, render_type="html", render_target="pdf", should_wait_for_render_completion=True)
    print(document)

    # update template
    client.update_template(template_id=templateId, path=templatePath, title="Test Template", description="Test Description", type="html", data=sampleData, categories=["invoice"], )

    # delete template
    client.templates.delete_template(template_id=templateId)

if __name__ == "__main__":
    main()