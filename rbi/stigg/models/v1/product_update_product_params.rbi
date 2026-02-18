# typed: strong

module Stigg
  module Models
    module V1
      class ProductUpdateProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::ProductUpdateProductParams,
              Stigg::Internal::AnyHash
            )
          end

        # Description of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Display name of the product
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        # Additional metadata for the product
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        # Indicates if multiple subscriptions to this product are allowed
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :multiple_subscriptions

        sig { params(multiple_subscriptions: T::Boolean).void }
        attr_writer :multiple_subscriptions

        sig do
          returns(
            T.nilable(Stigg::V1::ProductUpdateProductParams::ProductSettings)
          )
        end
        attr_reader :product_settings

        sig do
          params(
            product_settings:
              Stigg::V1::ProductUpdateProductParams::ProductSettings::OrHash
          ).void
        end
        attr_writer :product_settings

        # Rule defining when usage resets upon subscription update.
        sig do
          returns(
            T.nilable(
              Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule
            )
          )
        end
        attr_reader :usage_reset_cutoff_rule

        sig do
          params(
            usage_reset_cutoff_rule:
              Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::OrHash
          ).void
        end
        attr_writer :usage_reset_cutoff_rule

        sig do
          params(
            description: T.nilable(String),
            display_name: String,
            metadata: T.nilable(T::Hash[Symbol, String]),
            multiple_subscriptions: T::Boolean,
            product_settings:
              Stigg::V1::ProductUpdateProductParams::ProductSettings::OrHash,
            usage_reset_cutoff_rule:
              Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::OrHash,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Description of the product
          description: nil,
          # Display name of the product
          display_name: nil,
          # Additional metadata for the product
          metadata: nil,
          # Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions: nil,
          product_settings: nil,
          # Rule defining when usage resets upon subscription update.
          usage_reset_cutoff_rule: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              description: T.nilable(String),
              display_name: String,
              metadata: T.nilable(T::Hash[Symbol, String]),
              multiple_subscriptions: T::Boolean,
              product_settings:
                Stigg::V1::ProductUpdateProductParams::ProductSettings,
              usage_reset_cutoff_rule:
                Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ProductSettings < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::ProductUpdateProductParams::ProductSettings,
                Stigg::Internal::AnyHash
              )
            end

          # Time when the subscription will be cancelled
          sig do
            returns(
              Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime::OrSymbol
            )
          end
          attr_accessor :subscription_cancellation_time

          # Setup for the end of the subscription
          sig do
            returns(
              Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup::OrSymbol
            )
          end
          attr_accessor :subscription_end_setup

          # Setup for the start of the subscription
          sig do
            returns(
              Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup::OrSymbol
            )
          end
          attr_accessor :subscription_start_setup

          # ID of the plan to downgrade to at the end of the billing period
          sig { returns(T.nilable(String)) }
          attr_accessor :downgrade_plan_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :prorate_at_end_of_billing_period

          # ID of the plan to start the subscription with
          sig { returns(T.nilable(String)) }
          attr_accessor :subscription_start_plan_id

          sig do
            params(
              subscription_cancellation_time:
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime::OrSymbol,
              subscription_end_setup:
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup::OrSymbol,
              subscription_start_setup:
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup::OrSymbol,
              downgrade_plan_id: T.nilable(String),
              prorate_at_end_of_billing_period: T.nilable(T::Boolean),
              subscription_start_plan_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Time when the subscription will be cancelled
            subscription_cancellation_time:,
            # Setup for the end of the subscription
            subscription_end_setup:,
            # Setup for the start of the subscription
            subscription_start_setup:,
            # ID of the plan to downgrade to at the end of the billing period
            downgrade_plan_id: nil,
            prorate_at_end_of_billing_period: nil,
            # ID of the plan to start the subscription with
            subscription_start_plan_id: nil
          )
          end

          sig do
            override.returns(
              {
                subscription_cancellation_time:
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime::OrSymbol,
                subscription_end_setup:
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup::OrSymbol,
                subscription_start_setup:
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup::OrSymbol,
                downgrade_plan_id: T.nilable(String),
                prorate_at_end_of_billing_period: T.nilable(T::Boolean),
                subscription_start_plan_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Time when the subscription will be cancelled
          module SubscriptionCancellationTime
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            END_OF_BILLING_PERIOD =
              T.let(
                :END_OF_BILLING_PERIOD,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
              )
            IMMEDIATE =
              T.let(
                :IMMEDIATE,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
              )
            SPECIFIC_DATE =
              T.let(
                :SPECIFIC_DATE,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Setup for the end of the subscription
          module SubscriptionEndSetup
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DOWNGRADE_TO_FREE =
              T.let(
                :DOWNGRADE_TO_FREE,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup::TaggedSymbol
              )
            CANCEL_SUBSCRIPTION =
              T.let(
                :CANCEL_SUBSCRIPTION,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Setup for the start of the subscription
          module SubscriptionStartSetup
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLAN_SELECTION =
              T.let(
                :PLAN_SELECTION,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup::TaggedSymbol
              )
            TRIAL_PERIOD =
              T.let(
                :TRIAL_PERIOD,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup::TaggedSymbol
              )
            FREE_PLAN =
              T.let(
                :FREE_PLAN,
                Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class UsageResetCutoffRule < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule,
                Stigg::Internal::AnyHash
              )
            end

          # Behavior of the usage reset cutoff rule
          sig do
            returns(
              Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior::OrSymbol
            )
          end
          attr_accessor :behavior

          # Rule defining when usage resets upon subscription update.
          sig do
            params(
              behavior:
                Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Behavior of the usage reset cutoff rule
            behavior:
          )
          end

          sig do
            override.returns(
              {
                behavior:
                  Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Behavior of the usage reset cutoff rule
          module Behavior
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEVER_RESET =
              T.let(
                :NEVER_RESET,
                Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior::TaggedSymbol
              )
            ALWAYS_RESET =
              T.let(
                :ALWAYS_RESET,
                Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior::TaggedSymbol
              )
            BILLING_PERIOD_CHANGE =
              T.let(
                :BILLING_PERIOD_CHANGE,
                Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior::TaggedSymbol
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
