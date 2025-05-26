# frozen_string_literal: true

require_relative "../../requests"
require_relative "types/initialize_render_job_request_type"
require_relative "types/initialize_render_job_request_target"
require_relative "types/initialize_render_job_request_format_opts"
require_relative "types/initialize_render_job_response"
require_relative "types/start_render_job_response"
require_relative "types/generate_document_preview_request_type"
require_relative "types/generate_document_preview_request_format_opts"
require_relative "types/generate_document_preview_response"
require_relative "types/start_immediate_render_request_type"
require_relative "types/start_immediate_render_request_target"
require_relative "types/start_immediate_render_request_format_opts"
require_relative "types/start_immediate_render_response"
require_relative "types/get_job_status_response"
require "async"

module PogodocApiClient
  class DocumentsClient
    # @return [PogodocApiClient::RequestClient]
    attr_reader :request_client

    # @param request_client [PogodocApiClient::RequestClient]
    # @return [PogodocApiClient::DocumentsClient]
    def initialize(request_client:)
      @request_client = request_client
    end

    # Creates a new render job with a unique ID, sets up S3 storage for template and
    #  data files, and generates presigned upload URLs if needed. Requires subscription
    #  check.
    #
    # @param data [Hash{String => Object}]
    # @param type [PogodocApiClient::Documents::InitializeRenderJobRequestType]
    # @param target [PogodocApiClient::Documents::InitializeRenderJobRequestTarget]
    # @param template_id [String]
    # @param format_opts [Hash] Request of type PogodocApiClient::Documents::InitializeRenderJobRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Documents::InitializeRenderJobRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::InitializeRenderJobResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.initialize_render_job(type: DOCX, target: PDF)
    def initialize_render_job(type:, target:, data: nil, template_id: nil, format_opts: nil, request_options: nil)
      response = @request_client.conn.post do |req|
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
        req.body = {
          **(request_options&.additional_body_parameters || {}),
          data: data,
          type: type,
          target: target,
          templateId: template_id,
          formatOpts: format_opts
        }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/documents/init"
      end
      PogodocApiClient::Documents::InitializeRenderJobResponse.from_json(json_object: response.body)
    end

    # Takes a previously initialized job, updates its status to in-progress, and
    #  triggers the rendering process using Puppeteer. Can optionally wait for render
    #  completion.
    #
    # @param job_id [String]
    # @param should_wait_for_render_completion [Boolean]
    # @param upload_presigned_s_3_url [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::StartRenderJobResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.start_render_job(job_id: "jobId")
    def start_render_job(job_id:, should_wait_for_render_completion: nil, upload_presigned_s_3_url: nil,
                         request_options: nil)
      response = @request_client.conn.post do |req|
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
        req.body = {
          **(request_options&.additional_body_parameters || {}),
          shouldWaitForRenderCompletion: should_wait_for_render_completion,
          uploadPresignedS3Url: upload_presigned_s_3_url
        }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/documents/#{job_id}/render"
      end
      PogodocApiClient::Documents::StartRenderJobResponse.from_json(json_object: response.body)
    end

    # Generates a preview by creating a single-page render job, processing it
    #  immediately, and returning the output URL. Used for template visualization.
    #
    # @param template_id [String]
    # @param type [PogodocApiClient::Documents::GenerateDocumentPreviewRequestType]
    # @param data [Hash{String => Object}]
    # @param format_opts [Hash] Request of type PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::GenerateDocumentPreviewResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.generate_document_preview(
    #    template_id: "templateId",
    #    type: DOCX,
    #    data: { "key": "value" }
    #  )
    def generate_document_preview(template_id:, type:, data:, format_opts: nil, request_options: nil)
      response = @request_client.conn.post do |req|
        req.options.timeout = request_options.timeout_in_seconds unless request_options&.timeout_in_seconds.nil?
        req.headers["Authorization"] = request_options.token unless request_options&.token.nil?
        req.headers = {
      **(req.headers || {}),
      **@request_client.get_headers,
      **(request_options&.additional_headers || {})
        }.compact
        req.params = { **(request_options&.additional_query_parameters || {}), "templateId": template_id }.compact
        req.body = {
          **(request_options&.additional_body_parameters || {}),
          type: type,
          data: data,
          formatOpts: format_opts
        }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/documents/render-preview"
      end
      PogodocApiClient::Documents::GenerateDocumentPreviewResponse.from_json(json_object: response.body)
    end

    # Combines initialization and rendering in one step. Creates a job, uploads
    #  template/data directly, starts rendering, and adds the document to Strapi.
    #  Requires subscription check.
    #
    # @param start_immediate_render_request_data [Hash{String => Object}]
    # @param type [PogodocApiClient::Documents::StartImmediateRenderRequestType]
    # @param target [PogodocApiClient::Documents::StartImmediateRenderRequestTarget]
    # @param template_id [String]
    # @param format_opts [Hash] Request of type PogodocApiClient::Documents::StartImmediateRenderRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Documents::StartImmediateRenderRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param template [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::StartImmediateRenderResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.start_immediate_render(
    #    start_immediate_render_request_data: { "key": "value" },
    #    type: DOCX,
    #    target: PDF
    #  )
    def start_immediate_render(start_immediate_render_request_data:, type:, target:, template_id: nil,
                               format_opts: nil, template: nil, request_options: nil)
      response = @request_client.conn.post do |req|
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
        req.body = {
          **(request_options&.additional_body_parameters || {}),
          data: start_immediate_render_request_data,
          type: type,
          target: target,
          templateId: template_id,
          formatOpts: format_opts,
          template: template
        }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/documents/immediate-render"
      end
      PogodocApiClient::Documents::StartImmediateRenderResponse.from_json(json_object: response.body)
    end

    # Fetches detailed job information from S3 storage including job status, template
    #  ID, target format, and output details if available.
    #
    # @param job_id [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::GetJobStatusResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.get_job_status(job_id: "jobId")
    def get_job_status(job_id:, request_options: nil)
      response = @request_client.conn.get do |req|
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
        req.url "#{@request_client.get_url(request_options: request_options)}/jobs/#{job_id}"
      end
      PogodocApiClient::Documents::GetJobStatusResponse.from_json(json_object: response.body)
    end
  end

  class AsyncDocumentsClient
    # @return [PogodocApiClient::AsyncRequestClient]
    attr_reader :request_client

    # @param request_client [PogodocApiClient::AsyncRequestClient]
    # @return [PogodocApiClient::AsyncDocumentsClient]
    def initialize(request_client:)
      @request_client = request_client
    end

    # Creates a new render job with a unique ID, sets up S3 storage for template and
    #  data files, and generates presigned upload URLs if needed. Requires subscription
    #  check.
    #
    # @param data [Hash{String => Object}]
    # @param type [PogodocApiClient::Documents::InitializeRenderJobRequestType]
    # @param target [PogodocApiClient::Documents::InitializeRenderJobRequestTarget]
    # @param template_id [String]
    # @param format_opts [Hash] Request of type PogodocApiClient::Documents::InitializeRenderJobRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Documents::InitializeRenderJobRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::InitializeRenderJobResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.initialize_render_job(type: DOCX, target: PDF)
    def initialize_render_job(type:, target:, data: nil, template_id: nil, format_opts: nil, request_options: nil)
      Async do
        response = @request_client.conn.post do |req|
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
          req.body = {
            **(request_options&.additional_body_parameters || {}),
            data: data,
            type: type,
            target: target,
            templateId: template_id,
            formatOpts: format_opts
          }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/documents/init"
        end
        PogodocApiClient::Documents::InitializeRenderJobResponse.from_json(json_object: response.body)
      end
    end

    # Takes a previously initialized job, updates its status to in-progress, and
    #  triggers the rendering process using Puppeteer. Can optionally wait for render
    #  completion.
    #
    # @param job_id [String]
    # @param should_wait_for_render_completion [Boolean]
    # @param upload_presigned_s_3_url [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::StartRenderJobResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.start_render_job(job_id: "jobId")
    def start_render_job(job_id:, should_wait_for_render_completion: nil, upload_presigned_s_3_url: nil,
                         request_options: nil)
      Async do
        response = @request_client.conn.post do |req|
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
          req.body = {
            **(request_options&.additional_body_parameters || {}),
            shouldWaitForRenderCompletion: should_wait_for_render_completion,
            uploadPresignedS3Url: upload_presigned_s_3_url
          }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/documents/#{job_id}/render"
        end
        PogodocApiClient::Documents::StartRenderJobResponse.from_json(json_object: response.body)
      end
    end

    # Generates a preview by creating a single-page render job, processing it
    #  immediately, and returning the output URL. Used for template visualization.
    #
    # @param template_id [String]
    # @param type [PogodocApiClient::Documents::GenerateDocumentPreviewRequestType]
    # @param data [Hash{String => Object}]
    # @param format_opts [Hash] Request of type PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::GenerateDocumentPreviewResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.generate_document_preview(
    #    template_id: "templateId",
    #    type: DOCX,
    #    data: { "key": "value" }
    #  )
    def generate_document_preview(template_id:, type:, data:, format_opts: nil, request_options: nil)
      Async do
        response = @request_client.conn.post do |req|
          req.options.timeout = request_options.timeout_in_seconds unless request_options&.timeout_in_seconds.nil?
          req.headers["Authorization"] = request_options.token unless request_options&.token.nil?
          req.headers = {
        **(req.headers || {}),
        **@request_client.get_headers,
        **(request_options&.additional_headers || {})
          }.compact
          req.params = { **(request_options&.additional_query_parameters || {}), "templateId": template_id }.compact
          req.body = {
            **(request_options&.additional_body_parameters || {}),
            type: type,
            data: data,
            formatOpts: format_opts
          }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/documents/render-preview"
        end
        PogodocApiClient::Documents::GenerateDocumentPreviewResponse.from_json(json_object: response.body)
      end
    end

    # Combines initialization and rendering in one step. Creates a job, uploads
    #  template/data directly, starts rendering, and adds the document to Strapi.
    #  Requires subscription check.
    #
    # @param start_immediate_render_request_data [Hash{String => Object}]
    # @param type [PogodocApiClient::Documents::StartImmediateRenderRequestType]
    # @param target [PogodocApiClient::Documents::StartImmediateRenderRequestTarget]
    # @param template_id [String]
    # @param format_opts [Hash] Request of type PogodocApiClient::Documents::StartImmediateRenderRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Documents::StartImmediateRenderRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param template [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::StartImmediateRenderResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.start_immediate_render(
    #    start_immediate_render_request_data: { "key": "value" },
    #    type: DOCX,
    #    target: PDF
    #  )
    def start_immediate_render(start_immediate_render_request_data:, type:, target:, template_id: nil,
                               format_opts: nil, template: nil, request_options: nil)
      Async do
        response = @request_client.conn.post do |req|
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
          req.body = {
            **(request_options&.additional_body_parameters || {}),
            data: start_immediate_render_request_data,
            type: type,
            target: target,
            templateId: template_id,
            formatOpts: format_opts,
            template: template
          }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/documents/immediate-render"
        end
        PogodocApiClient::Documents::StartImmediateRenderResponse.from_json(json_object: response.body)
      end
    end

    # Fetches detailed job information from S3 storage including job status, template
    #  ID, target format, and output details if available.
    #
    # @param job_id [String]
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Documents::GetJobStatusResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.documents.get_job_status(job_id: "jobId")
    def get_job_status(job_id:, request_options: nil)
      Async do
        response = @request_client.conn.get do |req|
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
          req.url "#{@request_client.get_url(request_options: request_options)}/jobs/#{job_id}"
        end
        PogodocApiClient::Documents::GetJobStatusResponse.from_json(json_object: response.body)
      end
    end
  end
end
