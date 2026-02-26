# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Addons#set_pricing
        class SetPackagePricingResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Result of setting package pricing.
          #
          #   @return [Stigg::Models::V1::Events::SetPackagePricingResponse::Data]
          required :data, -> { Stigg::V1::Events::SetPackagePricingResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::SetPackagePricingResponse::Data] Result of setting package pricing.

          # @see Stigg::Models::V1::Events::SetPackagePricingResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The package identifier (refId)
            #
            #   @return [String]
            required :id, String

            # @!attribute pricing_type
            #   The pricing type that was set
            #
            #   @return [Symbol, Stigg::Models::V1::Events::SetPackagePricingResponse::Data::PricingType]
            required :pricing_type,
                     enum: -> { Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType },
                     api_name: :pricingType

            # @!method initialize(id:, pricing_type:)
            #   Result of setting package pricing.
            #
            #   @param id [String] The package identifier (refId)
            #
            #   @param pricing_type [Symbol, Stigg::Models::V1::Events::SetPackagePricingResponse::Data::PricingType] The pricing type that was set

            # The pricing type that was set
            #
            # @see Stigg::Models::V1::Events::SetPackagePricingResponse::Data#pricing_type
            module PricingType
              extend Stigg::Internal::Type::Enum

              FREE = :FREE
              PAID = :PAID
              CUSTOM = :CUSTOM

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
