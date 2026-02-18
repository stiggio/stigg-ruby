# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        # @return [Stigg::Resources::V1::Subscriptions::FutureUpdate]
        attr_reader :future_update

        # @return [Stigg::Resources::V1::Subscriptions::Usage]
        attr_reader :usage

        # @return [Stigg::Resources::V1::Subscriptions::Invoice]
        attr_reader :invoice

        # Retrieves a subscription by its unique identifier, including plan details,
        # billing period, status, and add-ons.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["api/v1/subscriptions/%1$s", id],
            model: Stigg::V1::Subscription,
            options: params[:request_options]
          )
        end

        # Updates an active subscription's properties including billing period, add-ons,
        # unit quantities, and discounts.
        #
        # @overload update(id, addons: nil, applied_coupon: nil, await_payment_confirmation: nil, billing_information: nil, billing_period: nil, budget: nil, charges: nil, metadata: nil, minimum_spend: nil, price_overrides: nil, promotion_code: nil, schedule_strategy: nil, subscription_entitlements: nil, trial_end_date: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionUpdateParams::Addon>]
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon]
        #
        # @param await_payment_confirmation [Boolean]
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation]
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingPeriod]
        #
        # @param budget [Stigg::Models::V1::SubscriptionUpdateParams::Budget, nil]
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionUpdateParams::Charge>]
        #
        # @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        # @param minimum_spend [Stigg::Models::V1::SubscriptionUpdateParams::MinimumSpend, nil]
        #
        # @param price_overrides [Array<Stigg::Models::V1::SubscriptionUpdateParams::PriceOverride>]
        #
        # @param promotion_code [String]
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::ScheduleStrategy]
        #
        # @param subscription_entitlements [Array<Stigg::Models::V1::SubscriptionUpdateParams::SubscriptionEntitlement>]
        #
        # @param trial_end_date [Time] Subscription trial end date
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::SubscriptionUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/v1/subscriptions/%1$s", id],
            body: parsed,
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionListParams} for more details.
        #
        # Retrieves a paginated list of subscriptions, with optional filters for customer,
        # status, and plan.
        #
        # @overload list(after: nil, before: nil, created_at: nil, customer_id: nil, limit: nil, plan_id: nil, pricing_type: nil, resource_id: nil, status: nil, request_options: {})
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::SubscriptionListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param customer_id [String] Filter by customer ID
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param plan_id [String] Filter by plan ID
        #
        # @param pricing_type [String] Filter by pricing type. Supports comma-separated values for multiple types
        #
        # @param resource_id [String] Filter by resource ID
        #
        # @param status [String] Filter by subscription status. Supports comma-separated values for multiple stat
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::SubscriptionListResponse>]
        #
        # @see Stigg::Models::V1::SubscriptionListParams
        def list(params = {})
          parsed, options = Stigg::V1::SubscriptionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/v1/subscriptions",
            query: parsed.transform_keys(
              created_at: "createdAt",
              customer_id: "customerId",
              plan_id: "planId",
              pricing_type: "pricingType",
              resource_id: "resourceId"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::SubscriptionListResponse,
            options: options
          )
        end

        # Cancels an active subscription, either immediately or at a specified time such
        # as end of billing period.
        #
        # @overload cancel(id, cancellation_action: nil, cancellation_time: nil, end_date: nil, prorate: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param cancellation_action [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationAction] Action on cancellation (downgrade or revoke)
        #
        # @param cancellation_time [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationTime] When to cancel (immediate, period end, or date)
        #
        # @param end_date [Time] Subscription end date
        #
        # @param prorate [Boolean] If set, enables or disables prorating of credits on subscription cancellation.
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionCancelParams
        def cancel(id, params = {})
          parsed, options = Stigg::V1::SubscriptionCancelParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/cancel", id],
            body: parsed,
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionDelegateParams} for more details.
        #
        # Delegates the payment responsibility of a subscription to a different customer.
        # The delegated customer will be billed for this subscription.
        #
        # @overload delegate(id, target_customer_id:, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param target_customer_id [String] The unique identifier of the customer who will assume payment responsibility for
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionDelegateParams
        def delegate(id, params)
          parsed, options = Stigg::V1::SubscriptionDelegateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/delegate", id],
            body: parsed,
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # Imports multiple subscriptions in bulk. Used for migrating subscription data
        # from external systems.
        #
        # @overload import(subscriptions:, integration_id: nil, request_options: {})
        #
        # @param subscriptions [Array<Stigg::Models::V1::SubscriptionImportParams::Subscription>] List of subscription objects to import
        #
        # @param integration_id [String, nil] Integration ID to use for importing subscriptions
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionImportResponse]
        #
        # @see Stigg::Models::V1::SubscriptionImportParams
        def import(params)
          parsed, options = Stigg::V1::SubscriptionImportParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/subscriptions/import",
            body: parsed,
            model: Stigg::Models::V1::SubscriptionImportResponse,
            options: options
          )
        end

        # Migrates a subscription to the latest published version of its plan or add-ons.
        # Handles prorated charges or credits automatically.
        #
        # @overload migrate(id, subscription_migration_time: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param subscription_migration_time [Symbol, Stigg::Models::V1::SubscriptionMigrateParams::SubscriptionMigrationTime] When to migrate (immediate or period end)
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionMigrateParams
        def migrate(id, params = {})
          parsed, options = Stigg::V1::SubscriptionMigrateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/migrate", id],
            body: parsed,
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # Previews the pricing impact of creating or updating a subscription without
        # making changes. Returns estimated costs, taxes, and proration details.
        #
        # @overload preview(customer_id:, plan_id:, addons: nil, applied_coupon: nil, billable_features: nil, billing_country_code: nil, billing_information: nil, billing_period: nil, charges: nil, paying_customer_id: nil, resource_id: nil, schedule_strategy: nil, start_date: nil, trial_override_configuration: nil, unit_quantity: nil, request_options: {})
        #
        # @param customer_id [String] Customer ID
        #
        # @param plan_id [String] Plan ID
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionPreviewParams::Addon>] Addons to include
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon] Coupon or discount to apply
        #
        # @param billable_features [Array<Stigg::Models::V1::SubscriptionPreviewParams::BillableFeature>] Billable features with quantities
        #
        # @param billing_country_code [String] ISO 3166-1 country code for localization
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation] Billing and tax configuration
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingPeriod] Billing period (MONTHLY or ANNUALLY)
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionPreviewParams::Charge>] One-time or recurring charges
        #
        # @param paying_customer_id [String] Paying customer ID for delegated billing
        #
        # @param resource_id [String] Resource ID for multi-instance subscriptions
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::ScheduleStrategy] When to apply subscription changes
        #
        # @param start_date [Time] Subscription start date
        #
        # @param trial_override_configuration [Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration] Trial period override settings
        #
        # @param unit_quantity [Float] Unit quantity for per-unit pricing
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionPreviewResponse]
        #
        # @see Stigg::Models::V1::SubscriptionPreviewParams
        def preview(params)
          parsed, options = Stigg::V1::SubscriptionPreviewParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/subscriptions/preview",
            body: parsed,
            model: Stigg::Models::V1::SubscriptionPreviewResponse,
            options: options
          )
        end

        # Creates a new subscription for an existing customer. When payment is required
        # and no payment method exists, returns a checkout URL.
        #
        # @overload provision(customer_id:, plan_id:, id: nil, addons: nil, applied_coupon: nil, await_payment_confirmation: nil, billing_country_code: nil, billing_id: nil, billing_information: nil, billing_period: nil, budget: nil, charges: nil, checkout_options: nil, metadata: nil, minimum_spend: nil, paying_customer_id: nil, payment_collection_method: nil, price_overrides: nil, resource_id: nil, salesforce_id: nil, schedule_strategy: nil, start_date: nil, subscription_entitlements: nil, trial_override_configuration: nil, unit_quantity: nil, request_options: {})
        #
        # @param customer_id [String] Customer ID to provision the subscription for
        #
        # @param plan_id [String] Plan ID to provision
        #
        # @param id [String] Unique identifier for the subscription
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionProvisionParams::Addon>]
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon] Coupon configuration
        #
        # @param await_payment_confirmation [Boolean] Whether to wait for payment confirmation before returning the subscription
        #
        # @param billing_country_code [String, nil] The ISO 3166-1 alpha-2 country code for billing
        #
        # @param billing_id [String, nil] External billing system identifier
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation]
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingPeriod] Billing period (MONTHLY or ANNUALLY)
        #
        # @param budget [Stigg::Models::V1::SubscriptionProvisionParams::Budget, nil]
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionProvisionParams::Charge>]
        #
        # @param checkout_options [Stigg::Models::V1::SubscriptionProvisionParams::CheckoutOptions] Checkout page configuration for payment collection
        #
        # @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        # @param minimum_spend [Stigg::Models::V1::SubscriptionProvisionParams::MinimumSpend, nil]
        #
        # @param paying_customer_id [String, nil] Optional paying customer ID for split billing scenarios
        #
        # @param payment_collection_method [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PaymentCollectionMethod] How payments should be collected for this subscription
        #
        # @param price_overrides [Array<Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride>]
        #
        # @param resource_id [String, nil] Optional resource ID for multi-instance subscriptions
        #
        # @param salesforce_id [String, nil] Salesforce ID
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::ScheduleStrategy] Strategy for scheduling subscription changes
        #
        # @param start_date [Time] Subscription start date
        #
        # @param subscription_entitlements [Array<Stigg::Models::V1::SubscriptionProvisionParams::SubscriptionEntitlement>]
        #
        # @param trial_override_configuration [Stigg::Models::V1::SubscriptionProvisionParams::TrialOverrideConfiguration] Trial period override settings
        #
        # @param unit_quantity [Float]
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionProvisionResponse]
        #
        # @see Stigg::Models::V1::SubscriptionProvisionParams
        def provision(params)
          parsed, options = Stigg::V1::SubscriptionProvisionParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/subscriptions",
            body: parsed,
            model: Stigg::Models::V1::SubscriptionProvisionResponse,
            options: options
          )
        end

        # Transfers a subscription to a different resource ID. Used for multi-resource
        # products where subscriptions apply to specific entities like websites or apps.
        #
        # @overload transfer(id, destination_resource_id:, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param destination_resource_id [String] Resource ID to transfer the subscription to
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionTransferParams
        def transfer(id, params)
          parsed, options = Stigg::V1::SubscriptionTransferParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/transfer", id],
            body: parsed,
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @future_update = Stigg::Resources::V1::Subscriptions::FutureUpdate.new(client: client)
          @usage = Stigg::Resources::V1::Subscriptions::Usage.new(client: client)
          @invoice = Stigg::Resources::V1::Subscriptions::Invoice.new(client: client)
        end
      end
    end
  end
end
