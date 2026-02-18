# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Products#duplicate_product
      class ProductDuplicateProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute body_id
        #   The unique identifier for the entity
        #
        #   @return [String]
        required :body_id, String, api_name: :id

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

        # @!method initialize(body_id:, description: nil, display_name: nil, request_options: {})
        #   @param body_id [String] The unique identifier for the entity
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
