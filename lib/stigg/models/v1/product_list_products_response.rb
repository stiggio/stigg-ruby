# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Products#list_products
      class ProductListProductsResponse < Stigg::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the entity
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the record was created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute description
        #   Description of the product
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute display_name
        #   Display name of the product
        #
        #   @return [String]
        required :display_name, String, api_name: :displayName

        # @!attribute metadata
        #   Metadata associated with the entity
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute multiple_subscriptions
        #   Indicates if multiple subscriptions to this product are allowed
        #
        #   @return [Boolean]
        required :multiple_subscriptions, Stigg::Internal::Type::Boolean, api_name: :multipleSubscriptions

        # @!attribute status
        #   The status of the product
        #
        #   @return [Symbol, Stigg::Models::V1::ProductListProductsResponse::Status]
        required :status, enum: -> { Stigg::Models::V1::ProductListProductsResponse::Status }

        # @!attribute updated_at
        #   Timestamp of when the record was last updated
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, created_at:, description:, display_name:, metadata:, multiple_subscriptions:, status:, updated_at:)
        #   Product configuration object
        #
        #   @param id [String] The unique identifier for the entity
        #
        #   @param created_at [Time] Timestamp of when the record was created
        #
        #   @param description [String, nil] Description of the product
        #
        #   @param display_name [String] Display name of the product
        #
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
        #
        #   @param multiple_subscriptions [Boolean] Indicates if multiple subscriptions to this product are allowed
        #
        #   @param status [Symbol, Stigg::Models::V1::ProductListProductsResponse::Status] The status of the product
        #
        #   @param updated_at [Time] Timestamp of when the record was last updated

        # The status of the product
        #
        # @see Stigg::Models::V1::ProductListProductsResponse#status
        module Status
          extend Stigg::Internal::Type::Enum

          PUBLISHED = :PUBLISHED
          ARCHIVED = :ARCHIVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
