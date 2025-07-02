package main

import (
	"context"
	"encoding/json"
	"fmt"

	pogodoc "github.com/Pogodoc/pogodoc-go"
	api "github.com/Pogodoc/pogodoc-go/sdk"
)

func main() {

	ctx := context.Background()
	client, err := pogodoc.PogodocClientInit()
	if err != nil {
		fmt.Println("Error: %s", err)
		return
	}
	
	var sampleData map[string]interface{}
	
	jsonData := `{
		"subject": "Welcome to Our Service!",
		"senderName": "Jane Smith",
		"messageBody": "Thank you for joining our platform. We are thrilled to have you with us. Please feel free to explore our features and let us know if you have any questions.",
		"contactEmail": "support@example.com",
		"recipientName": "John Doe"
	}`

	err = json.Unmarshal([]byte(jsonData), &sampleData)
	if err != nil {
		fmt.Println("Error unmarshalling JSON: %s", err)
		return
	}

	documentProps := pogodoc.GenerateDocumentProps{
		InitializeRenderJobRequest: api.InitializeRenderJobRequest{
			TemplateId: pogodoc.Pointer("c35a914e-10ab-4d3b-adcf-cd04ffbb1659"),
			Type:       api.InitializeRenderJobRequestTypeEjs,
			Target:     api.InitializeRenderJobRequestTargetPdf,
			Data:       sampleData,
		},
		StartRenderJobRequest: api.StartRenderJobRequest{
			ShouldWaitForRenderCompletion: pogodoc.Pointer(true),
		}}

	doc, err := client.GenerateDocument(documentProps, ctx)
	if err != nil {
		fmt.Println("Error: %s", err)
		return
	}
	fmt.Println(doc.Output.Data.Url)

}
