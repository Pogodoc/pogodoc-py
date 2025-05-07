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

    client.save_template(path=templatePath, title="Test Template", description="Test Description", type="pdf", data=sampleData)

if __name__ == "__main__":
    main()