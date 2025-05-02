import PogodocClient from "./index";
import { join } from "path";
import fs, { createReadStream, statSync, readFileSync } from "fs";
import dotenv from "dotenv";

dotenv.config();

const length = statSync("../../../data/templates/React-Demo-App.zip").size;
const jsonData = readJsonFile("../../../data/json_data/react.json");

const template = createReadStream("../../../data/templates/React-Demo-App.zip");

function readJsonFile(filePath: string) {
  try {
    const jsonString = fs.readFileSync(filePath, "utf8");
    const data = JSON.parse(jsonString);

    return data;
  } catch (error) {
    console.error("Error reading the JSON file:", error);
  }
}

async function testSDK() {
  const client = new PogodocClient({
    token: process.env.POGODOC_API_TOKEN || "",
    gatewayURL: process.env.POGODOC_API_URL,
  });

  try {
    console.log("Starting SDK tests...");

    // Test saveTemplate
    const templatePath = "../../../data/templates/React-Demo-App.zip";
    const templateId = await client.saveTemplate({
      path: templatePath,
      categories: ["invoice"],
      title: "React-Demo-App",
      description: "A demo template for React",
      type: "html",
      sampleData: jsonData,
    });
    console.log("Created template ID:", templateId);

    // Test generateDocument
    const docResult = await client.generateDocument({
      templateId: templateId,
      data: jsonData,
      renderConfig: {
        type: "html",
        target: "pdf",
        shouldWaitForRenderCompletion: true,
      },
    });
    console.log("Generated document URL:", docResult.output?.data.url);

    // Test updateTemplate
    const updatedPath = "../../../data/templates/React-Demo-App.zip";
    const newContentId = await client.updateTemplate({
      path: updatedPath,
      templateId,
      categories: ["invoice"],
      title: "Updated Template",
      description: "An updated test template",
      type: "html",
      sampleData: jsonData,
    });
    console.log("Updated template content ID:", newContentId);

    // Test getTemplateIndexHtml
    const indexHtml = await client.getTemplateIndexHtml(newContentId);
    console.log("Template index HTML:", indexHtml);

    // Test uploadTemplateIndexHtml
    await client.uploadTemplateIndexHtml(templateId, indexHtml.templateIndex);
    console.log("Template index HTML uploaded successfully");

    // Test generateTemplatePresignedGetUrl
    const presignedUrl = await client.generateTemplatePresignedGetUrl(
      templateId
    );
    console.log("Template presigned URL:", presignedUrl);

    // Test renderDocumentPreview
    // TODO: We need/use renderDocumentPreview
    const documentPreview = await client.renderDocumentPreview(templateId, {
      type: "html",
      data: jsonData,
    });
    console.log("Document preview result:", documentPreview);

    // Test immediateRender
    const immediateResult = await client.immediateRender({
      type: "html",

      template: "<h1>Hello <%= name %></h1>",
      data: { name: "Andrej" },
      target: "pdf",
    });
    console.log("Immediate render result:", immediateResult);

    // Test deleteTemplate (cleanup)
    await client.deleteTemplate(templateId);
    console.log("Templates deleted successfully");

    // Test deleteApiToken
    // const tokenId = "test-token-id"; // Note: This is just an example, you'll need a valid token ID
    // await client.deleteApiToken(tokenId);
    // console.log("API token deleted successfully");

    console.log("All tests completed successfully!");
  } catch (error) {
    console.error("Test failed:", error);
  }
}

testSDK().catch(console.error);
