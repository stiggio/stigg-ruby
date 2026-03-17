# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Products#duplicate_product
      class ProductDuplicateProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute target_id
        #   The unique identifier for the entity
        #
        #   @return [String]
        required :target_id, String, api_name: :targetId

        # @!attribute description
        #   Description of the product
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute display_name
        #   Display name of the product
        #
        #   @return [String, nil]
        optional :display_name, String, api_name: :displayName

        # @!method initialize(id:, target_id:, description: nil, display_name: nil, request_options: {})
        #   @param id [String]
        #
        #   @param target_id [String] The unique identifier for the entity
        #
        #   @param description [String, nil] Description of the product
        #
        #   @param display_name [String] Display name of the product
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
