# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class InitializeTemplateCreationResponse
      # @return [String] ID of the template
      attr_reader :template_id
      # @return [String] Presigned URL to upload the template to S3
      attr_reader :presigned_template_upload_url
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param template_id [String] ID of the template
      # @param presigned_template_upload_url [String] Presigned URL to upload the template to S3
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::InitializeTemplateCreationResponse]
      def initialize(template_id:, presigned_template_upload_url:, additional_properties: nil)
        @template_id = template_id
        @presigned_template_upload_url = presigned_template_upload_url
        @additional_properties = additional_properties
        @_field_set = { "templateId": template_id, "presignedTemplateUploadUrl": presigned_template_upload_url }
      end

      # Deserialize a JSON object to an instance of InitializeTemplateCreationResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::InitializeTemplateCreationResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        template_id = parsed_json["templateId"]
        presigned_template_upload_url = parsed_json["presignedTemplateUploadUrl"]
        new(
          template_id: template_id,
          presigned_template_upload_url: presigned_template_upload_url,
          additional_properties: struct
        )
      end

      # Serialize an instance of InitializeTemplateCreationResponse to a JSON object
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
        obj.presigned_template_upload_url.is_a?(String) != false || raise("Passed value for field obj.presigned_template_upload_url is not the expected type, validation failed.")
      end
    end
  end
end
