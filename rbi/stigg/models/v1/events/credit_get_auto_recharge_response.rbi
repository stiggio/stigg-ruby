# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class CreditGetAutoRechargeResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::CreditGetAutoRechargeResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Automatic recharge configuration for a customer and currency
          sig do
            returns(
              Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Automatic recharge configuration for a customer and currency
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The unique configuration ID
            sig { returns(T.nilable(String)) }
            attr_accessor :id

            # Timestamp of when the record was created
            sig { returns(T.nilable(Time)) }
            attr_accessor :created_at

            # The currency ID for this configuration
            sig { returns(String) }
            attr_accessor :currency_id

            # The customer ID this configuration belongs to
            sig { returns(String) }
            attr_accessor :customer_id

            # Expiration period for auto-recharge grants (1_MONTH or 1_YEAR)
            sig do
              returns(
                Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod::TaggedSymbol
              )
            end
            attr_accessor :grant_expiration_period

            # Whether automatic recharge is enabled
            sig { returns(T::Boolean) }
            attr_accessor :is_enabled

            # Maximum monthly spend limit for automatic recharges
            sig { returns(T.nilable(Float)) }
            attr_accessor :max_spend_limit

            # The target credit balance to recharge to
            sig { returns(Float) }
            attr_accessor :target_balance

            # The threshold type (CREDIT_AMOUNT or DOLLAR_AMOUNT)
            sig do
              returns(
                Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType::TaggedSymbol
              )
            end
            attr_accessor :threshold_type

            # The threshold value that triggers a recharge
            sig { returns(Float) }
            attr_accessor :threshold_value

            # Timestamp of when the record was last updated
            sig { returns(T.nilable(Time)) }
            attr_accessor :updated_at

            # Automatic recharge configuration for a customer and currency
            sig do
              params(
                id: T.nilable(String),
                created_at: T.nilable(Time),
                currency_id: String,
                customer_id: String,
                grant_expiration_period:
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod::OrSymbol,
                is_enabled: T::Boolean,
                max_spend_limit: T.nilable(Float),
                target_balance: Float,
                threshold_type:
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType::OrSymbol,
                threshold_value: Float,
                updated_at: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique configuration ID
              id:,
              # Timestamp of when the record was created
              created_at:,
              # The currency ID for this configuration
              currency_id:,
              # The customer ID this configuration belongs to
              customer_id:,
              # Expiration period for auto-recharge grants (1_MONTH or 1_YEAR)
              grant_expiration_period:,
              # Whether automatic recharge is enabled
              is_enabled:,
              # Maximum monthly spend limit for automatic recharges
              max_spend_limit:,
              # The target credit balance to recharge to
              target_balance:,
              # The threshold type (CREDIT_AMOUNT or DOLLAR_AMOUNT)
              threshold_type:,
              # The threshold value that triggers a recharge
              threshold_value:,
              # Timestamp of when the record was last updated
              updated_at:
            )
            end

            sig do
              override.returns(
                {
                  id: T.nilable(String),
                  created_at: T.nilable(Time),
                  currency_id: String,
                  customer_id: String,
                  grant_expiration_period:
                    Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod::TaggedSymbol,
                  is_enabled: T::Boolean,
                  max_spend_limit: T.nilable(Float),
                  target_balance: Float,
                  threshold_type:
                    Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType::TaggedSymbol,
                  threshold_value: Float,
                  updated_at: T.nilable(Time)
                }
              )
            end
            def to_hash
            end

            # Expiration period for auto-recharge grants (1_MONTH or 1_YEAR)
            module GrantExpirationPeriod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GRANT_EXPIRATION_PERIOD_1_MONTH =
                T.let(
                  :"1_MONTH",
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod::TaggedSymbol
                )
              GRANT_EXPIRATION_PERIOD_1_YEAR =
                T.let(
                  :"1_YEAR",
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::GrantExpirationPeriod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The threshold type (CREDIT_AMOUNT or DOLLAR_AMOUNT)
            module ThresholdType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREDIT_AMOUNT =
                T.let(
                  :CREDIT_AMOUNT,
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType::TaggedSymbol
                )
              DOLLAR_AMOUNT =
                T.let(
                  :DOLLAR_AMOUNT,
                  Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data::ThresholdType::TaggedSymbol
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
end
