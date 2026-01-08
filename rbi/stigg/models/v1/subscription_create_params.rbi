# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionCreateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SubscriptionCreateParams, Stigg::Internal::AnyHash)
          end

        # Customer ID to provision the subscription for
        sig { returns(String) }
        attr_accessor :customer_id

        # Plan ID to provision
        sig { returns(String) }
        attr_accessor :plan_id

        # Unique identifier for the subscription
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # Whether to wait for payment confirmation before returning the subscription
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :await_payment_confirmation

        sig { params(await_payment_confirmation: T::Boolean).void }
        attr_writer :await_payment_confirmation

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol
            )
          )
        end
        attr_reader :billing_period

        sig do
          params(
            billing_period:
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol
          ).void
        end
        attr_writer :billing_period

        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionCreateParams::CheckoutOptions)
          )
        end
        attr_reader :checkout_options

        sig do
          params(
            checkout_options:
              Stigg::V1::SubscriptionCreateParams::CheckoutOptions::OrHash
          ).void
        end
        attr_writer :checkout_options

        # Additional metadata for the subscription
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # Optional paying customer ID for split billing scenarios
        sig { returns(T.nilable(String)) }
        attr_accessor :paying_customer_id

        # Optional resource ID for multi-instance subscriptions
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration
            )
          )
        end
        attr_reader :trial_override_configuration

        sig do
          params(
            trial_override_configuration:
              Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::OrHash
          ).void
        end
        attr_writer :trial_override_configuration

        sig do
          params(
            customer_id: String,
            plan_id: String,
            id: T.nilable(String),
            await_payment_confirmation: T::Boolean,
            billing_period:
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol,
            checkout_options:
              Stigg::V1::SubscriptionCreateParams::CheckoutOptions::OrHash,
            metadata: T::Hash[Symbol, String],
            paying_customer_id: T.nilable(String),
            resource_id: T.nilable(String),
            trial_override_configuration:
              Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::OrHash,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer ID to provision the subscription for
          customer_id:,
          # Plan ID to provision
          plan_id:,
          # Unique identifier for the subscription
          id: nil,
          # Whether to wait for payment confirmation before returning the subscription
          await_payment_confirmation: nil,
          billing_period: nil,
          checkout_options: nil,
          # Additional metadata for the subscription
          metadata: nil,
          # Optional paying customer ID for split billing scenarios
          paying_customer_id: nil,
          # Optional resource ID for multi-instance subscriptions
          resource_id: nil,
          trial_override_configuration: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              plan_id: String,
              id: T.nilable(String),
              await_payment_confirmation: T::Boolean,
              billing_period:
                Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol,
              checkout_options:
                Stigg::V1::SubscriptionCreateParams::CheckoutOptions,
              metadata: T::Hash[Symbol, String],
              paying_customer_id: T.nilable(String),
              resource_id: T.nilable(String),
              trial_override_configuration:
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::SubscriptionCreateParams::BillingPeriod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::TaggedSymbol
            )
          ANNUALLY =
            T.let(
              :ANNUALLY,
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionCreateParams::BillingPeriod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CheckoutOptions < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::CheckoutOptions,
                Stigg::Internal::AnyHash
              )
            end

          # URL to redirect to if checkout is canceled
          sig { returns(String) }
          attr_accessor :cancel_url

          # URL to redirect to after successful checkout
          sig { returns(String) }
          attr_accessor :success_url

          # Allow promotional codes during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :allow_promo_codes

          sig { params(allow_promo_codes: T::Boolean).void }
          attr_writer :allow_promo_codes

          # Allow tax ID collection during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :allow_tax_id_collection

          sig { params(allow_tax_id_collection: T::Boolean).void }
          attr_writer :allow_tax_id_collection

          # Collect billing address during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :collect_billing_address

          sig { params(collect_billing_address: T::Boolean).void }
          attr_writer :collect_billing_address

          # Collect phone number during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :collect_phone_number

          sig { params(collect_phone_number: T::Boolean).void }
          attr_writer :collect_phone_number

          # Optional reference ID for the checkout session
          sig { returns(T.nilable(String)) }
          attr_accessor :reference_id

          sig do
            params(
              cancel_url: String,
              success_url: String,
              allow_promo_codes: T::Boolean,
              allow_tax_id_collection: T::Boolean,
              collect_billing_address: T::Boolean,
              collect_phone_number: T::Boolean,
              reference_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # URL to redirect to if checkout is canceled
            cancel_url:,
            # URL to redirect to after successful checkout
            success_url:,
            # Allow promotional codes during checkout
            allow_promo_codes: nil,
            # Allow tax ID collection during checkout
            allow_tax_id_collection: nil,
            # Collect billing address during checkout
            collect_billing_address: nil,
            # Collect phone number during checkout
            collect_phone_number: nil,
            # Optional reference ID for the checkout session
            reference_id: nil
          )
          end

          sig do
            override.returns(
              {
                cancel_url: String,
                success_url: String,
                allow_promo_codes: T::Boolean,
                allow_tax_id_collection: T::Boolean,
                collect_billing_address: T::Boolean,
                collect_phone_number: T::Boolean,
                reference_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class TrialOverrideConfiguration < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration,
                Stigg::Internal::AnyHash
              )
            end

          # Whether the subscription should start with a trial period
          sig { returns(T::Boolean) }
          attr_accessor :is_trial

          # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
              )
            )
          end
          attr_reader :trial_end_behavior

          sig do
            params(
              trial_end_behavior:
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
            ).void
          end
          attr_writer :trial_end_behavior

          # Custom trial end date
          sig { returns(T.nilable(Time)) }
          attr_reader :trial_end_date

          sig { params(trial_end_date: Time).void }
          attr_writer :trial_end_date

          sig do
            params(
              is_trial: T::Boolean,
              trial_end_behavior:
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
              trial_end_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the subscription should start with a trial period
            is_trial:,
            # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
            trial_end_behavior: nil,
            # Custom trial end date
            trial_end_date: nil
          )
          end

          sig do
            override.returns(
              {
                is_trial: T::Boolean,
                trial_end_behavior:
                  Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
                trial_end_date: Time
              }
            )
          end
          def to_hash
          end

          # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          module TrialEndBehavior
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONVERT_TO_PAID =
              T.let(
                :CONVERT_TO_PAID,
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )
            CANCEL_SUBSCRIPTION =
              T.let(
                :CANCEL_SUBSCRIPTION,
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
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
