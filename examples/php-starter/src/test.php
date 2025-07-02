<?php

require __DIR__ . '/../vendor/autoload.php';

use PogodocSdk\PogodocApiClient;

$client = new PogodocApiClient();

$sampleData = [
    "name" => "John Doe",
    "email" => "johndoe@example.com",
    "phone" => "123-456-7890",
    "skills" => ["JavaScript", "HTML", "CSS", "React", "Node.js"],
    "profile" => "A highly motivated software developer with a passion for creating innovative solutions.",
    "education" => [
        [
            "years" => "2011-2015",
            "degree" => "BSc in Computer Science",
            "institution" => "University of Example"
        ]
    ],
    "experiences" => [
        [
            "years" => "2018-2021",
            "company" => "Tech Solutions",
            "position" => "Software Engineer",
            "description" => "Developed and maintained web applications using JavaScript, HTML, and CSS."
        ],
        [
            "years" => "2015-2018",
            "company" => "Web Corp",
            "position" => "Junior Developer",
            "description" => "Assisted in the development of web applications and collaborated with senior developers."
        ]
    ]
];

$sampleData2 = [ "name"=> "Martin"];

$response = $client->generateDocument([
    'template' => "<h1>Hello <%= name %></h1>",
    'data' => $sampleData2,
    'renderConfig' => [
        'type' => 'html',
        'target' => 'pdf',
        'formatOpts' => [
            'fromPage' => 1,
            'toPage' => 1,
        ],
    ],
    'shouldWaitForRenderCompletion' => true,
]);

print_r($response);