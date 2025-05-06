# frozen_string_literal: true

require_relative "get_job_status_response_output_data"
require_relative "get_job_status_response_output_metadata"
require "ostruct"
require "json"

module PogodocApiClient
  class Documents
    class GetJobStatusResponseOutput
      # @return [PogodocApiClient::Documents::GetJobStatusResponseOutputData]
      attr_reader :data
      # @return [PogodocApiClient::Documents::GetJobStatusResponseOutputMetadata]
      attr_reader :metadata
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param data [PogodocApiClient::Documents::GetJobStatusResponseOutputData]
      # @param metadata [PogodocApiClient::Documents::GetJobStatusResponseOutputMetadata]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Documents::GetJobStatusResponseOutput]
      def initialize(data:, metadata:, additional_properties: nil)
        @data = data
        @metadata = metadata
        @additional_properties = additional_properties
        @_field_set = { "data": data, "metadata": metadata }
      end

      # Deserialize a JSON object to an instance of GetJobStatusResponseOutput
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Documents::GetJobStatusResponseOutput]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        if parsed_json["data"].nil?
          data = nil
        else
          data = parsed_json["data"].to_json
          data = PogodocApiClient::Documents::GetJobStatusResponseOutputData.from_json(json_object: data)
        end
        if parsed_json["metadata"].nil?
          metadata = nil
        else
          metadata = parsed_json["metadata"].to_json
          metadata = PogodocApiClient::Documents::GetJobStatusResponseOutputMetadata.from_json(json_object: metadata)
        end
        new(
          data: data,
          metadata: metadata,
          additional_properties: struct
        )
      end

      # Serialize an instance of GetJobStatusResponseOutput to a JSON object
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
        PogodocApiClient::Documents::GetJobStatusResponseOutputData.validate_raw(obj: obj.data)
        PogodocApiClient::Documents::GetJobStatusResponseOutputMetadata.validate_raw(obj: obj.metadata)
      end
    end
  end
end
