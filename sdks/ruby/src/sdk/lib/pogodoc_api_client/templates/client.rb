# frozen_string_literal: true

require_relative "../../requests"
require_relative "types/initialize_template_creation_response"
require_relative "types/save_created_template_request_template_info"
require_relative "types/save_created_template_request_preview_ids"
require_relative "types/update_template_request_template_info"
require_relative "types/update_template_request_preview_ids"
require_relative "types/update_template_response"
require_relative "types/delete_template_response"
require_relative "types/generate_template_previews_request_type"
require_relative "types/generate_template_previews_request_format_opts"
require_relative "types/generate_template_previews_response"
require_relative "types/generate_presigned_get_url_response"
require_relative "types/get_template_index_html_response"
require_relative "types/clone_template_response"
require "async"

module PogodocApiClient
  class TemplatesClient
    # @return [PogodocApiClient::RequestClient]
    attr_reader :request_client

    # @param request_client [PogodocApiClient::RequestClient]
    # @return [PogodocApiClient::TemplatesClient]
    def initialize(request_client:)
      @request_client = request_client
    end

    # Initializes template creation by generating a unique ID and providing a
    #  presigned URL for template ZIP upload. Sets unfinished tag for tracking
    #  incomplete templates.
    #
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::InitializeTemplateCreationResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.initialize_template_creation
    def initialize_template_creation(request_options: nil)
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
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/init"
      end
      PogodocApiClient::Templates::InitializeTemplateCreationResponse.from_json(json_object: response.body)
    end

    # Finalizes template creation by saving template info to Strapi, copying preview
    #  files to permanent storage, and creating template index. Removes unfinished tag
    #  upon completion.
    #
    # @param template_id [String]
    # @param template_info [Hash] Request of type PogodocApiClient::Templates::SaveCreatedTemplateRequestTemplateInfo, as a Hash
    #   * :title (String)
    #   * :description (String)
    #   * :type (PogodocApiClient::Templates::SaveCreatedTemplateRequestTemplateInfoType)
    #   * :sample_data (Hash{String => Object})
    #   * :source_code (String)
    #   * :categories (Array<PogodocApiClient::Templates::SaveCreatedTemplateRequestTemplateInfoCategoriesItem>)
    # @param preview_ids [Hash] Request of type PogodocApiClient::Templates::SaveCreatedTemplateRequestPreviewIds, as a Hash
    #   * :png_job_id (String)
    #   * :pdf_job_id (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.save_created_template(
    #    template_id: "templateId",
    #    template_info: { title: "title", description: "description", type: DOCX, sample_data: { "key": "value" }, categories: [INVOICE] },
    #    preview_ids: { png_job_id: "pngJobId", pdf_job_id: "pdfJobId" }
    #  )
    def save_created_template(template_id:, template_info:, preview_ids:, request_options: nil)
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
        req.body = {
          **(request_options&.additional_body_parameters || {}),
          templateInfo: template_info,
          previewIds: preview_ids
        }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}"
      end
    end

    # Updates template content, handles S3 storage cleanup for old content, updates
    #  template metadata in Strapi, and manages preview files. Removes unfinished tags
    #  after successful update.
    #
    # @param template_id [String]
    # @param template_info [Hash] Request of type PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfo, as a Hash
    #   * :title (String)
    #   * :description (String)
    #   * :type (PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoType)
    #   * :sample_data (Hash{String => Object})
    #   * :source_code (String)
    #   * :categories (Array<PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoCategoriesItem>)
    # @param preview_ids [Hash] Request of type PogodocApiClient::Templates::UpdateTemplateRequestPreviewIds, as a Hash
    #   * :png_job_id (String)
    #   * :pdf_job_id (String)
    # @param content_id [String] ID by which the new template content is saved
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::UpdateTemplateResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.update_template(
    #    template_id: "templateId",
    #    template_info: { title: "title", description: "description", type: DOCX, sample_data: { "key": "value" }, categories: [INVOICE] },
    #    preview_ids: { png_job_id: "pngJobId", pdf_job_id: "pdfJobId" },
    #    content_id: "contentId"
    #  )
    def update_template(template_id:, template_info:, preview_ids:, content_id:, request_options: nil)
      response = @request_client.conn.put do |req|
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
          templateInfo: template_info,
          previewIds: preview_ids,
          contentId: content_id
        }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}"
      end
      PogodocApiClient::Templates::UpdateTemplateResponse.from_json(json_object: response.body)
    end

    # Deletes a template from Strapi and associated S3 storage. Removes all associated
    #  files and metadata.
    #
    # @param template_id [String] ID of the template to be deleted
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::DeleteTemplateResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.delete_template(template_id: "templateId")
    def delete_template(template_id:, request_options: nil)
      response = @request_client.conn.delete do |req|
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
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}"
      end
      PogodocApiClient::Templates::DeleteTemplateResponse.from_json(json_object: response.body)
    end

    # Extracts contents from an uploaded template ZIP file and stores individual files
    #  in the appropriate S3 storage structure.
    #
    # @param template_id [String] ID of the template to be used
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.extract_template_files(template_id: "templateId")
    def extract_template_files(template_id:, request_options: nil)
      @request_client.conn.patch do |req|
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
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/unzip"
      end
    end

    # Creates both PNG and PDF preview files for template visualization. Generates
    #  previews in parallel and returns URLs for both formats.
    #
    # @param template_id [String] ID of the template to be used
    # @param type [PogodocApiClient::Templates::GenerateTemplatePreviewsRequestType] Type of template to be rendered
    # @param data [Hash{String => Object}] Sample data for the template
    # @param format_opts [Hash] Format options for the rendered documentRequest of type PogodocApiClient::Templates::GenerateTemplatePreviewsRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Templates::GenerateTemplatePreviewsRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.generate_template_previews(
    #    template_id: "templateId",
    #    type: DOCX,
    #    data: { "key": "value" }
    #  )
    def generate_template_previews(template_id:, type:, data:, format_opts: nil, request_options: nil)
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
          type: type,
          data: data,
          formatOpts: format_opts
        }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/render-previews"
      end
      PogodocApiClient::Templates::GenerateTemplatePreviewsResponse.from_json(json_object: response.body)
    end

    # Generates a presigned URL for template access. Used for downloading template
    #  files from S3 storage.
    #
    # @param template_id [String] ID of the template that is being downloaded
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::GeneratePresignedGetUrlResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.generate_presigned_get_url(template_id: "templateId")
    def generate_presigned_get_url(template_id:, request_options: nil)
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
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/presigned-url"
      end
      PogodocApiClient::Templates::GeneratePresignedGetUrlResponse.from_json(json_object: response.body)
    end

    # Retrieves the template index.html file from S3 storage. Used for rendering the
    #  template in the browser.
    #
    # @param template_id [String] ID of the template to be used
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::GetTemplateIndexHtmlResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.get_template_index_html(template_id: "templateId")
    def get_template_index_html(template_id:, request_options: nil)
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
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/index-html"
      end
      PogodocApiClient::Templates::GetTemplateIndexHtmlResponse.from_json(json_object: response.body)
    end

    # Uploads the template index.html file to S3 storage. Used for rendering the
    #  template in the browser.
    #
    # @param template_id [String] ID of the template to be used
    # @param template_index [String] New index.html file of the template
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.upload_template_index_html(template_id: "templateId", template_index: "templateIndex")
    def upload_template_index_html(template_id:, template_index:, request_options: nil)
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
        req.body = { **(request_options&.additional_body_parameters || {}), templateIndex: template_index }.compact
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/index-html"
      end
    end

    # Creates a new template by duplicating an existing template's content and
    #  metadata. Includes copying preview files and template index.
    #
    # @param template_id [String] ID of the template to be used
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::CloneTemplateResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.clone_template(template_id: "templateId")
    def clone_template(template_id:, request_options: nil)
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
        unless request_options.nil? || request_options&.additional_body_parameters.nil?
          req.body = { **(request_options&.additional_body_parameters || {}) }.compact
        end
        req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/clone"
      end
      PogodocApiClient::Templates::CloneTemplateResponse.from_json(json_object: response.body)
    end
  end

  class AsyncTemplatesClient
    # @return [PogodocApiClient::AsyncRequestClient]
    attr_reader :request_client

    # @param request_client [PogodocApiClient::AsyncRequestClient]
    # @return [PogodocApiClient::AsyncTemplatesClient]
    def initialize(request_client:)
      @request_client = request_client
    end

    # Initializes template creation by generating a unique ID and providing a
    #  presigned URL for template ZIP upload. Sets unfinished tag for tracking
    #  incomplete templates.
    #
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::InitializeTemplateCreationResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.initialize_template_creation
    def initialize_template_creation(request_options: nil)
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
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/init"
        end
        PogodocApiClient::Templates::InitializeTemplateCreationResponse.from_json(json_object: response.body)
      end
    end

    # Finalizes template creation by saving template info to Strapi, copying preview
    #  files to permanent storage, and creating template index. Removes unfinished tag
    #  upon completion.
    #
    # @param template_id [String]
    # @param template_info [Hash] Request of type PogodocApiClient::Templates::SaveCreatedTemplateRequestTemplateInfo, as a Hash
    #   * :title (String)
    #   * :description (String)
    #   * :type (PogodocApiClient::Templates::SaveCreatedTemplateRequestTemplateInfoType)
    #   * :sample_data (Hash{String => Object})
    #   * :source_code (String)
    #   * :categories (Array<PogodocApiClient::Templates::SaveCreatedTemplateRequestTemplateInfoCategoriesItem>)
    # @param preview_ids [Hash] Request of type PogodocApiClient::Templates::SaveCreatedTemplateRequestPreviewIds, as a Hash
    #   * :png_job_id (String)
    #   * :pdf_job_id (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.save_created_template(
    #    template_id: "templateId",
    #    template_info: { title: "title", description: "description", type: DOCX, sample_data: { "key": "value" }, categories: [INVOICE] },
    #    preview_ids: { png_job_id: "pngJobId", pdf_job_id: "pdfJobId" }
    #  )
    def save_created_template(template_id:, template_info:, preview_ids:, request_options: nil)
      Async do
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
          req.body = {
            **(request_options&.additional_body_parameters || {}),
            templateInfo: template_info,
            previewIds: preview_ids
          }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}"
        end
      end
    end

    # Updates template content, handles S3 storage cleanup for old content, updates
    #  template metadata in Strapi, and manages preview files. Removes unfinished tags
    #  after successful update.
    #
    # @param template_id [String]
    # @param template_info [Hash] Request of type PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfo, as a Hash
    #   * :title (String)
    #   * :description (String)
    #   * :type (PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoType)
    #   * :sample_data (Hash{String => Object})
    #   * :source_code (String)
    #   * :categories (Array<PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoCategoriesItem>)
    # @param preview_ids [Hash] Request of type PogodocApiClient::Templates::UpdateTemplateRequestPreviewIds, as a Hash
    #   * :png_job_id (String)
    #   * :pdf_job_id (String)
    # @param content_id [String] ID by which the new template content is saved
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::UpdateTemplateResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.update_template(
    #    template_id: "templateId",
    #    template_info: { title: "title", description: "description", type: DOCX, sample_data: { "key": "value" }, categories: [INVOICE] },
    #    preview_ids: { png_job_id: "pngJobId", pdf_job_id: "pdfJobId" },
    #    content_id: "contentId"
    #  )
    def update_template(template_id:, template_info:, preview_ids:, content_id:, request_options: nil)
      Async do
        response = @request_client.conn.put do |req|
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
            templateInfo: template_info,
            previewIds: preview_ids,
            contentId: content_id
          }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}"
        end
        PogodocApiClient::Templates::UpdateTemplateResponse.from_json(json_object: response.body)
      end
    end

    # Deletes a template from Strapi and associated S3 storage. Removes all associated
    #  files and metadata.
    #
    # @param template_id [String] ID of the template to be deleted
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::DeleteTemplateResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.delete_template(template_id: "templateId")
    def delete_template(template_id:, request_options: nil)
      Async do
        response = @request_client.conn.delete do |req|
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
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}"
        end
        PogodocApiClient::Templates::DeleteTemplateResponse.from_json(json_object: response.body)
      end
    end

    # Extracts contents from an uploaded template ZIP file and stores individual files
    #  in the appropriate S3 storage structure.
    #
    # @param template_id [String] ID of the template to be used
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.extract_template_files(template_id: "templateId")
    def extract_template_files(template_id:, request_options: nil)
      Async do
        @request_client.conn.patch do |req|
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
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/unzip"
        end
      end
    end

    # Creates both PNG and PDF preview files for template visualization. Generates
    #  previews in parallel and returns URLs for both formats.
    #
    # @param template_id [String] ID of the template to be used
    # @param type [PogodocApiClient::Templates::GenerateTemplatePreviewsRequestType] Type of template to be rendered
    # @param data [Hash{String => Object}] Sample data for the template
    # @param format_opts [Hash] Format options for the rendered documentRequest of type PogodocApiClient::Templates::GenerateTemplatePreviewsRequestFormatOpts, as a Hash
    #   * :from_page (Float)
    #   * :to_page (Float)
    #   * :format (PogodocApiClient::Templates::GenerateTemplatePreviewsRequestFormatOptsFormat)
    #   * :wait_for_selector (String)
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.generate_template_previews(
    #    template_id: "templateId",
    #    type: DOCX,
    #    data: { "key": "value" }
    #  )
    def generate_template_previews(template_id:, type:, data:, format_opts: nil, request_options: nil)
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
            type: type,
            data: data,
            formatOpts: format_opts
          }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/render-previews"
        end
        PogodocApiClient::Templates::GenerateTemplatePreviewsResponse.from_json(json_object: response.body)
      end
    end

    # Generates a presigned URL for template access. Used for downloading template
    #  files from S3 storage.
    #
    # @param template_id [String] ID of the template that is being downloaded
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::GeneratePresignedGetUrlResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.generate_presigned_get_url(template_id: "templateId")
    def generate_presigned_get_url(template_id:, request_options: nil)
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
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/presigned-url"
        end
        PogodocApiClient::Templates::GeneratePresignedGetUrlResponse.from_json(json_object: response.body)
      end
    end

    # Retrieves the template index.html file from S3 storage. Used for rendering the
    #  template in the browser.
    #
    # @param template_id [String] ID of the template to be used
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::GetTemplateIndexHtmlResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.get_template_index_html(template_id: "templateId")
    def get_template_index_html(template_id:, request_options: nil)
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
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/index-html"
        end
        PogodocApiClient::Templates::GetTemplateIndexHtmlResponse.from_json(json_object: response.body)
      end
    end

    # Uploads the template index.html file to S3 storage. Used for rendering the
    #  template in the browser.
    #
    # @param template_id [String] ID of the template to be used
    # @param template_index [String] New index.html file of the template
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [Void]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.upload_template_index_html(template_id: "templateId", template_index: "templateIndex")
    def upload_template_index_html(template_id:, template_index:, request_options: nil)
      Async do
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
          req.body = { **(request_options&.additional_body_parameters || {}), templateIndex: template_index }.compact
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/index-html"
        end
      end
    end

    # Creates a new template by duplicating an existing template's content and
    #  metadata. Includes copying preview files and template index.
    #
    # @param template_id [String] ID of the template to be used
    # @param request_options [PogodocApiClient::RequestOptions]
    # @return [PogodocApiClient::Templates::CloneTemplateResponse]
    # @example
    #  api = PogodocApiClient::Client.new(
    #    base_url: "https://api.example.com",
    #    environment: PogodocApiClient::Environment::DEFAULT,
    #    token: "YOUR_AUTH_TOKEN"
    #  )
    #  api.templates.clone_template(template_id: "templateId")
    def clone_template(template_id:, request_options: nil)
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
          unless request_options.nil? || request_options&.additional_body_parameters.nil?
            req.body = { **(request_options&.additional_body_parameters || {}) }.compact
          end
          req.url "#{@request_client.get_url(request_options: request_options)}/templates/#{template_id}/clone"
        end
        PogodocApiClient::Templates::CloneTemplateResponse.from_json(json_object: response.body)
      end
    end
  end
end
