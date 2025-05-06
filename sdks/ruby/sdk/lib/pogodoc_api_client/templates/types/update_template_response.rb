# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class UpdateTemplateResponse
      # @return [String]
      attr_reader :new_content_id
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param new_content_id [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::UpdateTemplateResponse]
      def initialize(new_content_id:, additional_properties: nil)
        @new_content_id = new_content_id
        @additional_properties = additional_properties
        @_field_set = { "newContentId": new_content_id }
      end

      # Deserialize a JSON object to an instance of UpdateTemplateResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::UpdateTemplateResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        new_content_id = parsed_json["newContentId"]
        new(new_content_id: new_content_id, additional_properties: struct)
      end

      # Serialize an instance of UpdateTemplateResponse to a JSON object
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
        obj.new_content_id.is_a?(String) != false || raise("Passed value for field obj.new_content_id is not the expected type, validation failed.")
      end
    end
  end
end
