# frozen_string_literal: true

module Stigg
  module Models
    module V1
      class CustomerIntegrationResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Links this customer to their record in a specific configured integration (e.g.
        #   their Stripe customer ID under your Stripe integration). A customer has at most
        #   one link per integration.
        #
        #   @return [Stigg::Models::V1::CustomerIntegrationResponse::Data]
        required :data, -> { Stigg::V1::CustomerIntegrationResponse::Data }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::CustomerIntegrationResponse} for more details.
        #
        #   Response object
        #
        #   @param data [Stigg::Models::V1::CustomerIntegrationResponse::Data] Links this customer to their record in a specific configured integration (e.g. t

        # @see Stigg::Models::V1::CustomerIntegrationResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   The internal ID of the integration this record is linked to
          #
          #   @return [String]
          required :id, String

          # @!attribute synced_entity_id
          #   The external entity ID this record is linked to in the vendor system (e.g. the
          #   Stripe customer ID). Null until the link has synced; required when creating the
          #   link.
          #
          #   @return [String, nil]
          required :synced_entity_id, String, api_name: :syncedEntityId, nil?: true

          # @!attribute vendor_identifier
          #   The vendor whose system holds the customer record
          #
          #   @return [Symbol, Stigg::Models::V1::CustomerIntegrationResponse::Data::VendorIdentifier]
          required :vendor_identifier,
                   enum: -> { Stigg::V1::CustomerIntegrationResponse::Data::VendorIdentifier },
                   api_name: :vendorIdentifier

          # @!attribute sync_data
          #   Price billing sync revision data containing billing ID, link URL, and price
          #   group package billing ID
          #
          #   @return [Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionPriceBillingData, Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionBillingData, Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionMarketplaceData, nil]
          optional :sync_data,
                   union: -> { Stigg::V1::CustomerIntegrationResponse::Data::SyncData },
                   api_name: :syncData,
                   nil?: true

          # @!method initialize(id:, synced_entity_id:, vendor_identifier:, sync_data: nil)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::CustomerIntegrationResponse::Data} for more details.
          #
          #   Links this customer to their record in a specific configured integration (e.g.
          #   their Stripe customer ID under your Stripe integration). A customer has at most
          #   one link per integration.
          #
          #   @param id [String] The internal ID of the integration this record is linked to
          #
          #   @param synced_entity_id [String, nil] The external entity ID this record is linked to in the vendor system (e.g. the S
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::CustomerIntegrationResponse::Data::VendorIdentifier] The vendor whose system holds the customer record
          #
          #   @param sync_data [Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionPriceBillingData, Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionBillingData, Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionMarketplaceData, nil] Price billing sync revision data containing billing ID, link URL, and price grou

          # The vendor whose system holds the customer record
          #
          # @see Stigg::Models::V1::CustomerIntegrationResponse::Data#vendor_identifier
          module VendorIdentifier
            extend Stigg::Internal::Type::Enum

            STRIPE = :STRIPE
            ZUORA = :ZUORA
            HUBSPOT = :HUBSPOT
            AWS_MARKETPLACE = :AWS_MARKETPLACE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Price billing sync revision data containing billing ID, link URL, and price
          # group package billing ID
          #
          # @see Stigg::Models::V1::CustomerIntegrationResponse::Data#sync_data
          module SyncData
            extend Stigg::Internal::Type::Union

            # Price billing sync revision data containing billing ID, link URL, and price group package billing ID
            variant -> { Stigg::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionPriceBillingData }

            # Billing sync revision data containing billing ID and link URL
            variant -> { Stigg::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionBillingData }

            # Marketplace sync revision data containing dimensions
            variant -> { Stigg::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionMarketplaceData }

            class SyncRevisionPriceBillingData < Stigg::Internal::Type::BaseModel
              # @!attribute billing_id
              #   Billing integration id
              #
              #   @return [String]
              required :billing_id, String, api_name: :billingId

              # @!attribute billing_link_url
              #   Billing integration url
              #
              #   @return [String]
              required :billing_link_url, String, api_name: :billingLinkUrl

              # @!attribute price_group_package_billing_id
              #   Price group package billing id
              #
              #   @return [String]
              required :price_group_package_billing_id, String, api_name: :priceGroupPackageBillingId

              # @!method initialize(billing_id:, billing_link_url:, price_group_package_billing_id:)
              #   Price billing sync revision data containing billing ID, link URL, and price
              #   group package billing ID
              #
              #   @param billing_id [String] Billing integration id
              #
              #   @param billing_link_url [String] Billing integration url
              #
              #   @param price_group_package_billing_id [String] Price group package billing id
            end

            class SyncRevisionBillingData < Stigg::Internal::Type::BaseModel
              # @!attribute billing_id
              #   Billing integration id
              #
              #   @return [String]
              required :billing_id, String, api_name: :billingId

              # @!attribute billing_link_url
              #   Billing integration url
              #
              #   @return [String]
              required :billing_link_url, String, api_name: :billingLinkUrl

              # @!method initialize(billing_id:, billing_link_url:)
              #   Billing sync revision data containing billing ID and link URL
              #
              #   @param billing_id [String] Billing integration id
              #
              #   @param billing_link_url [String] Billing integration url
            end

            class SyncRevisionMarketplaceData < Stigg::Internal::Type::BaseModel
              # @!attribute dimensions
              #   Dimensions of the marketplace sync revision
              #
              #   @return [String]
              required :dimensions, String

              # @!method initialize(dimensions:)
              #   Marketplace sync revision data containing dimensions
              #
              #   @param dimensions [String] Dimensions of the marketplace sync revision
            end

            # @!method self.variants
            #   @return [Array(Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionPriceBillingData, Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionBillingData, Stigg::Models::V1::CustomerIntegrationResponse::Data::SyncData::SyncRevisionMarketplaceData)]
          end
        end
      end
    end
  end
end
