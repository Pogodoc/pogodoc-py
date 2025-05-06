# frozen_string_literal: true

require_relative "generate_document_preview_request_format_opts_format"
require "ostruct"
require "json"

module PogodocApiClient
  class Documents
    class GenerateDocumentPreviewRequestFormatOpts
      # @return [Float]
      attr_reader :from_page
      # @return [Float]
      attr_reader :to_page
      # @return [PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOptsFormat]
      attr_reader :format
      # @return [String]
      attr_reader :wait_for_selector
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param from_page [Float]
      # @param to_page [Float]
      # @param format [PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOptsFormat]
      # @param wait_for_selector [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOpts]
      def initialize(from_page: OMIT, to_page: OMIT, format: OMIT, wait_for_selector: OMIT, additional_properties: nil)
        @from_page = from_page if from_page != OMIT
        @to_page = to_page if to_page != OMIT
        @format = format if format != OMIT
        @wait_for_selector = wait_for_selector if wait_for_selector != OMIT
        @additional_properties = additional_properties
        @_field_set = {
          "fromPage": from_page,
          "toPage": to_page,
          "format": format,
          "waitForSelector": wait_for_selector
        }.reject do |_k, v|
          v == OMIT
        end
      end

      # Deserialize a JSON object to an instance of
      #  GenerateDocumentPreviewRequestFormatOpts
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOpts]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        from_page = parsed_json["fromPage"]
        to_page = parsed_json["toPage"]
        format = parsed_json["format"]
        wait_for_selector = parsed_json["waitForSelector"]
        new(
          from_page: from_page,
          to_page: to_page,
          format: format,
          wait_for_selector: wait_for_selector,
          additional_properties: struct
        )
      end

      # Serialize an instance of GenerateDocumentPreviewRequestFormatOpts to a JSON
      #  object
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
        obj.from_page&.is_a?(Float) != false || raise("Passed value for field obj.from_page is not the expected type, validation failed.")
        obj.to_page&.is_a?(Float) != false || raise("Passed value for field obj.to_page is not the expected type, validation failed.")
        obj.format&.is_a?(PogodocApiClient::Documents::GenerateDocumentPreviewRequestFormatOptsFormat) != false || raise("Passed value for field obj.format is not the expected type, validation failed.")
        obj.wait_for_selector&.is_a?(String) != false || raise("Passed value for field obj.wait_for_selector is not the expected type, validation failed.")
      end
    end
  end
end
