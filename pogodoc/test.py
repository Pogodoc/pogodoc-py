import json
import os
from pogodoc import PogodocClient, RenderConfig, UpdateTemplateRequestTemplateInfo, SaveCreatedTemplateRequestTemplateInfo
from dotenv import load_dotenv

load_dotenv()

def readJson(path: str):
    with open(path, "r") as f:
        return json.load(f)
    
sampleData = readJson("../../data/json_data/react.json")
templatePath = "../../data/templates/React-Demo-App.zip"

def main():
    client = PogodocClient(token=os.getenv("POGODOC_API_TOKEN"), base_url=os.getenv("LAMBDA_BASE_URL"))

    sampleData = {
        "name": "John Doe",
        "email": "john.doe@example.com",
        "phone": "1234567890",
        "address": "123 Main St, Anytown, USA",
        "city": "Anytown",
    }

    template_id = os.getenv("TEMPLATE_ID")

    immediate_document = client.generate_document_immediate(template_id=template_id, data=sampleData, render_config=RenderConfig(type="html", target="pdf"))
    print("immediateDocument:", immediate_document)

    document = client.generate_document(data=sampleData, render_config=RenderConfig(type="html", target="pdf"), template_id=template_id)
    print("document:", document)

    start_document = client.start_generate_document(data=sampleData, render_config=RenderConfig(type="html", target="pdf"), template_id=template_id)
    print("startDocument:", start_document)

    job_status = client.poll_for_job_completion(start_document.job_id)
    print("jobStatus:", job_status)


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

    