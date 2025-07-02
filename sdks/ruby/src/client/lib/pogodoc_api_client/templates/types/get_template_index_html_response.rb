# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class GetTemplateIndexHtmlResponse
      # @return [String] Index.html file of the template
      attr_reader :index_html
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param index_html [String] Index.html file of the template
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::GetTemplateIndexHtmlResponse]
      def initialize(index_html:, additional_properties: nil)
        @index_html = index_html
        @additional_properties = additional_properties
        @_field_set = { "indexHtml": index_html }
      end

      # Deserialize a JSON object to an instance of GetTemplateIndexHtmlResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::GetTemplateIndexHtmlResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        index_html = parsed_json["indexHtml"]
        new(index_html: index_html, additional_properties: struct)
      end

      # Serialize an instance of GetTemplateIndexHtmlResponse to a JSON object
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
        obj.index_html.is_a?(String) != false || raise("Passed value for field obj.index_html is not the expected type, validation failed.")
      end
    end
  end
end
