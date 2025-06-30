import { PogodocClient } from "@pogodoc/sdk";
import * as fs from "fs";
import * as dotenv from "dotenv";

dotenv.config();

const pogo = new PogodocClient({
  token: process.env.POGODOC_TOKEN,
});

async function render(target) {
  const res = await pogo.generateDocument({
    templateId: "44286b27-d5b7-431e-9e2c-d88b704b19b9",
    renderConfig: {
      target: target,
      type: "ejs",
      formatOpts: {
        format: "tabloid",
      },
    },
    shouldWaitForRenderCompletion: true,
    data: {
      name: "Whiskers",
      breed: "Siamese",
      age: 6,
      about:
        "I am a playful and curious kitten who loves to explore and nap in sunny spots.",
      skills: ["Purring", "Chasing laser pointers", "Climbing curtains"],
      toys: ["Feather wand", "Catnip mouse", "Scratching post"],
    },
  });
  return res;
}
async function main() {
  console.log("Hi");
  console.time("render");
  const arr = new Array(5).fill(0).map(async () => {
    const immediateRender = pogo.documents.startImmediateRender({
      template: fs.readFileSync("../../data/templates/invoice.ejs").toString(),
      data: readJsonFile("../../data/json_data/invoice_data_6mb.json"),
      type: "ejs",
      target: "pdf",
    });
    // const png = render("png");
    // const pdf = render("pdf");
    return Promise.all([immediateRender]);
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
