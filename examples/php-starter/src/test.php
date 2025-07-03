<?php

require __DIR__ . '/../vendor/autoload.php';

use PogodocSdk\PogodocApiClient;

$client = new PogodocApiClient();

// $sampleData = [
//     "name" => "John Doe",
//     "email" => "johndoe@example.com",
//     "phone" => "123-456-7890",
//     "skills" => ["JavaScript", "HTML", "CSS", "React", "Node.js"],
//     "profile" => "A highly motivated software developer with a passion for creating innovative solutions.",
//     "education" => [
//         [
//             "years" => "2011-2015",
//             "degree" => "BSc in Computer Science",
//             "institution" => "University of Example"
//         ]
//     ],
//     "experiences" => [
//         [
//             "years" => "2018-2021",
//             "company" => "Tech Solutions",
//             "position" => "Software Engineer",
//             "description" => "Developed and maintained web applications using JavaScript, HTML, and CSS."
//         ],
//         [
//             "years" => "2015-2018",
//             "company" => "Web Corp",
//             "position" => "Junior Developer",
//             "description" => "Assisted in the development of web applications and collaborated with senior developers."
//         ]
//     ]
// ]

$sampleData = [
    "subject" => "Welcome to Our Service!",
    "senderName" => "Jane Smith",
    "messageBody" => "Thank you for joining our platform. We are thrilled to have you with us. Please feel free to explore our features and let us know if you have any questions.",
    "contactEmail" => "support@example.com",
    "recipientName" => "John Doe"
];

$response = $client->generateDocument([
    'templateId' => "c35a914e-10ab-4d3b-adcf-cd04ffbb1659",
    'data' => $sampleData,
    'renderConfig' => [
        'type' => 'ejs',
        'target' => 'pdf',
        'formatOpts' => [
            'fromPage' => 1,
            'toPage' => 1,
        ],
    ],
    'shouldWaitForRenderCompletion' => true,
  ]);

print_r($response);