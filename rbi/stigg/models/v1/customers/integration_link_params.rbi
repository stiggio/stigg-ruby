# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class IntegrationLinkParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Customers::IntegrationLinkParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :path_id

          # Integration details
          sig { returns(String) }
          attr_accessor :body_id

          # Synced entity id
          sig { returns(String) }
          attr_accessor :synced_entity_id

          # The vendor identifier of integration
          sig do
            returns(
              Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::OrSymbol
            )
          end
          attr_accessor :vendor_identifier

          sig do
            params(
              path_id: String,
              body_id: String,
              synced_entity_id: String,
              vendor_identifier:
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            path_id:,
            # Integration details
            body_id:,
            # Synced entity id
            synced_entity_id:,
            # The vendor identifier of integration
            vendor_identifier:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                path_id: String,
                body_id: String,
                synced_entity_id: String,
                vendor_identifier:
                  Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::OrSymbol,
                request_options: Stigg::RequestOptions
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
                  Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTH0 =
              T.let(
                :AUTH0,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            ZUORA =
              T.let(
                :ZUORA,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            HUBSPOT =
              T.let(
                :HUBSPOT,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            AWS_MARKETPLACE =
              T.let(
                :AWS_MARKETPLACE,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            SNOWFLAKE =
              T.let(
                :SNOWFLAKE,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            SALESFORCE =
              T.let(
                :SALESFORCE,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            BIG_QUERY =
              T.let(
                :BIG_QUERY,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            OPEN_FGA =
              T.let(
                :OPEN_FGA,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )
            APP_STORE =
              T.let(
                :APP_STORE,
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
