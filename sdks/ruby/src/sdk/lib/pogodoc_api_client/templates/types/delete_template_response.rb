# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class DeleteTemplateResponse
      # @return [String]
      attr_reader :template_id
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param template_id [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::DeleteTemplateResponse]
      def initialize(template_id:, additional_properties: nil)
        @template_id = template_id
        @additional_properties = additional_properties
        @_field_set = { "templateId": template_id }
      end

      # Deserialize a JSON object to an instance of DeleteTemplateResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::DeleteTemplateResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        template_id = parsed_json["templateId"]
        new(template_id: template_id, additional_properties: struct)
      end

      # Serialize an instance of DeleteTemplateResponse to a JSON object
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
        obj.template_id.is_a?(String) != false || raise("Passed value for field obj.template_id is not the expected type, validation failed.")
      end
    end
  end
end
