# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class InitializeTemplateCreationResponse
      # @return [String]
      attr_reader :job_id
      # @return [String]
      attr_reader :presigned_template_upload_url
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param job_id [String]
      # @param presigned_template_upload_url [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::InitializeTemplateCreationResponse]
      def initialize(job_id:, presigned_template_upload_url:, additional_properties: nil)
        @job_id = job_id
        @presigned_template_upload_url = presigned_template_upload_url
        @additional_properties = additional_properties
        @_field_set = { "jobId": job_id, "presignedTemplateUploadUrl": presigned_template_upload_url }
      end

      # Deserialize a JSON object to an instance of InitializeTemplateCreationResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::InitializeTemplateCreationResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        job_id = parsed_json["jobId"]
        presigned_template_upload_url = parsed_json["presignedTemplateUploadUrl"]
        new(
          job_id: job_id,
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
        obj.job_id.is_a?(String) != false || raise("Passed value for field obj.job_id is not the expected type, validation failed.")
        obj.presigned_template_upload_url.is_a?(String) != false || raise("Passed value for field obj.presigned_template_upload_url is not the expected type, validation failed.")
      end
    end
  end
end
