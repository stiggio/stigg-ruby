# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class IntegrationListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Customers::IntegrationListParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Return items that come after this cursor
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Return items that come before this cursor
          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          # Maximum number of items to return
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Filter by vendor identifier. Supports comma-separated values for multiple
          # vendors (e.g., STRIPE,HUBSPOT)
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::OrSymbol
                ]
              )
            )
          end
          attr_reader :vendor_identifier

          sig do
            params(
              vendor_identifier:
                T::Array[
                  Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::OrSymbol
                ]
            ).void
          end
          attr_writer :vendor_identifier

          sig { returns(T.nilable(String)) }
          attr_reader :x_account_id

          sig { params(x_account_id: String).void }
          attr_writer :x_account_id

          sig { returns(T.nilable(String)) }
          attr_reader :x_environment_id

          sig { params(x_environment_id: String).void }
          attr_writer :x_environment_id

          sig do
            params(
              id: String,
              after: String,
              before: String,
              limit: Integer,
              vendor_identifier:
                T::Array[
                  Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::OrSymbol
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Return items that come after this cursor
            after: nil,
            # Return items that come before this cursor
            before: nil,
            # Maximum number of items to return
            limit: nil,
            # Filter by vendor identifier. Supports comma-separated values for multiple
            # vendors (e.g., STRIPE,HUBSPOT)
            vendor_identifier: nil,
            x_account_id: nil,
            x_environment_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                after: String,
                before: String,
                limit: Integer,
                vendor_identifier:
                  T::Array[
                    Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::OrSymbol
                  ],
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          module VendorIdentifier
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Customers::IntegrationListParams::VendorIdentifier
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTH0 =
              T.let(
                :AUTH0,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            ZUORA =
              T.let(
                :ZUORA,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            HUBSPOT =
              T.let(
                :HUBSPOT,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            AWS_MARKETPLACE =
              T.let(
                :AWS_MARKETPLACE,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            SNOWFLAKE =
              T.let(
                :SNOWFLAKE,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            SALESFORCE =
              T.let(
                :SALESFORCE,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            BIG_QUERY =
              T.let(
                :BIG_QUERY,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            OPEN_FGA =
              T.let(
                :OPEN_FGA,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            APP_STORE =
              T.let(
                :APP_STORE,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            RECEIVED =
              T.let(
                :RECEIVED,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )
            PREQUEL =
              T.let(
                :PREQUEL,
                Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::TaggedSymbol
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
