# frozen_string_literal: true

require_relative "../../requests"
require "async"

module PogodocApiClient
  class TokensClient
    # @return [PogodocApiClient::RequestClient]
    attr_reader :request_client

    # @param request_client [PogodocApiClient::RequestClient]
    # @return [PogodocApiClient::TokensClient]
    def initialize(request_client:)
      @request_client = request_client
    end

    # Invalidates an API token by storing it in the deleted tokens S3 bucket,
    #  preventing future use of the token for authentication.
    #
    # @param token_id [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.tokens.delete_api_token(token_id: "tokenId")
    def delete_api_token(token_id:, request_options: nil)
      @request_client.conn.delete do |req|
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
        req.url "#{@request_client.get_url(request_options: request_options)}/api-tokens/#{token_id}"
      end
    end
  end

  class AsyncTokensClient
    # @return [PogodocApiClient::AsyncRequestClient]
    attr_reader :request_client

    # @param request_client [PogodocApiClient::AsyncRequestClient]
    # @return [PogodocApiClient::AsyncTokensClient]
    def initialize(request_client:)
      @request_client = request_client
    end

    # Invalidates an API token by storing it in the deleted tokens S3 bucket,
    #  preventing future use of the token for authentication.
    #
    # @param token_id [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.tokens.delete_api_token(token_id: "tokenId")
    def delete_api_token(token_id:, request_options: nil)
      Async do
        @request_client.conn.delete do |req|
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
          req.url "#{@request_client.get_url(request_options: request_options)}/api-tokens/#{token_id}"
        end
      end
    end
  end
end
