# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#create
      class SubscriptionCreateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   Customer ID to provision the subscription for
        #
        #   @return [String]
        required :customer_id, String, api_name: :customerId

        # @!attribute plan_id
        #   Plan ID to provision
        #
        #   @return [String]
        required :plan_id, String, api_name: :planId

        # @!attribute id
        #   Unique identifier for the subscription
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute await_payment_confirmation
        #   Whether to wait for payment confirmation before returning the subscription
        #
        #   @return [Boolean, nil]
        optional :await_payment_confirmation,
                 Stigg::Internal::Type::Boolean,
                 api_name: :awaitPaymentConfirmation

        # @!attribute billing_period
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionCreateParams::BillingPeriod, nil]
        optional :billing_period,
                 enum: -> { Stigg::V1::SubscriptionCreateParams::BillingPeriod },
                 api_name: :billingPeriod

        # @!attribute checkout_options
        #
        #   @return [Stigg::Models::V1::SubscriptionCreateParams::CheckoutOptions, nil]
        optional :checkout_options,
                 -> { Stigg::V1::SubscriptionCreateParams::CheckoutOptions },
                 api_name: :checkoutOptions

        # @!attribute metadata
        #   Additional metadata for the subscription
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute paying_customer_id
        #   Optional paying customer ID for split billing scenarios
        #
        #   @return [String, nil]
        optional :paying_customer_id, String, api_name: :payingCustomerId, nil?: true

        # @!attribute resource_id
        #   Optional resource ID for multi-instance subscriptions
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId, nil?: true

        # @!attribute trial_override_configuration
        #
        #   @return [Stigg::Models::V1::SubscriptionCreateParams::TrialOverrideConfiguration, nil]
        optional :trial_override_configuration,
                 -> { Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration },
                 api_name: :trialOverrideConfiguration

        # @!method initialize(customer_id:, plan_id:, id: nil, await_payment_confirmation: nil, billing_period: nil, checkout_options: nil, metadata: nil, paying_customer_id: nil, resource_id: nil, trial_override_configuration: nil, request_options: {})
        #   @param customer_id [String] Customer ID to provision the subscription for
        #
        #   @param plan_id [String] Plan ID to provision
        #
        #   @param id [String, nil] Unique identifier for the subscription
        #
        #   @param await_payment_confirmation [Boolean] Whether to wait for payment confirmation before returning the subscription
        #
        #   @param billing_period [Symbol, Stigg::Models::V1::SubscriptionCreateParams::BillingPeriod]
        #
        #   @param checkout_options [Stigg::Models::V1::SubscriptionCreateParams::CheckoutOptions]
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        #   @param paying_customer_id [String, nil] Optional paying customer ID for split billing scenarios
        #
        #   @param resource_id [String, nil] Optional resource ID for multi-instance subscriptions
        #
        #   @param trial_override_configuration [Stigg::Models::V1::SubscriptionCreateParams::TrialOverrideConfiguration]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          MONTHLY = :MONTHLY
          ANNUALLY = :ANNUALLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class CheckoutOptions < Stigg::Internal::Type::BaseModel
          # @!attribute cancel_url
          #   URL to redirect to if checkout is canceled
          #
          #   @return [String]
          required :cancel_url, String, api_name: :cancelUrl

          # @!attribute success_url
          #   URL to redirect to after successful checkout
          #
          #   @return [String]
          required :success_url, String, api_name: :successUrl

          # @!attribute allow_promo_codes
          #   Allow promotional codes during checkout
          #
          #   @return [Boolean, nil]
          optional :allow_promo_codes, Stigg::Internal::Type::Boolean, api_name: :allowPromoCodes

          # @!attribute allow_tax_id_collection
          #   Allow tax ID collection during checkout
          #
          #   @return [Boolean, nil]
          optional :allow_tax_id_collection, Stigg::Internal::Type::Boolean, api_name: :allowTaxIdCollection

          # @!attribute collect_billing_address
          #   Collect billing address during checkout
          #
          #   @return [Boolean, nil]
          optional :collect_billing_address, Stigg::Internal::Type::Boolean, api_name: :collectBillingAddress

          # @!attribute collect_phone_number
          #   Collect phone number during checkout
          #
          #   @return [Boolean, nil]
          optional :collect_phone_number, Stigg::Internal::Type::Boolean, api_name: :collectPhoneNumber

          # @!attribute reference_id
          #   Optional reference ID for the checkout session
          #
          #   @return [String, nil]
          optional :reference_id, String, api_name: :referenceId, nil?: true

          # @!method initialize(cancel_url:, success_url:, allow_promo_codes: nil, allow_tax_id_collection: nil, collect_billing_address: nil, collect_phone_number: nil, reference_id: nil)
          #   @param cancel_url [String] URL to redirect to if checkout is canceled
          #
          #   @param success_url [String] URL to redirect to after successful checkout
          #
          #   @param allow_promo_codes [Boolean] Allow promotional codes during checkout
          #
          #   @param allow_tax_id_collection [Boolean] Allow tax ID collection during checkout
          #
          #   @param collect_billing_address [Boolean] Collect billing address during checkout
          #
          #   @param collect_phone_number [Boolean] Collect phone number during checkout
          #
          #   @param reference_id [String, nil] Optional reference ID for the checkout session
        end

        class TrialOverrideConfiguration < Stigg::Internal::Type::BaseModel
          # @!attribute is_trial
          #   Whether the subscription should start with a trial period
          #
          #   @return [Boolean]
          required :is_trial, Stigg::Internal::Type::Boolean, api_name: :isTrial

          # @!attribute trial_end_behavior
          #   Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior, nil]
          optional :trial_end_behavior,
                   enum: -> {
                     Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior
                   },
                   api_name: :trialEndBehavior

          # @!attribute trial_end_date
          #   Custom trial end date
          #
          #   @return [Time, nil]
          optional :trial_end_date, Time, api_name: :trialEndDate

          # @!method initialize(is_trial:, trial_end_behavior: nil, trial_end_date: nil)
          #   @param is_trial [Boolean] Whether the subscription should start with a trial period
          #
          #   @param trial_end_behavior [Symbol, Stigg::Models::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior] Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          #
          #   @param trial_end_date [Time] Custom trial end date

          # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          #
          # @see Stigg::Models::V1::SubscriptionCreateParams::TrialOverrideConfiguration#trial_end_behavior
          module TrialEndBehavior
            extend Stigg::Internal::Type::Enum

            CONVERT_TO_PAID = :CONVERT_TO_PAID
            CANCEL_SUBSCRIPTION = :CANCEL_SUBSCRIPTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
