# frozen_string_literal: true

require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class UpdateTemplateRequestPreviewIds
      # @return [String]
      attr_reader :png_job_id
      # @return [String]
      attr_reader :pdf_job_id
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param png_job_id [String]
      # @param pdf_job_id [String]
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::UpdateTemplateRequestPreviewIds]
      def initialize(png_job_id:, pdf_job_id:, additional_properties: nil)
        @png_job_id = png_job_id
        @pdf_job_id = pdf_job_id
        @additional_properties = additional_properties
        @_field_set = { "pngJobId": png_job_id, "pdfJobId": pdf_job_id }
      end

      # Deserialize a JSON object to an instance of UpdateTemplateRequestPreviewIds
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::UpdateTemplateRequestPreviewIds]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        png_job_id = parsed_json["pngJobId"]
        pdf_job_id = parsed_json["pdfJobId"]
        new(
          png_job_id: png_job_id,
          pdf_job_id: pdf_job_id,
          additional_properties: struct
        )
      end

      # Serialize an instance of UpdateTemplateRequestPreviewIds to a JSON object
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
        obj.png_job_id.is_a?(String) != false || raise("Passed value for field obj.png_job_id is not the expected type, validation failed.")
        obj.pdf_job_id.is_a?(String) != false || raise("Passed value for field obj.pdf_job_id is not the expected type, validation failed.")
      end
    end
  end
end
