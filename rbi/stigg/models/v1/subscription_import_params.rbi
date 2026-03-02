# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionImportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SubscriptionImportParams, Stigg::Internal::AnyHash)
          end

        # List of subscription objects to import
        sig do
          returns(T::Array[Stigg::V1::SubscriptionImportParams::Subscription])
        end
        attr_accessor :subscriptions

        # Integration ID to use for importing subscriptions
        sig { returns(T.nilable(String)) }
        attr_accessor :integration_id

        sig do
          params(
            subscriptions:
              T::Array[
                Stigg::V1::SubscriptionImportParams::Subscription::OrHash
              ],
            integration_id: T.nilable(String),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of subscription objects to import
          subscriptions:,
          # Integration ID to use for importing subscriptions
          integration_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              subscriptions:
                T::Array[Stigg::V1::SubscriptionImportParams::Subscription],
              integration_id: T.nilable(String),
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Subscription < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionImportParams::Subscription,
                Stigg::Internal::AnyHash
              )
            end

          # Subscription ID
          sig { returns(String) }
          attr_accessor :id

          # Customer ID
          sig { returns(String) }
          attr_accessor :customer_id

          # Plan ID
          sig { returns(String) }
          attr_accessor :plan_id

          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionImportParams::Subscription::Addon
                ]
              )
            )
          end
          attr_reader :addons

          sig do
            params(
              addons:
                T::Array[
                  Stigg::V1::SubscriptionImportParams::Subscription::Addon::OrHash
                ]
            ).void
          end
          attr_writer :addons

          # Billing ID
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # Billing period (MONTHLY or ANNUALLY)
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod::OrSymbol
              )
            )
          end
          attr_reader :billing_period

          sig do
            params(
              billing_period:
                Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod::OrSymbol
            ).void
          end
          attr_writer :billing_period

          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionImportParams::Subscription::Charge
                ]
              )
            )
          end
          attr_reader :charges

          sig do
            params(
              charges:
                T::Array[
                  Stigg::V1::SubscriptionImportParams::Subscription::Charge::OrHash
                ]
            ).void
          end
          attr_writer :charges

          # Subscription end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # Additional metadata for the subscription
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # Resource ID
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # Subscription start date
          sig { returns(T.nilable(Time)) }
          attr_reader :start_date

          sig { params(start_date: Time).void }
          attr_writer :start_date

          sig do
            params(
              id: String,
              customer_id: String,
              plan_id: String,
              addons:
                T::Array[
                  Stigg::V1::SubscriptionImportParams::Subscription::Addon::OrHash
                ],
              billing_id: T.nilable(String),
              billing_period:
                Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod::OrSymbol,
              charges:
                T::Array[
                  Stigg::V1::SubscriptionImportParams::Subscription::Charge::OrHash
                ],
              end_date: T.nilable(Time),
              metadata: T::Hash[Symbol, String],
              resource_id: T.nilable(String),
              start_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Subscription ID
            id:,
            # Customer ID
            customer_id:,
            # Plan ID
            plan_id:,
            addons: nil,
            # Billing ID
            billing_id: nil,
            # Billing period (MONTHLY or ANNUALLY)
            billing_period: nil,
            charges: nil,
            # Subscription end date
            end_date: nil,
            # Additional metadata for the subscription
            metadata: nil,
            # Resource ID
            resource_id: nil,
            # Subscription start date
            start_date: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_id: String,
                plan_id: String,
                addons:
                  T::Array[
                    Stigg::V1::SubscriptionImportParams::Subscription::Addon
                  ],
                billing_id: T.nilable(String),
                billing_period:
                  Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod::OrSymbol,
                charges:
                  T::Array[
                    Stigg::V1::SubscriptionImportParams::Subscription::Charge
                  ],
                end_date: T.nilable(Time),
                metadata: T::Hash[Symbol, String],
                resource_id: T.nilable(String),
                start_date: Time
              }
            )
          end
          def to_hash
          end

          class Addon < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionImportParams::Subscription::Addon,
                  Stigg::Internal::AnyHash
                )
              end

            # Addon ID
            sig { returns(String) }
            attr_accessor :id

            # Number of addon instances
            sig { returns(Integer) }
            attr_accessor :quantity

            # Addon configuration
            sig do
              params(id: String, quantity: Integer).returns(T.attached_class)
            end
            def self.new(
              # Addon ID
              id:,
              # Number of addon instances
              quantity:
            )
            end

            sig { override.returns({ id: String, quantity: Integer }) }
            def to_hash
            end
          end

          # Billing period (MONTHLY or ANNUALLY)
          module BillingPeriod
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod::TaggedSymbol
              )
            ANNUALLY =
              T.let(
                :ANNUALLY,
                Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionImportParams::Subscription::BillingPeriod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Charge < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionImportParams::Subscription::Charge,
                  Stigg::Internal::AnyHash
                )
              end

            # Charge ID
            sig { returns(String) }
            attr_accessor :id

            # Charge quantity
            sig { returns(Float) }
            attr_accessor :quantity

            # Charge type
            sig do
              returns(
                Stigg::V1::SubscriptionImportParams::Subscription::Charge::Type::OrSymbol
              )
            end
            attr_accessor :type

            # Charge item
            sig do
              params(
                id: String,
                quantity: Float,
                type:
                  Stigg::V1::SubscriptionImportParams::Subscription::Charge::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Charge ID
              id:,
              # Charge quantity
              quantity:,
              # Charge type
              type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  quantity: Float,
                  type:
                    Stigg::V1::SubscriptionImportParams::Subscription::Charge::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Charge type
            module Type
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionImportParams::Subscription::Charge::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FEATURE =
                T.let(
                  :FEATURE,
                  Stigg::V1::SubscriptionImportParams::Subscription::Charge::Type::TaggedSymbol
                )
              CREDIT =
                T.let(
                  :CREDIT,
                  Stigg::V1::SubscriptionImportParams::Subscription::Charge::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionImportParams::Subscription::Charge::Type::TaggedSymbol
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
