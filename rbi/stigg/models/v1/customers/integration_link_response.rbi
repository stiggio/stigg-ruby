# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class IntegrationLinkResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Customers::IntegrationLinkResponse,
                Stigg::Internal::AnyHash
              )
            end

          # External billing or CRM integration link
          sig do
            returns(Stigg::Models::V1::Customers::IntegrationLinkResponse::Data)
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # External billing or CRM integration link
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Integration details
            sig { returns(String) }
            attr_accessor :id

            # Synced entity id
            sig { returns(T.nilable(String)) }
            attr_accessor :synced_entity_id

            # The vendor identifier of integration
            sig do
              returns(
                Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
              )
            end
            attr_accessor :vendor_identifier

            # Price billing sync revision data containing billing ID, link URL, and price
            # group package billing ID
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::Variants
                )
              )
            end
            attr_accessor :sync_data

            # External billing or CRM integration link
            sig do
              params(
                id: String,
                synced_entity_id: T.nilable(String),
                vendor_identifier:
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::OrSymbol,
                sync_data:
                  T.nilable(
                    T.any(
                      Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionPriceBillingData::OrHash,
                      Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionBillingData::OrHash,
                      Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionMarketplaceData::OrHash
                    )
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Integration details
              id:,
              # Synced entity id
              synced_entity_id:,
              # The vendor identifier of integration
              vendor_identifier:,
              # Price billing sync revision data containing billing ID, link URL, and price
              # group package billing ID
              sync_data: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  synced_entity_id: T.nilable(String),
                  vendor_identifier:
                    Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol,
                  sync_data:
                    T.nilable(
                      Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::Variants
                    )
                }
              )
            end
            def to_hash
            end

            # The vendor identifier of integration
            module VendorIdentifier
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AUTH0 =
                T.let(
                  :AUTH0,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              ZUORA =
                T.let(
                  :ZUORA,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              HUBSPOT =
                T.let(
                  :HUBSPOT,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              AWS_MARKETPLACE =
                T.let(
                  :AWS_MARKETPLACE,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              SNOWFLAKE =
                T.let(
                  :SNOWFLAKE,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              SALESFORCE =
                T.let(
                  :SALESFORCE,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              BIG_QUERY =
                T.let(
                  :BIG_QUERY,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              OPEN_FGA =
                T.let(
                  :OPEN_FGA,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )
              APP_STORE =
                T.let(
                  :APP_STORE,
                  Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::VendorIdentifier::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Price billing sync revision data containing billing ID, link URL, and price
            # group package billing ID
            module SyncData
              extend Stigg::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionPriceBillingData,
                    Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionBillingData,
                    Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionMarketplaceData
                  )
                end

              class SyncRevisionPriceBillingData < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionPriceBillingData,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Billing integration id
                sig { returns(String) }
                attr_accessor :billing_id

                # Billing integration url
                sig { returns(String) }
                attr_accessor :billing_link_url

                # Price group package billing id
                sig { returns(String) }
                attr_accessor :price_group_package_billing_id

                # Price billing sync revision data containing billing ID, link URL, and price
                # group package billing ID
                sig do
                  params(
                    billing_id: String,
                    billing_link_url: String,
                    price_group_package_billing_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Billing integration id
                  billing_id:,
                  # Billing integration url
                  billing_link_url:,
                  # Price group package billing id
                  price_group_package_billing_id:
                )
                end

                sig do
                  override.returns(
                    {
                      billing_id: String,
                      billing_link_url: String,
                      price_group_package_billing_id: String
                    }
                  )
                end
                def to_hash
                end
              end

              class SyncRevisionBillingData < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionBillingData,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Billing integration id
                sig { returns(String) }
                attr_accessor :billing_id

                # Billing integration url
                sig { returns(String) }
                attr_accessor :billing_link_url

                # Billing sync revision data containing billing ID and link URL
                sig do
                  params(billing_id: String, billing_link_url: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Billing integration id
                  billing_id:,
                  # Billing integration url
                  billing_link_url:
                )
                end

                sig do
                  override.returns(
                    { billing_id: String, billing_link_url: String }
                  )
                end
                def to_hash
                end
              end

              class SyncRevisionMarketplaceData < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::SyncRevisionMarketplaceData,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Dimensions of the marketplace sync revision
                sig { returns(String) }
                attr_accessor :dimensions

                # Marketplace sync revision data containing dimensions
                sig { params(dimensions: String).returns(T.attached_class) }
                def self.new(
                  # Dimensions of the marketplace sync revision
                  dimensions:
                )
                end

                sig { override.returns({ dimensions: String }) }
                def to_hash
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::IntegrationLinkResponse::Data::SyncData::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end
      end
    end
  end
end
