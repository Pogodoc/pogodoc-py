import { PogodocClient } from "@pogodoc/sdk";
import * as fs from "fs";
import * as dotenv from "dotenv";

dotenv.config();

const pogo = new PogodocClient({
  token: process.env.POGODOC_TOKEN,
});

async function render(target) {
  const res = await pogo.generateDocument({
    templateId: "1b9b4f55-408d-4d9b-98d2-6d701f2795c0",
    renderConfig: {
      target: target,
      type: "ejs",
      formatOpts: {
        format: "tabloid",
      },
    },
    shouldWaitForRenderCompletion: true,
    data: {
      name: "John Doe",
      email: "johndoe@example.com",
      phone: "+1 234 567 890",
      skills: ["JavaScript", "HTML/CSS", "Node.js", "React", "Git"],
      profile:
        "Experienced software developer with a strong background in developing award-winning applications for a diverse clientele.",
      location: "New York, NY",
      education: [
        {
          years: "2008-2012",
          degree: "Bachelor of Science in Computer Science",
          description:
            "Graduated with honors, focusing on software engineering and computer systems.",
          institution: "University of Technology",
        },
      ],
      experiences: [
        {
          years: "2015-2020",
          company: "Tech Solutions Inc.",
          position: "Senior Developer",
          description:
            "Led a team of developers to create innovative software solutions that increased company revenue by 20%.",
        },
        {
          years: "2012-2015",
          company: "Innovatech",
          position: "Software Engineer",
          description:
            "Developed numerous applications that were praised for their user-friendly design and functionality.",
        },
      ],
    },
  });

  return res;
}

async function main() {
  console.log("Hi");
  console.time("render");
  const arr = new Array(10).fill(0).map(async () => {
    const png = render("png");
    const pdf = render("pdf");
    return Promise.all([pdf, png]);
  });

  const res = await Promise.all(arr);
  console.timeEnd("render");
  fs.writeFileSync("./out.json", JSON.stringify(res, null, 4));
}

main().then(console.log);
