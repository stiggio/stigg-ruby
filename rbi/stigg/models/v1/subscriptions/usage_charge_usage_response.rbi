# typed: strong

module Stigg
  module Models
    module V1
      module Subscriptions
        class UsageChargeUsageResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Result of charging subscription usage including the billing period and charged
          # items.
          sig do
            returns(
              Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Result of charging subscription usage including the billing period and charged
            # items.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The invoice ID in the billing integration
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_billing_id

            # End of the usage billing period
            sig { returns(Time) }
            attr_accessor :period_end

            # Start of the usage billing period
            sig { returns(Time) }
            attr_accessor :period_start

            # The subscription ID for which usage was charged
            sig { returns(String) }
            attr_accessor :subscription_id

            # Usage items that were charged
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::UsageCharged
                ]
              )
            end
            attr_accessor :usage_charged

            # Result of charging subscription usage including the billing period and charged
            # items.
            sig do
              params(
                invoice_billing_id: T.nilable(String),
                period_end: Time,
                period_start: Time,
                subscription_id: String,
                usage_charged:
                  T::Array[
                    Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::UsageCharged::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The invoice ID in the billing integration
              invoice_billing_id:,
              # End of the usage billing period
              period_end:,
              # Start of the usage billing period
              period_start:,
              # The subscription ID for which usage was charged
              subscription_id:,
              # Usage items that were charged
              usage_charged:
            )
            end

            sig do
              override.returns(
                {
                  invoice_billing_id: T.nilable(String),
                  period_end: Time,
                  period_start: Time,
                  subscription_id: String,
                  usage_charged:
                    T::Array[
                      Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::UsageCharged
                    ]
                }
              )
            end
            def to_hash
            end

            class UsageCharged < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::UsageCharged,
                    Stigg::Internal::AnyHash
                  )
                end

              # The feature ID for which usage was charged
              sig { returns(T.nilable(String)) }
              attr_accessor :feature_id

              # The number of units charged
              sig { returns(Float) }
              attr_accessor :usage_amount

              # A single usage item that was charged.
              sig do
                params(
                  feature_id: T.nilable(String),
                  usage_amount: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # The feature ID for which usage was charged
                feature_id:,
                # The number of units charged
                usage_amount:
              )
              end

              sig do
                override.returns(
                  { feature_id: T.nilable(String), usage_amount: Float }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
