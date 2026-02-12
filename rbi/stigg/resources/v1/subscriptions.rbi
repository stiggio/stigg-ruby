# typed: strong

module Stigg
  module Resources
    class V1
      class Subscriptions
        sig { returns(Stigg::Resources::V1::Subscriptions::FutureUpdate) }
        attr_reader :future_update

        # Retrieves a subscription by its unique identifier, including plan details,
        # billing period, status, and add-ons.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Subscription)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Updates an active subscription's properties including billing period, add-ons,
        # unit quantities, and discounts.
        sig do
          params(
            id: String,
            addons:
              T::Array[Stigg::V1::SubscriptionUpdateParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::OrHash,
            await_payment_confirmation: T::Boolean,
            billing_information:
              Stigg::V1::SubscriptionUpdateParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionUpdateParams::BillingPeriod::OrSymbol,
            budget:
              T.nilable(Stigg::V1::SubscriptionUpdateParams::Budget::OrHash),
            charges:
              T::Array[Stigg::V1::SubscriptionUpdateParams::Charge::OrHash],
            metadata: T::Hash[Symbol, String],
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::MinimumSpend::OrHash
              ),
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::PriceOverride::OrHash
              ],
            promotion_code: String,
            schedule_strategy:
              Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::OrSymbol,
            subscription_entitlements:
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::OrHash
              ],
            trial_end_date: Time,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Subscription)
        end
        def update(
          # The unique identifier of the entity
          id,
          addons: nil,
          applied_coupon: nil,
          await_payment_confirmation: nil,
          billing_information: nil,
          billing_period: nil,
          budget: nil,
          charges: nil,
          # Additional metadata for the subscription
          metadata: nil,
          minimum_spend: nil,
          price_overrides: nil,
          promotion_code: nil,
          schedule_strategy: nil,
          subscription_entitlements: nil,
          # Subscription trial end date
          trial_end_date: nil,
          request_options: {}
        )
        end

        # Retrieves a paginated list of subscriptions, with optional filters for customer,
        # status, and plan.
        sig do
          params(
            after: String,
            before: String,
            created_at: Stigg::V1::SubscriptionListParams::CreatedAt::OrHash,
            customer_id: String,
            limit: Integer,
            plan_id: String,
            pricing_type: String,
            resource_id: String,
            status: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::SubscriptionListResponse
            ]
          )
        end
        def list(
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Filter by customer ID
          customer_id: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by plan ID
          plan_id: nil,
          # Filter by pricing type. Supports comma-separated values for multiple types
          pricing_type: nil,
          # Filter by resource ID
          resource_id: nil,
          # Filter by subscription status. Supports comma-separated values for multiple
          # statuses
          status: nil,
          request_options: {}
        )
        end

        # Cancels an active subscription, either immediately or at a specified time such
        # as end of billing period.
        sig do
          params(
            id: String,
            cancellation_action:
              Stigg::V1::SubscriptionCancelParams::CancellationAction::OrSymbol,
            cancellation_time:
              Stigg::V1::SubscriptionCancelParams::CancellationTime::OrSymbol,
            end_date: Time,
            prorate: T::Boolean,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Subscription)
        end
        def cancel(
          # The unique identifier of the entity
          id,
          # Action on cancellation (downgrade or revoke)
          cancellation_action: nil,
          # When to cancel (immediate, period end, or date)
          cancellation_time: nil,
          # Subscription end date
          end_date: nil,
          # If set, enables or disables prorating of credits on subscription cancellation.
          prorate: nil,
          request_options: {}
        )
        end

        # Delegates the payment responsibility of a subscription to a different customer.
        # The delegated customer will be billed for this subscription.
        sig do
          params(
            id: String,
            target_customer_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Subscription)
        end
        def delegate(
          # The unique identifier of the entity
          id,
          # The unique identifier of the customer who will assume payment responsibility for
          # this subscription. This customer must already exist in your Stigg account and
          # have a valid payment method if the subscription requires payment.
          target_customer_id:,
          request_options: {}
        )
        end

        # Imports multiple subscriptions in bulk. Used for migrating subscription data
        # from external systems.
        sig do
          params(
            subscriptions:
              T::Array[
                Stigg::V1::SubscriptionImportParams::Subscription::OrHash
              ],
            integration_id: T.nilable(String),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionImportResponse)
        end
        def import(
          # List of subscription objects to import
          subscriptions:,
          # Integration ID to use for importing subscriptions
          integration_id: nil,
          request_options: {}
        )
        end

        # Migrates a subscription to the latest published version of its plan or add-ons.
        # Handles prorated charges or credits automatically.
        sig do
          params(
            id: String,
            subscription_migration_time:
              Stigg::V1::SubscriptionMigrateParams::SubscriptionMigrationTime::OrSymbol,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Subscription)
        end
        def migrate(
          # The unique identifier of the entity
          id,
          # When to migrate (immediate or period end)
          subscription_migration_time: nil,
          request_options: {}
        )
        end

        # Previews the pricing impact of creating or updating a subscription without
        # making changes. Returns estimated costs, taxes, and proration details.
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
          # Addons to include
          addons: nil,
          # Coupon or discount to apply
          applied_coupon: nil,
          # Billable features with quantities
          billable_features: nil,
          # ISO 3166-1 country code for localization
          billing_country_code: nil,
          # Billing and tax configuration
          billing_information: nil,
          # Billing period (MONTHLY or ANNUALLY)
          billing_period: nil,
          # One-time or recurring charges
          charges: nil,
          # Paying customer ID for delegated billing
          paying_customer_id: nil,
          # Resource ID for multi-instance subscriptions
          resource_id: nil,
          # When to apply subscription changes
          schedule_strategy: nil,
          # Subscription start date
          start_date: nil,
          # Trial period override settings
          trial_override_configuration: nil,
          # Unit quantity for per-unit pricing
          unit_quantity: nil,
          request_options: {}
        )
        end

        # Creates a new subscription for an existing customer. When payment is required
        # and no payment method exists, returns a checkout URL.
        sig do
          params(
            customer_id: String,
            plan_id: String,
            id: String,
            addons:
              T::Array[Stigg::V1::SubscriptionProvisionParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::OrHash,
            await_payment_confirmation: T::Boolean,
            billing_country_code: T.nilable(String),
            billing_id: T.nilable(String),
            billing_information:
              Stigg::V1::SubscriptionProvisionParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionProvisionParams::BillingPeriod::OrSymbol,
            budget:
              T.nilable(Stigg::V1::SubscriptionProvisionParams::Budget::OrHash),
            charges:
              T::Array[Stigg::V1::SubscriptionProvisionParams::Charge::OrHash],
            checkout_options:
              Stigg::V1::SubscriptionProvisionParams::CheckoutOptions::OrHash,
            metadata: T::Hash[Symbol, String],
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::OrHash
              ),
            paying_customer_id: T.nilable(String),
            payment_collection_method:
              Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::OrSymbol,
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::OrHash
              ],
            resource_id: T.nilable(String),
            salesforce_id: T.nilable(String),
            schedule_strategy:
              Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::OrSymbol,
            start_date: Time,
            subscription_entitlements:
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::SubscriptionEntitlement::OrHash
              ],
            trial_override_configuration:
              Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::OrHash,
            unit_quantity: Float,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::SubscriptionProvisionResponse)
        end
        def provision(
          # Customer ID to provision the subscription for
          customer_id:,
          # Plan ID to provision
          plan_id:,
          # Unique identifier for the subscription
          id: nil,
          addons: nil,
          # Coupon configuration
          applied_coupon: nil,
          # Whether to wait for payment confirmation before returning the subscription
          await_payment_confirmation: nil,
          # The ISO 3166-1 alpha-2 country code for billing
          billing_country_code: nil,
          # External billing system identifier
          billing_id: nil,
          billing_information: nil,
          # Billing period (MONTHLY or ANNUALLY)
          billing_period: nil,
          budget: nil,
          charges: nil,
          # Checkout page configuration for payment collection
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
          # Trial period override settings
          trial_override_configuration: nil,
          unit_quantity: nil,
          request_options: {}
        )
        end

        # Transfers a subscription to a different resource ID. Used for multi-resource
        # products where subscriptions apply to specific entities like websites or apps.
        sig do
          params(
            id: String,
            destination_resource_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Subscription)
        end
        def transfer(
          # The unique identifier of the entity
          id,
          # Resource ID to transfer the subscription to
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
