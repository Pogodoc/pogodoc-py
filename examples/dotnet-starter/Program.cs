using System;
using System.Text.Json;
using DotNetEnv;
using Pogodoc.SDK;
using Pogodoc.SDK.Types;
using PogodocApi;

class Program
{
    static async Task Main(string[] args)
    {
        var client = new PogodocSDK();

        var response = await client.GenerateDocumentAsync(
            new GenerateDocumentProps
            {
                RenderConfig = new InitializeRenderJobRequest
                {
                    TemplateId = "c35a914e-10ab-4d3b-adcf-cd04ffbb1659",
                    Type = InitializeRenderJobRequestType.Ejs,
                    Target = InitializeRenderJobRequestTarget.Pdf,
                    Data = new Dictionary<string, object?>
                    {
                        { "subject", "Welcome to Our Service!" },
                        { "senderName", "Jane Smith" },
                        {
                            "messageBody",
                            "Thank you for joining our platform. We are thrilled to have you with us. Please feel free to explore our features and let us know if you have any questions."
                        },
                        { "contactEmail", "support@example.com" },
                        { "recipientName", "John Doe" },
                    },
                },
                ShouldWaitForRenderCompletion = true,
            }
        );

        Console.WriteLine($"URL, {response?.Output?.Data.Url}");
    }
}
