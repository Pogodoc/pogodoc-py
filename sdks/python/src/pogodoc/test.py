import json
import os
from .main import PogodocClient
from dotenv import load_dotenv
from utils import RenderConfig
from pogodoc.sdk.templates.types import SaveCreatedTemplateRequestTemplateInfo, UpdateTemplateRequestTemplateInfo
load_dotenv()

def readJson(path: str):
    with open(path, "r") as f:
        return json.load(f)
    
sampleData = readJson("../../data/json_data/react.json")
templatePath = "../../data/templates/React-Demo-App.zip"

def main():
    client = PogodocClient(token=os.getenv("POGODOC_API_TOKEN"), base_url=os.getenv("LAMBDA_BASE_URL"))

    templateId = client.save_template(
        path=templatePath, 
        template_info=SaveCreatedTemplateRequestTemplateInfo(
            title="Test Template",
            description="Test Description", 
            type="html",
            sample_data=sampleData, 
            categories=["invoice"]
        )
    )

    document = client.generate_document(template_id=templateId, data=sampleData,should_wait_for_render_completion=True, render_config=RenderConfig(type="html", target="pdf", should_wait_for_render_completion=True))
    print(document)

    templateHtml = client.templates.get_template_index_html(template_id=templateId)
    print(templateHtml)

    # update template
    contentId = client.update_template(template_id=templateId, path=templatePath, template_info=UpdateTemplateRequestTemplateInfo(title="Test Template", description="Test Description", type="html", sample_data=sampleData, categories=["invoice"]))
    print(contentId)

    presignedUrl = client.templates.generate_presigned_get_url(template_id=templateId)
    print(presignedUrl)

    immediateRender = client.documents.start_immediate_render(template="<h1>Hello <%= name %></h1>", start_immediate_render_request_data={"name": "Ferdzo"}, target="pdf", type="html")
    print(immediateRender)
    # delete template
    # client.templates.delete_template(template_id=templateId)



if __name__ == "__main__":
    main()

    