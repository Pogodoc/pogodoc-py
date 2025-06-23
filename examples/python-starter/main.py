from fastapi import FastAPI
from pogodoc import PogodocClient, RenderConfig
from dotenv import load_dotenv
import os


load_dotenv()

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/generate_document")
async def generate_document():
    print("Generating document...")
    
    client = PogodocClient(
        token= os.getenv("TOKEN", ""),
        base_url= os.getenv("BASE_URL", "")
    )

    config =  RenderConfig(
        type="html",
        target="pdf",
    )
    
    response = client.generate_document(
        template_id="76c6a795-953b-4c54-84e8-2af3b307a2cd",
        data={
            "name": "Python",
            "email": "johndoe@example.com",
            "phone": "123-456-7890",
            "skills": ["JavaScript", "HTML", "CSS", "React", "Node.js"],
            "profile": "A highly motivated software developer with a passion for creating innovative solutions.",
            "education": [
                {
                    "years": "2011-2015",
                    "degree": "BSc in Computer Science",
                    "institution": "University of Example"
                }
            ],
            "experiences": [
                {
                    "years": "2018-2021",
                    "company": "Tech Solutions",
                    "position": "Software Engineer",
                    "description": "Developed and maintained web applications using JavaScript, HTML, and CSS."
                },
                {
                    "years": "2015-2018",
                    "company": "Web Corp",
                    "position": "Junior Developer",
                    "description": "Assisted in the development of web applications and collaborated with senior developers."
                }
            ]
        },
        render_config=config,
        should_wait_for_render_completion=True,
    )

    print(response)

    return {"message": "Generated"}