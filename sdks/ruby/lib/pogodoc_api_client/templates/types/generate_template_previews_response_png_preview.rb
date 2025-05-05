# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class GenerateTemplatePreviewsResponsePngPreview
      # @return [String]
      attr_reader :url
      # @return [String]
      attr_reader :job_id
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param url [String]
      # @param job_id [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePngPreview]
      def initialize(job_id:, url: OMIT, additional_properties: nil)
        @url = url if url != OMIT
        @job_id = job_id
        @additional_properties = additional_properties
        @_field_set = { "url": url, "jobId": job_id }.reject do |_k, v|
          v == OMIT
        end
      end

      # Deserialize a JSON object to an instance of
      #  GenerateTemplatePreviewsResponsePngPreview
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::GenerateTemplatePreviewsResponsePngPreview]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        url = parsed_json["url"]
        job_id = parsed_json["jobId"]
        new(
          url: url,
          job_id: job_id,
          additional_properties: struct
        )
      end

      # Serialize an instance of GenerateTemplatePreviewsResponsePngPreview to a JSON
      #  object
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
        obj.url&.is_a?(String) != false || raise("Passed value for field obj.url is not the expected type, validation failed.")
        obj.job_id.is_a?(String) != false || raise("Passed value for field obj.job_id is not the expected type, validation failed.")
      end
    end
  end
end
