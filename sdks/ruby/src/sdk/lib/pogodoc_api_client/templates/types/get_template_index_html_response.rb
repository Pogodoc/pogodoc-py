# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class GetTemplateIndexHtmlResponse
      # @return [String] Index.html file of the template
      attr_reader :template_index
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param template_index [String] Index.html file of the template
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::GetTemplateIndexHtmlResponse]
      def initialize(template_index:, additional_properties: nil)
        @template_index = template_index
        @additional_properties = additional_properties
        @_field_set = { "templateIndex": template_index }
      end

      # Deserialize a JSON object to an instance of GetTemplateIndexHtmlResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::GetTemplateIndexHtmlResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        template_index = parsed_json["templateIndex"]
        new(template_index: template_index, additional_properties: struct)
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
        obj.template_index.is_a?(String) != false || raise("Passed value for field obj.template_index is not the expected type, validation failed.")
      end
    end
  end
end
