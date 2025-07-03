from fastapi import FastAPI
from pogodoc.sdk import PogodocClient
from pogodoc.utils import RenderConfig
from dotenv import load_dotenv
import os


load_dotenv()

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/generate-document")
async def generate_document():
    print("Generating document...")
    
    client = PogodocClient(
        token = os.getenv("POGODOC_API_TOKEN"),
        base_url = os.getenv("POGODOC_BASE_URL")
    )
    
    response = client.generate_document(
        template_id = "c35a914e-10ab-4d3b-adcf-cd04ffbb1659",
        data = {
            "subject": "Welcome to Our Service!",
            "senderName": "Jane Smith",
            "messageBody": "Thank you for joining our platform. We are thrilled to have you with us. Please feel free to explore our features and let us know if you have any questions.",
            "contactEmail": "support@example.com",
            "recipientName": "John Doe"
        },
        render_config = RenderConfig(
            type = "ejs",
            target = "pdf",
        ),
        should_wait_for_render_completion = True,
  )

    print(response)

    return {"message": "Generated"}