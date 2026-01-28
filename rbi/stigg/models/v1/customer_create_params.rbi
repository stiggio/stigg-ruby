# typed: strong

module Stigg
  module Models
    module V1
      class CustomerCreateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CustomerCreateParams, Stigg::Internal::AnyHash)
          end

        # Customer slug
        sig { returns(String) }
        attr_accessor :id

        # Customer level coupon
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon_id

        # The default payment method details
        sig do
          returns(
            T.nilable(Stigg::V1::CustomerCreateParams::DefaultPaymentMethod)
          )
        end
        attr_reader :default_payment_method

        sig do
          params(
            default_payment_method:
              T.nilable(
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::OrHash
              )
          ).void
        end
        attr_writer :default_payment_method

        # The email of the customer
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # List of integrations
        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::CustomerCreateParams::Integration])
          )
        end
        attr_reader :integrations

        sig do
          params(
            integrations:
              T::Array[Stigg::V1::CustomerCreateParams::Integration::OrHash]
          ).void
        end
        attr_writer :integrations

        # Additional metadata
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # The name of the customer
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            id: String,
            coupon_id: T.nilable(String),
            default_payment_method:
              T.nilable(
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::OrHash
              ),
            email: T.nilable(String),
            integrations:
              T::Array[Stigg::V1::CustomerCreateParams::Integration::OrHash],
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer slug
          id:,
          # Customer level coupon
          coupon_id: nil,
          # The default payment method details
          default_payment_method: nil,
          # The email of the customer
          email: nil,
          # List of integrations
          integrations: nil,
          # Additional metadata
          metadata: nil,
          # The name of the customer
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              coupon_id: T.nilable(String),
              default_payment_method:
                T.nilable(
                  Stigg::V1::CustomerCreateParams::DefaultPaymentMethod
                ),
              email: T.nilable(String),
              integrations:
                T::Array[Stigg::V1::CustomerCreateParams::Integration],
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class DefaultPaymentMethod < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod,
                Stigg::Internal::AnyHash
              )
            end

          # The default payment method id
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # The expiration month of the default payment method
          sig { returns(T.nilable(Float)) }
          attr_accessor :card_expiry_month

          # The expiration year of the default payment method
          sig { returns(T.nilable(Float)) }
          attr_accessor :card_expiry_year

          # The last 4 digits of the default payment method
          sig { returns(T.nilable(String)) }
          attr_accessor :card_last4_digits

          # The default payment method type
          sig do
            returns(
              Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type::OrSymbol
            )
          end
          attr_accessor :type

          # The default payment method details
          sig do
            params(
              billing_id: T.nilable(String),
              card_expiry_month: T.nilable(Float),
              card_expiry_year: T.nilable(Float),
              card_last4_digits: T.nilable(String),
              type:
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The default payment method id
            billing_id:,
            # The expiration month of the default payment method
            card_expiry_month:,
            # The expiration year of the default payment method
            card_expiry_year:,
            # The last 4 digits of the default payment method
            card_last4_digits:,
            # The default payment method type
            type:
          )
          end

          sig do
            override.returns(
              {
                billing_id: T.nilable(String),
                card_expiry_month: T.nilable(Float),
                card_expiry_year: T.nilable(Float),
                card_last4_digits: T.nilable(String),
                type:
                  Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The default payment method type
          module Type
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type::TaggedSymbol
              )
            BANK =
              T.let(
                :BANK,
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type::TaggedSymbol
              )
            CASH_APP =
              T.let(
                :CASH_APP,
                Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::CustomerCreateParams::DefaultPaymentMethod::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Integration < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::CustomerCreateParams::Integration,
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
              Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::OrSymbol
            )
          end
          attr_accessor :vendor_identifier

          # External billing or CRM integration link
          sig do
            params(
              id: String,
              synced_entity_id: T.nilable(String),
              vendor_identifier:
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Integration details
            id:,
            # Synced entity id
            synced_entity_id:,
            # The vendor identifier of integration
            vendor_identifier:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                synced_entity_id: T.nilable(String),
                vendor_identifier:
                  Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::OrSymbol
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
                  Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTH0 =
              T.let(
                :AUTH0,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            ZUORA =
              T.let(
                :ZUORA,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            HUBSPOT =
              T.let(
                :HUBSPOT,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            AWS_MARKETPLACE =
              T.let(
                :AWS_MARKETPLACE,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            SNOWFLAKE =
              T.let(
                :SNOWFLAKE,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            SALESFORCE =
              T.let(
                :SALESFORCE,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            BIG_QUERY =
              T.let(
                :BIG_QUERY,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            OPEN_FGA =
              T.let(
                :OPEN_FGA,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            APP_STORE =
              T.let(
                :APP_STORE,
                Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::CustomerCreateParams::Integration::VendorIdentifier::TaggedSymbol
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
