# frozen_string_literal: true

require_relative "generate_template_previews_response_png_preview"
require_relative "generate_template_previews_response_pdf_preview"
require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class GenerateTemplatePreviewsResponse
      # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePngPreview]
      attr_reader :png_preview
      # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePdfPreview]
      attr_reader :pdf_preview
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param png_preview [PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePngPreview]
      # @param pdf_preview [PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePdfPreview]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponse]
      def initialize(png_preview:, pdf_preview:, additional_properties: nil)
        @png_preview = png_preview
        @pdf_preview = pdf_preview
        @additional_properties = additional_properties
        @_field_set = { "pngPreview": png_preview, "pdfPreview": pdf_preview }
      end

      # Deserialize a JSON object to an instance of GenerateTemplatePreviewsResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        if parsed_json["pngPreview"].nil?
          png_preview = nil
        else
          png_preview = parsed_json["pngPreview"].to_json
          png_preview = PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePngPreview.from_json(json_object: png_preview)
        end
        if parsed_json["pdfPreview"].nil?
          pdf_preview = nil
        else
          pdf_preview = parsed_json["pdfPreview"].to_json
          pdf_preview = PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePdfPreview.from_json(json_object: pdf_preview)
        end
        new(
          png_preview: png_preview,
          pdf_preview: pdf_preview,
          additional_properties: struct
        )
      end

      # Serialize an instance of GenerateTemplatePreviewsResponse to a JSON object
      #
      # @return [String]
      def to_json(*_args)
        @_field_set&.to_json
      end

      # Leveraged for Union-type generation, validate_raw attempts to parse the given
      #  hash and check each fields type against the current object's property
      #  definitions.
      #
      # @param obj [Object]
      # @return [Void]
      def self.validate_raw(obj:)
        PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePngPreview.validate_raw(obj: obj.png_preview)
        PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePdfPreview.validate_raw(obj: obj.pdf_preview)
      end
    end
  end
end
