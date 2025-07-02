# frozen_string_literal: true

require_relative "initialize_render_job_response_target"
require "ostruct"
require "json"

module PogodocApiClient
  class Documents
    class InitializeRenderJobResponse
      # @return [String] ID of the render job
      attr_reader :job_id
      # @return [PogodocApiClient::Documents::InitializeRenderJobResponseTarget] Type of output to be rendered
      attr_reader :target
      # @return [String] Presigned URL to upload the data for the render job to S3
      attr_reader :presigned_data_upload_url
      # @return [String] Presigned URL to upload the template for the render job to S3. Only works with
      #  EJS templates
      attr_reader :presigned_template_upload_url
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param job_id [String] ID of the render job
      # @param target [PogodocApiClient::Documents::InitializeRenderJobResponseTarget] Type of output to be rendered
      # @param presigned_data_upload_url [String] Presigned URL to upload the data for the render job to S3
      # @param presigned_template_upload_url [String] Presigned URL to upload the template for the render job to S3. Only works with
      #  EJS templates
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Documents::InitializeRenderJobResponse]
      def initialize(job_id:, target:, presigned_data_upload_url: OMIT, presigned_template_upload_url: OMIT,
                     additional_properties: nil)
        @job_id = job_id
        @target = target
        @presigned_data_upload_url = presigned_data_upload_url if presigned_data_upload_url != OMIT
        @presigned_template_upload_url = presigned_template_upload_url if presigned_template_upload_url != OMIT
        @additional_properties = additional_properties
        @_field_set = {
          "jobId": job_id,
          "target": target,
          "presignedDataUploadUrl": presigned_data_upload_url,
          "presignedTemplateUploadUrl": presigned_template_upload_url
        }.reject do |_k, v|
          v == OMIT
        end
      end

      # Deserialize a JSON object to an instance of InitializeRenderJobResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Documents::InitializeRenderJobResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        job_id = parsed_json["jobId"]
        target = parsed_json["target"]
        presigned_data_upload_url = parsed_json["presignedDataUploadUrl"]
        presigned_template_upload_url = parsed_json["presignedTemplateUploadUrl"]
        new(
          job_id: job_id,
          target: target,
          presigned_data_upload_url: presigned_data_upload_url,
          presigned_template_upload_url: presigned_template_upload_url,
          additional_properties: struct
        )
      end

      # Serialize an instance of InitializeRenderJobResponse to a JSON object
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
        obj.target.is_a?(PogodocApiClient::Documents::InitializeRenderJobResponseTarget) != false || raise("Passed value for field obj.target is not the expected type, validation failed.")
        obj.presigned_data_upload_url&.is_a?(String) != false || raise("Passed value for field obj.presigned_data_upload_url is not the expected type, validation failed.")
        obj.presigned_template_upload_url&.is_a?(String) != false || raise("Passed value for field obj.presigned_template_upload_url is not the expected type, validation failed.")
      end
    end
  end
end
