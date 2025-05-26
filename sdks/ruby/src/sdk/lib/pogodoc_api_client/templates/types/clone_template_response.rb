# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class CloneTemplateResponse
      # @return [String]
      attr_reader :new_template_id
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param new_template_id [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::CloneTemplateResponse]
      def initialize(new_template_id:, additional_properties: nil)
        @new_template_id = new_template_id
        @additional_properties = additional_properties
        @_field_set = { "newTemplateId": new_template_id }
      end

      # Deserialize a JSON object to an instance of CloneTemplateResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::CloneTemplateResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        new_template_id = parsed_json["newTemplateId"]
        new(new_template_id: new_template_id, additional_properties: struct)
      end

      # Serialize an instance of CloneTemplateResponse to a JSON object
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
        obj.new_template_id.is_a?(String) != false || raise("Passed value for field obj.new_template_id is not the expected type, validation failed.")
      end
    end
  end
end
