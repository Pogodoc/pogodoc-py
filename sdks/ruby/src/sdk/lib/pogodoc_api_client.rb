# frozen_string_literal: true

require_relative "environment"
require_relative "types_export"
require_relative "requests"
require_relative "pogodoc_api_client/templates/client"
require_relative "pogodoc_api_client/documents/client"
require_relative "pogodoc_api_client/tokens/client"

module PogodocApiClient
  class Client
    # @return [PogodocApiClient::TemplatesClient]
    attr_reader :templates
    # @return [PogodocApiClient::DocumentsClient]
    attr_reader :documents
    # @return [PogodocApiClient::TokensClient]
    attr_reader :tokens

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
      @tokens = PogodocApiClient::TokensClient.new(request_client: @request_client)
    end

    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.post_boshe
    def post_boshe(request_options: nil)
      @request_client.conn.post do |req|
        req.options.timeout = request_options.timeout_in_seconds unless request_options&.timeout_in_seconds.nil?
        req.headers["Authorization"] = request_options.token unless request_options&.token.nil?
        req.headers = {
      **(req.headers || {}),
      **@request_client.get_headers,
      **(request_options&.additional_headers || {})
        }.compact
        unless request_options.nil? || request_options&.additional_query_parameters.nil?
          req.params = { **(request_options&.additional_query_parameters || {}) }.compact
        end
        unless request_options.nil? || request_options&.additional_body_parameters.nil?
          req.body = { **(request_options&.additional_body_parameters || {}) }.compact
        end
        req.url "#{@request_client.get_url(request_options: request_options)}/boshe"
      end
    end
  end

  class AsyncClient
    # @return [PogodocApiClient::AsyncTemplatesClient]
    attr_reader :templates
    # @return [PogodocApiClient::AsyncDocumentsClient]
    attr_reader :documents
    # @return [PogodocApiClient::AsyncTokensClient]
    attr_reader :tokens

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
      @tokens = PogodocApiClient::AsyncTokensClient.new(request_client: @async_request_client)
    end

    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.post_boshe
    def post_boshe(request_options: nil)
      @async_request_client.conn.post do |req|
        req.options.timeout = request_options.timeout_in_seconds unless request_options&.timeout_in_seconds.nil?
        req.headers["Authorization"] = request_options.token unless request_options&.token.nil?
        req.headers = {
      **(req.headers || {}),
      **@async_request_client.get_headers,
      **(request_options&.additional_headers || {})
        }.compact
        unless request_options.nil? || request_options&.additional_query_parameters.nil?
          req.params = { **(request_options&.additional_query_parameters || {}) }.compact
        end
        unless request_options.nil? || request_options&.additional_body_parameters.nil?
          req.body = { **(request_options&.additional_body_parameters || {}) }.compact
        end
        req.url "#{@async_request_client.get_url(request_options: request_options)}/boshe"
      end
    end
  end
end
