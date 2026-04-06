# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::Integrations#link
        class IntegrationLinkResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   External billing or CRM integration link
          #
          #   @return [Stigg::Models::V1::Customers::IntegrationLinkResponse::Data]
          required :data, -> { Stigg::Models::V1::Customers::IntegrationLinkResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Customers::IntegrationLinkResponse::Data] External billing or CRM integration link

          # @see Stigg::Models::V1::Customers::IntegrationLinkResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Integration details
            #
            #   @return [String]
            required :id, String

            # @!attribute synced_entity_id
            #   Synced entity id
            #
            #   @return [String, nil]
            required :synced_entity_id, String, api_name: :syncedEntityId, nil?: true

            # @!attribute vendor_identifier
            #   The vendor identifier of integration
            #
            #   @return [Symbol, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier]
            required :vendor_identifier,
                     enum: -> { Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier },
                     api_name: :vendorIdentifier

            # @!attribute sync_data
            #   Price billing sync revision data containing billing ID, link URL, and price
            #   group package billing ID
            #
            #   @return [Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionPriceBillingData, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionBillingData, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionMarketplaceData, nil]
            optional :sync_data,
                     union: -> { Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData },
                     api_name: :syncData,
                     nil?: true

            # @!method initialize(id:, synced_entity_id:, vendor_identifier:, sync_data: nil)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::Customers::IntegrationLinkResponse::Data} for more details.
            #
            #   External billing or CRM integration link
            #
            #   @param id [String] Integration details
            #
            #   @param synced_entity_id [String, nil] Synced entity id
            #
            #   @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier] The vendor identifier of integration
            #
            #   @param sync_data [Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionPriceBillingData, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionBillingData, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionMarketplaceData, nil] Price billing sync revision data containing billing ID, link URL, and price grou

            # The vendor identifier of integration
            #
            # @see Stigg::Models::V1::Customers::IntegrationLinkResponse::Data#vendor_identifier
            module VendorIdentifier
              extend Stigg::Internal::Type::Enum

              AUTH0 = :AUTH0
              ZUORA = :ZUORA
              STRIPE = :STRIPE
              HUBSPOT = :HUBSPOT
              AWS_MARKETPLACE = :AWS_MARKETPLACE
              SNOWFLAKE = :SNOWFLAKE
              SALESFORCE = :SALESFORCE
              BIG_QUERY = :BIG_QUERY
              OPEN_FGA = :OPEN_FGA
              APP_STORE = :APP_STORE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Price billing sync revision data containing billing ID, link URL, and price
            # group package billing ID
            #
            # @see Stigg::Models::V1::Customers::IntegrationLinkResponse::Data#sync_data
            module SyncData
              extend Stigg::Internal::Type::Union

              # Price billing sync revision data containing billing ID, link URL, and price group package billing ID
              variant -> { Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionPriceBillingData }

              # Billing sync revision data containing billing ID and link URL
              variant -> { Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionBillingData }

              # Marketplace sync revision data containing dimensions
              variant -> { Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionMarketplaceData }

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
              #   @return [Array(Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionPriceBillingData, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionBillingData, Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionMarketplaceData)]
            end
          end
        end
      end
    end
  end
end
