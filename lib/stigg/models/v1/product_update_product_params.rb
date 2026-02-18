# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Products#update_product
      class ProductUpdateProductParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute description
        #   Description of the product
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute display_name
        #   Display name of the product
        #
        #   @return [String, nil]
        optional :display_name, String, api_name: :displayName

        # @!attribute metadata
        #   Additional metadata for the product
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String], nil?: true

        # @!attribute multiple_subscriptions
        #   Indicates if multiple subscriptions to this product are allowed
        #
        #   @return [Boolean, nil]
        optional :multiple_subscriptions, Stigg::Internal::Type::Boolean, api_name: :multipleSubscriptions

        # @!attribute product_settings
        #
        #   @return [Stigg::Models::V1::ProductUpdateProductParams::ProductSettings, nil]
        optional :product_settings,
                 -> { Stigg::V1::ProductUpdateProductParams::ProductSettings },
                 api_name: :productSettings

        # @!attribute usage_reset_cutoff_rule
        #   Rule defining when usage resets upon subscription update.
        #
        #   @return [Stigg::Models::V1::ProductUpdateProductParams::UsageResetCutoffRule, nil]
        optional :usage_reset_cutoff_rule,
                 -> { Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule },
                 api_name: :usageResetCutoffRule

        # @!method initialize(description: nil, display_name: nil, metadata: nil, multiple_subscriptions: nil, product_settings: nil, usage_reset_cutoff_rule: nil, request_options: {})
        #   @param description [String, nil] Description of the product
        #
        #   @param display_name [String] Display name of the product
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the product
        #
        #   @param multiple_subscriptions [Boolean] Indicates if multiple subscriptions to this product are allowed
        #
        #   @param product_settings [Stigg::Models::V1::ProductUpdateProductParams::ProductSettings]
        #
        #   @param usage_reset_cutoff_rule [Stigg::Models::V1::ProductUpdateProductParams::UsageResetCutoffRule] Rule defining when usage resets upon subscription update.
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class ProductSettings < Stigg::Internal::Type::BaseModel
          # @!attribute subscription_cancellation_time
          #   Time when the subscription will be cancelled
          #
          #   @return [Symbol, Stigg::Models::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime]
          required :subscription_cancellation_time,
                   enum: -> {
                     Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime
                   },
                   api_name: :subscriptionCancellationTime

          # @!attribute subscription_end_setup
          #   Setup for the end of the subscription
          #
          #   @return [Symbol, Stigg::Models::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup]
          required :subscription_end_setup,
                   enum: -> { Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup },
                   api_name: :subscriptionEndSetup

          # @!attribute subscription_start_setup
          #   Setup for the start of the subscription
          #
          #   @return [Symbol, Stigg::Models::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup]
          required :subscription_start_setup,
                   enum: -> {
                     Stigg::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup
                   },
                   api_name: :subscriptionStartSetup

          # @!attribute downgrade_plan_id
          #   ID of the plan to downgrade to at the end of the billing period
          #
          #   @return [String, nil]
          optional :downgrade_plan_id, String, api_name: :downgradePlanId, nil?: true

          # @!attribute prorate_at_end_of_billing_period
          #
          #   @return [Boolean, nil]
          optional :prorate_at_end_of_billing_period,
                   Stigg::Internal::Type::Boolean,
                   api_name: :prorateAtEndOfBillingPeriod,
                   nil?: true

          # @!attribute subscription_start_plan_id
          #   ID of the plan to start the subscription with
          #
          #   @return [String, nil]
          optional :subscription_start_plan_id, String, api_name: :subscriptionStartPlanId, nil?: true

          # @!method initialize(subscription_cancellation_time:, subscription_end_setup:, subscription_start_setup:, downgrade_plan_id: nil, prorate_at_end_of_billing_period: nil, subscription_start_plan_id: nil)
          #   @param subscription_cancellation_time [Symbol, Stigg::Models::V1::ProductUpdateProductParams::ProductSettings::SubscriptionCancellationTime] Time when the subscription will be cancelled
          #
          #   @param subscription_end_setup [Symbol, Stigg::Models::V1::ProductUpdateProductParams::ProductSettings::SubscriptionEndSetup] Setup for the end of the subscription
          #
          #   @param subscription_start_setup [Symbol, Stigg::Models::V1::ProductUpdateProductParams::ProductSettings::SubscriptionStartSetup] Setup for the start of the subscription
          #
          #   @param downgrade_plan_id [String, nil] ID of the plan to downgrade to at the end of the billing period
          #
          #   @param prorate_at_end_of_billing_period [Boolean, nil]
          #
          #   @param subscription_start_plan_id [String, nil] ID of the plan to start the subscription with

          # Time when the subscription will be cancelled
          #
          # @see Stigg::Models::V1::ProductUpdateProductParams::ProductSettings#subscription_cancellation_time
          module SubscriptionCancellationTime
            extend Stigg::Internal::Type::Enum

            END_OF_BILLING_PERIOD = :END_OF_BILLING_PERIOD
            IMMEDIATE = :IMMEDIATE
            SPECIFIC_DATE = :SPECIFIC_DATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Setup for the end of the subscription
          #
          # @see Stigg::Models::V1::ProductUpdateProductParams::ProductSettings#subscription_end_setup
          module SubscriptionEndSetup
            extend Stigg::Internal::Type::Enum

            DOWNGRADE_TO_FREE = :DOWNGRADE_TO_FREE
            CANCEL_SUBSCRIPTION = :CANCEL_SUBSCRIPTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Setup for the start of the subscription
          #
          # @see Stigg::Models::V1::ProductUpdateProductParams::ProductSettings#subscription_start_setup
          module SubscriptionStartSetup
            extend Stigg::Internal::Type::Enum

            PLAN_SELECTION = :PLAN_SELECTION
            TRIAL_PERIOD = :TRIAL_PERIOD
            FREE_PLAN = :FREE_PLAN

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class UsageResetCutoffRule < Stigg::Internal::Type::BaseModel
          # @!attribute behavior
          #   Behavior of the usage reset cutoff rule
          #
          #   @return [Symbol, Stigg::Models::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior]
          required :behavior, enum: -> { Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior }

          # @!method initialize(behavior:)
          #   Rule defining when usage resets upon subscription update.
          #
          #   @param behavior [Symbol, Stigg::Models::V1::ProductUpdateProductParams::UsageResetCutoffRule::Behavior] Behavior of the usage reset cutoff rule

          # Behavior of the usage reset cutoff rule
          #
          # @see Stigg::Models::V1::ProductUpdateProductParams::UsageResetCutoffRule#behavior
          module Behavior
            extend Stigg::Internal::Type::Enum

            NEVER_RESET = :NEVER_RESET
            ALWAYS_RESET = :ALWAYS_RESET
            BILLING_PERIOD_CHANGE = :BILLING_PERIOD_CHANGE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
