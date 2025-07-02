import { PogodocClient } from "@pogodoc/sdk";
import * as fs from "fs";
import * as dotenv from "dotenv";

dotenv.config();

const client = new PogodocClient();
async function render(target) {
  const response = await client.generateDocument({
    templateId: "c35a914e-10ab-4d3b-adcf-cd04ffbb1659",
    data: {
      subject: "Welcome to Our Service!",
      senderName: "Jane Smith",
      messageBody:
        "Thank you for joining our platform. We are thrilled to have you with us. Please feel free to explore our features and let us know if you have any questions.",
      contactEmail: "support@example.com",
      recipientName: "John Doe",
    },
    renderConfig: {
      type: "ejs",
      target: "pdf",
    },
    shouldWaitForRenderCompletion: true,
  });
  return response;
}
async function main() {
  console.log("Hi");
  console.time("render");
  const arr = new Array(1).fill(0).map(async () => {
    // const immediateRender = pogo.documents.startImmediateRender({
    //   template: "<%= name %> is a <%= breed %> cat.",
    //   data: { name: "Whiskers", breed: "Siamese" },
    //   type: "ejs",
    //   target: "pdf",
    // });
    // const png = render("png");
    const pdf = render("pdf");
    return Promise.all([pdf]);
  });

  const res = await Promise.all(arr);
  console.timeEnd("render");
  fs.writeFileSync("./out.json", JSON.stringify(res, null, 4));
}

main().then(console.log);

function readJsonFile(filePath) {
  try {
    const jsonString = fs.readFileSync(filePath, "utf8");
    const data = JSON.parse(jsonString);

    return data;
  } catch (error) {
    console.error("Error reading the JSON file:", error);
  }
}
