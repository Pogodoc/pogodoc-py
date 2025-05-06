# frozen_string_literal: true

require_relative "get_job_status_response_type"
require_relative "get_job_status_response_target"
require_relative "get_job_status_response_output"
require "ostruct"
require "json"

module PogodocApiClient
  class Documents
    class GetJobStatusResponse
      # @return [PogodocApiClient::Documents::GetJobStatusResponseType]
      attr_reader :type
      # @return [String]
      attr_reader :job_id
      # @return [PogodocApiClient::Documents::GetJobStatusResponseTarget]
      attr_reader :target
      # @return [PogodocApiClient::Documents::GetJobStatusResponseOutput]
      attr_reader :output
      # @return [Boolean]
      attr_reader :success
      # @return [String]
      attr_reader :status
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param type [PogodocApiClient::Documents::GetJobStatusResponseType]
      # @param job_id [String]
      # @param target [PogodocApiClient::Documents::GetJobStatusResponseTarget]
      # @param output [PogodocApiClient::Documents::GetJobStatusResponseOutput]
      # @param success [Boolean]
      # @param status [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Documents::GetJobStatusResponse]
      def initialize(type:, job_id:, target:, output: OMIT, success: OMIT, status: OMIT, additional_properties: nil)
        @type = type
        @job_id = job_id
        @target = target
        @output = output if output != OMIT
        @success = success if success != OMIT
        @status = status if status != OMIT
        @additional_properties = additional_properties
        @_field_set = {
          "type": type,
          "jobId": job_id,
          "target": target,
          "output": output,
          "success": success,
          "status": status
        }.reject do |_k, v|
          v == OMIT
        end
      end

      # Deserialize a JSON object to an instance of GetJobStatusResponse
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Documents::GetJobStatusResponse]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        type = parsed_json["type"]
        job_id = parsed_json["jobId"]
        target = parsed_json["target"]
        if parsed_json["output"].nil?
          output = nil
        else
          output = parsed_json["output"].to_json
          output = PogodocApiClient::Documents::GetJobStatusResponseOutput.from_json(json_object: output)
        end
        success = parsed_json["success"]
        status = parsed_json["status"]
        new(
          type: type,
          job_id: job_id,
          target: target,
          output: output,
          success: success,
          status: status,
          additional_properties: struct
        )
      end

      # Serialize an instance of GetJobStatusResponse to a JSON object
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
        obj.type.is_a?(PogodocApiClient::Documents::GetJobStatusResponseType) != false || raise("Passed value for field obj.type is not the expected type, validation failed.")
        obj.job_id.is_a?(String) != false || raise("Passed value for field obj.job_id is not the expected type, validation failed.")
        obj.target.is_a?(PogodocApiClient::Documents::GetJobStatusResponseTarget) != false || raise("Passed value for field obj.target is not the expected type, validation failed.")
        obj.output.nil? || PogodocApiClient::Documents::GetJobStatusResponseOutput.validate_raw(obj: obj.output)
        obj.success&.is_a?(Boolean) != false || raise("Passed value for field obj.success is not the expected type, validation failed.")
        obj.status&.is_a?(String) != false || raise("Passed value for field obj.status is not the expected type, validation failed.")
      end
    end
  end
end
