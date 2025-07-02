# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Documents
    class GetJobStatusResponseOutputMetadata
      # @return [Float] Time taken to render the output
      attr_reader :render_time
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param render_time [Float] Time taken to render the output
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Documents::GetJobStatusResponseOutputMetadata]
      def initialize(render_time:, additional_properties: nil)
        @render_time = render_time
        @additional_properties = additional_properties
        @_field_set = { "renderTime": render_time }
      end

      # Deserialize a JSON object to an instance of GetJobStatusResponseOutputMetadata
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Documents::GetJobStatusResponseOutputMetadata]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        render_time = parsed_json["renderTime"]
        new(render_time: render_time, additional_properties: struct)
      end

      # Serialize an instance of GetJobStatusResponseOutputMetadata to a JSON object
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
        obj.render_time.is_a?(Float) != false || raise("Passed value for field obj.render_time is not the expected type, validation failed.")
      end
    end
  end
end
