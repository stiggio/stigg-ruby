# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        sig { returns(Stigg::Resources::V1::Subscriptions::FutureUpdate) }
        attr_reader :future_update

        # Create a new Subscription
        sig do
          params(
            customer_id: String,
            plan_id: String,
            id: T.nilable(String),
            addons:
              T::Array[Stigg::V1::SubscriptionCreateParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionCreateParams::AppliedCoupon::OrHash,
            await_payment_confirmation: T::Boolean,
            billing_country_code: T.nilable(String),
            billing_id: T.nilable(String),
            billing_information:
              Stigg::V1::SubscriptionCreateParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol,
            budget:
              T.nilable(Stigg::V1::SubscriptionCreateParams::Budget::OrHash),
            charges:
              T::Array[Stigg::V1::SubscriptionCreateParams::Charge::OrHash],
            checkout_options:
              Stigg::V1::SubscriptionCreateParams::CheckoutOptions::OrHash,
            metadata: T::Hash[Symbol, String],
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::MinimumSpend::OrHash
              ),
            paying_customer_id: T.nilable(String),
            payment_collection_method:
              Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::OrSymbol,
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionCreateParams::PriceOverride::OrHash
              ],
            resource_id: T.nilable(String),
            salesforce_id: T.nilable(String),
            schedule_strategy:
              Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::OrSymbol,
            start_date: Time,
            subscription_entitlements:
              T::Array[
                Stigg::V1::SubscriptionCreateParams::SubscriptionEntitlement::OrHash
              ],
            trial_override_configuration:
              Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::OrHash,
            unit_quantity: Float,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionCreateResponse)
        end
        def create(
          # Customer ID to provision the subscription for
          customer_id:,
          # Plan ID to provision
          plan_id:,
          # Unique identifier for the subscription
          id: nil,
          addons: nil,
          applied_coupon: nil,
          # Whether to wait for payment confirmation before returning the subscription
          await_payment_confirmation: nil,
          # The ISO 3166-1 alpha-2 country code for billing
          billing_country_code: nil,
          # External billing system identifier
          billing_id: nil,
          billing_information: nil,
          billing_period: nil,
          budget: nil,
          charges: nil,
          checkout_options: nil,
          # Additional metadata for the subscription
          metadata: nil,
          minimum_spend: nil,
          # Optional paying customer ID for split billing scenarios
          paying_customer_id: nil,
          # How payments should be collected for this subscription
          payment_collection_method: nil,
          price_overrides: nil,
          # Optional resource ID for multi-instance subscriptions
          resource_id: nil,
          # Salesforce ID
          salesforce_id: nil,
          # Strategy for scheduling subscription changes
          schedule_strategy: nil,
          # Subscription start date
          start_date: nil,
          subscription_entitlements: nil,
          trial_override_configuration: nil,
          unit_quantity: nil,
          request_options: {}
        )
        end

        # Get a single Subscription by id
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionRetrieveResponse)
        end
        def retrieve(id, request_options: {})
        end

        # Get a list of Subscriptions
        sig do
          params(
            after: String,
            before: String,
            customer_id: String,
            limit: Integer,
            status: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::SubscriptionListResponse
            ]
          )
        end
        def list(
          # Starting after this UUID for pagination
          after: nil,
          # Ending before this UUID for pagination
          before: nil,
          # Filter by customer ID
          customer_id: nil,
          # Items per page
          limit: nil,
          # Filter by subscription status (comma-separated for multiple statuses, e.g.,
          # ACTIVE,IN_TRIAL)
          status: nil,
          request_options: {}
        )
        end

        # Perform delegate on a Subscription
        sig do
          params(
            id: String,
            target_customer_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionDelegateResponse)
        end
        def delegate(
          id,
          # The customer ID to delegate the subscription to
          target_customer_id:,
          request_options: {}
        )
        end

        # Perform migrate to latest plan version on a Subscription
        sig do
          params(
            id: String,
            subscription_migration_time:
              Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::OrSymbol,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionMigrateResponse)
        end
        def migrate(
          id,
          # When to migrate the subscription: IMMEDIATE or END_OF_BILLING_PERIOD
          subscription_migration_time: nil,
          request_options: {}
        )
        end

        # Create a new Subscription Preview
        sig do
          params(
            customer_id: String,
            plan_id: String,
            addons:
              T::Array[Stigg::V1::SubscriptionPreviewParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::OrHash,
            billable_features:
              T::Array[
                Stigg::V1::SubscriptionPreviewParams::BillableFeature::OrHash
              ],
            billing_country_code: String,
            billing_information:
              Stigg::V1::SubscriptionPreviewParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionPreviewParams::BillingPeriod::OrSymbol,
            charges:
              T::Array[Stigg::V1::SubscriptionPreviewParams::Charge::OrHash],
            paying_customer_id: String,
            resource_id: String,
            schedule_strategy:
              Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::OrSymbol,
            start_date: Time,
            trial_override_configuration:
              Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::OrHash,
            unit_quantity: Float,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionPreviewResponse)
        end
        def preview(
          # Customer ID
          customer_id:,
          # Plan ID
          plan_id:,
          addons: nil,
          applied_coupon: nil,
          billable_features: nil,
          billing_country_code: nil,
          billing_information: nil,
          billing_period: nil,
          charges: nil,
          paying_customer_id: nil,
          resource_id: nil,
          schedule_strategy: nil,
          # Subscription start date
          start_date: nil,
          trial_override_configuration: nil,
          unit_quantity: nil,
          request_options: {}
        )
        end

        # Perform transfer to resource on a Subscription
        sig do
          params(
            id: String,
            destination_resource_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionTransferResponse)
        end
        def transfer(
          id,
          # The resource ID to transfer the subscription to. The destination resource must
          # belong to the same customer.
          destination_resource_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
