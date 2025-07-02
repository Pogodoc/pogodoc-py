# frozen_string_literal: true

require_relative "environment"
require_relative "types_export"
require_relative "requests"
require_relative "pogodoc_api_client/templates/client"
require_relative "pogodoc_api_client/documents/client"

module PogodocApiClient
  class Client
    # @return [PogodocApiClient::TemplatesClient]
    attr_reader :templates
    # @return [PogodocApiClient::DocumentsClient]
    attr_reader :documents

    # @param base_url [String]
    # @param environment [PogodocApiClient::Environment]
    # @param max_retries [Long] The number of times to retry a failed request, defaults to 2.
    # @param timeout_in_seconds [Long]
    # @param token [String]
    # @return [PogodocApiClient::Client]
    def initialize(token:, base_url: nil, environment: PogodocApiClient::Environment::DEFAULT, max_retries: nil,
                   timeout_in_seconds: nil)
      @request_client = PogodocApiClient::RequestClient.new(
        base_url: base_url,
        environment: environment,
        max_retries: max_retries,
        timeout_in_seconds: timeout_in_seconds,
        token: token
      )
      @templates = PogodocApiClient::TemplatesClient.new(request_client: @request_client)
      @documents = PogodocApiClient::DocumentsClient.new(request_client: @request_client)
    end
  end

  class AsyncClient
    # @return [PogodocApiClient::AsyncTemplatesClient]
    attr_reader :templates
    # @return [PogodocApiClient::AsyncDocumentsClient]
    attr_reader :documents

    # @param base_url [String]
    # @param environment [PogodocApiClient::Environment]
    # @param max_retries [Long] The number of times to retry a failed request, defaults to 2.
    # @param timeout_in_seconds [Long]
    # @param token [String]
    # @return [PogodocApiClient::AsyncClient]
    def initialize(token:, base_url: nil, environment: PogodocApiClient::Environment::DEFAULT, max_retries: nil,
                   timeout_in_seconds: nil)
      @async_request_client = PogodocApiClient::AsyncRequestClient.new(
        base_url: base_url,
        environment: environment,
        max_retries: max_retries,
        timeout_in_seconds: timeout_in_seconds,
        token: token
      )
      @templates = PogodocApiClient::AsyncTemplatesClient.new(request_client: @async_request_client)
      @documents = PogodocApiClient::AsyncDocumentsClient.new(request_client: @async_request_client)
    end
  end
end
