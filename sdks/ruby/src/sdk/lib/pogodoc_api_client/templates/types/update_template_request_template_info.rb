# frozen_string_literal: true

require_relative "update_template_request_template_info_type"
require_relative "update_template_request_template_info_categories_item"
require "ostruct"
require "json"

module PogodocApiClient
  class Templates
    class UpdateTemplateRequestTemplateInfo
      # @return [String] Title of the template
      attr_reader :title
      # @return [String] Description of the template
      attr_reader :description
      # @return [PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoType] Type of template to be rendered
      attr_reader :type
      # @return [Hash{String => Object}] Sample data for the template
      attr_reader :sample_data
      # @return [String]
      attr_reader :source_code
      # @return [Array<PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoCategoriesItem>] Categories of the template
      attr_reader :categories
      # @return [OpenStruct] Additional properties unmapped to the current class definition
      attr_reader :additional_properties
      # @return [Object]
      attr_reader :_field_set
      protected :_field_set

      OMIT = Object.new

      # @param title [String] Title of the template
      # @param description [String] Description of the template
      # @param type [PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoType] Type of template to be rendered
      # @param sample_data [Hash{String => Object}] Sample data for the template
      # @param source_code [String]
      # @param categories [Array<PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoCategoriesItem>] Categories of the template
      # @param additional_properties [OpenStruct] Additional properties unmapped to the current class definition
      # @return [PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfo]
      def initialize(title:, description:, type:, sample_data:, categories:, source_code: OMIT,
                     additional_properties: nil)
        @title = title
        @description = description
        @type = type
        @sample_data = sample_data
        @source_code = source_code if source_code != OMIT
        @categories = categories
        @additional_properties = additional_properties
        @_field_set = {
          "title": title,
          "description": description,
          "type": type,
          "sampleData": sample_data,
          "sourceCode": source_code,
          "categories": categories
        }.reject do |_k, v|
          v == OMIT
        end
      end

      # Deserialize a JSON object to an instance of UpdateTemplateRequestTemplateInfo
      #
      # @param json_object [String]
      # @return [PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfo]
      def self.from_json(json_object:)
        struct = JSON.parse(json_object, object_class: OpenStruct)
        parsed_json = JSON.parse(json_object)
        title = parsed_json["title"]
        description = parsed_json["description"]
        type = parsed_json["type"]
        sample_data = parsed_json["sampleData"]
        source_code = parsed_json["sourceCode"]
        categories = parsed_json["categories"]
        new(
          title: title,
          description: description,
          type: type,
          sample_data: sample_data,
          source_code: source_code,
          categories: categories,
          additional_properties: struct
        )
      end

      # Serialize an instance of UpdateTemplateRequestTemplateInfo to a JSON object
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
        obj.title.is_a?(String) != false || raise("Passed value for field obj.title is not the expected type, validation failed.")
        obj.description.is_a?(String) != false || raise("Passed value for field obj.description is not the expected type, validation failed.")
        obj.type.is_a?(PogodocApiClient::Templates::UpdateTemplateRequestTemplateInfoType) != false || raise("Passed value for field obj.type is not the expected type, validation failed.")
        obj.sample_data.is_a?(Hash) != false || raise("Passed value for field obj.sample_data is not the expected type, validation failed.")
        obj.source_code&.is_a?(String) != false || raise("Passed value for field obj.source_code is not the expected type, validation failed.")
        obj.categories.is_a?(Array) != false || raise("Passed value for field obj.categories is not the expected type, validation failed.")
      end
    end
  end
end
