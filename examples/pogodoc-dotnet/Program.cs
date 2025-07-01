using System;
using System.Text.Json;
using Pogodoc.SDK;
using Pogodoc.SDK.Types;
using PogodocApi;
using DotNetEnv;

class Program
{
    static async Task Main(string[] args)
    {
        Env.Load();

        var client = new PogodocSDK();

        var jsonString = File.ReadAllText("sampleData.json");
        var sampleData = JsonSerializer.Deserialize<Dictionary<string, object?>>(jsonString);

        var props = new GenerateDocumentProps
        {
            RenderConfig = new InitializeRenderJobRequest
            {
                TemplateId = "76c6a795-953b-4c54-84e8-2af3b307a2cd",
                Type = InitializeRenderJobRequestType.Html,
                Target = InitializeRenderJobRequestTarget.Pdf,
                Data = sampleData,
                FormatOpts = new InitializeRenderJobRequestFormatOpts { FromPage = 1, ToPage = 2 },
            },
            ShouldWaitForRenderCompletion = true,
        };

        var response = await client.GenerateDocumentAsync(props);

        Console.WriteLine($"URL, {response?.Output?.Data.Url}");

    }
}
