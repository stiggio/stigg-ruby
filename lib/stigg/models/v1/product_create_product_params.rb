# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Products#create_product
      class ProductCreateProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #   The unique identifier for the entity
        #
        #   @return [String]
        required :id, String

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

        # @!attribute metadata
        #   Additional metadata for the product
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String], nil?: true

        # @!attribute multiple_subscriptions
        #   Indicates if multiple subscriptions to this product are allowed
        #
        #   @return [Boolean, nil]
        optional :multiple_subscriptions, Stigg::Internal::Type::Boolean, api_name: :multipleSubscriptions

        # @!method initialize(id:, description: nil, display_name: nil, metadata: nil, multiple_subscriptions: nil, request_options: {})
        #   @param id [String] The unique identifier for the entity
        #
        #   @param description [String, nil] Description of the product
        #
        #   @param display_name [String] Display name of the product
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the product
        #
        #   @param multiple_subscriptions [Boolean] Indicates if multiple subscriptions to this product are allowed
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
