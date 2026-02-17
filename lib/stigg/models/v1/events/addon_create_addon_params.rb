# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Addons#create_addon
        class AddonCreateAddonParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #   The unique identifier for the entity
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #   The display name of the package
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute product_id
          #   The product ID to associate the addon with
          #
          #   @return [String]
          required :product_id, String, api_name: :productId

          # @!attribute billing_id
          #   The unique identifier for the entity in the billing provider
          #
          #   @return [String, nil]
          optional :billing_id, String, api_name: :billingId

          # @!attribute description
          #   The description of the package
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute max_quantity
          #   The maximum quantity of this addon that can be added to a subscription
          #
          #   @return [Integer, nil]
          optional :max_quantity, Integer, api_name: :maxQuantity

          # @!attribute metadata
          #   Metadata associated with the entity
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute pricing_type
          #   The pricing type of the package
          #
          #   @return [Symbol, Stigg::Models::V1::Events::AddonCreateAddonParams::PricingType, nil]
          optional :pricing_type,
                   enum: -> { Stigg::V1::Events::AddonCreateAddonParams::PricingType },
                   api_name: :pricingType

          # @!attribute status
          #   The status of the package
          #
          #   @return [Symbol, Stigg::Models::V1::Events::AddonCreateAddonParams::Status, nil]
          optional :status, enum: -> { Stigg::V1::Events::AddonCreateAddonParams::Status }

          # @!method initialize(id:, display_name:, product_id:, billing_id: nil, description: nil, max_quantity: nil, metadata: nil, pricing_type: nil, status: nil, request_options: {})
          #   @param id [String] The unique identifier for the entity
          #
          #   @param display_name [String] The display name of the package
          #
          #   @param product_id [String] The product ID to associate the addon with
          #
          #   @param billing_id [String] The unique identifier for the entity in the billing provider
          #
          #   @param description [String] The description of the package
          #
          #   @param max_quantity [Integer] The maximum quantity of this addon that can be added to a subscription
          #
          #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
          #
          #   @param pricing_type [Symbol, Stigg::Models::V1::Events::AddonCreateAddonParams::PricingType] The pricing type of the package
          #
          #   @param status [Symbol, Stigg::Models::V1::Events::AddonCreateAddonParams::Status] The status of the package
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # The pricing type of the package
          module PricingType
            extend Stigg::Internal::Type::Enum

            FREE = :FREE
            PAID = :PAID
            CUSTOM = :CUSTOM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The status of the package
          module Status
            extend Stigg::Internal::Type::Enum

            DRAFT = :DRAFT
            PUBLISHED = :PUBLISHED
            ARCHIVED = :ARCHIVED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
