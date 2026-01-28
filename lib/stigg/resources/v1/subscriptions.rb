# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        # @return [Stigg::Resources::V1::Subscriptions::FutureUpdate]
        attr_reader :future_update

        # Provision subscription
        #
        # @overload create(customer_id:, plan_id:, id: nil, addons: nil, applied_coupon: nil, await_payment_confirmation: nil, billing_country_code: nil, billing_id: nil, billing_information: nil, billing_period: nil, budget: nil, charges: nil, checkout_options: nil, metadata: nil, minimum_spend: nil, paying_customer_id: nil, payment_collection_method: nil, price_overrides: nil, resource_id: nil, salesforce_id: nil, schedule_strategy: nil, start_date: nil, subscription_entitlements: nil, trial_override_configuration: nil, unit_quantity: nil, request_options: {})
        #
        # @param customer_id [String] Customer ID to provision the subscription for
        #
        # @param plan_id [String] Plan ID to provision
        #
        # @param id [String] Unique identifier for the subscription
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionCreateParams::Addon>]
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionCreateParams::AppliedCoupon] Coupon configuration
        #
        # @param await_payment_confirmation [Boolean] Whether to wait for payment confirmation before returning the subscription
        #
        # @param billing_country_code [String, nil] The ISO 3166-1 alpha-2 country code for billing
        #
        # @param billing_id [String, nil] External billing system identifier
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionCreateParams::BillingInformation]
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionCreateParams::BillingPeriod] Billing period (MONTHLY or ANNUALLY)
        #
        # @param budget [Stigg::Models::V1::SubscriptionCreateParams::Budget, nil]
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionCreateParams::Charge>]
        #
        # @param checkout_options [Stigg::Models::V1::SubscriptionCreateParams::CheckoutOptions] Checkout page configuration for payment collection
        #
        # @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        # @param minimum_spend [Stigg::Models::V1::SubscriptionCreateParams::MinimumSpend, nil]
        #
        # @param paying_customer_id [String, nil] Optional paying customer ID for split billing scenarios
        #
        # @param payment_collection_method [Symbol, Stigg::Models::V1::SubscriptionCreateParams::PaymentCollectionMethod] How payments should be collected for this subscription
        #
        # @param price_overrides [Array<Stigg::Models::V1::SubscriptionCreateParams::PriceOverride>]
        #
        # @param resource_id [String, nil] Optional resource ID for multi-instance subscriptions
        #
        # @param salesforce_id [String, nil] Salesforce ID
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionCreateParams::ScheduleStrategy] Strategy for scheduling subscription changes
        #
        # @param start_date [Time] Subscription start date
        #
        # @param subscription_entitlements [Array<Stigg::Models::V1::SubscriptionCreateParams::SubscriptionEntitlement>]
        #
        # @param trial_override_configuration [Stigg::Models::V1::SubscriptionCreateParams::TrialOverrideConfiguration] Trial period override settings
        #
        # @param unit_quantity [Float]
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionCreateResponse]
        #
        # @see Stigg::Models::V1::SubscriptionCreateParams
        def create(params)
          parsed, options = Stigg::V1::SubscriptionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/subscriptions",
            body: parsed,
            model: Stigg::Models::V1::SubscriptionCreateResponse,
            options: options
          )
        end

        # Get a single subscription by ID
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionRetrieveResponse]
        #
        # @see Stigg::Models::V1::SubscriptionRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["api/v1/subscriptions/%1$s", id],
            model: Stigg::Models::V1::SubscriptionRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Get a list of subscriptions
        #
        # @overload list(after: nil, before: nil, customer_id: nil, limit: nil, status: nil, request_options: {})
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param customer_id [String] Filter by customer ID
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param status [String] Filter by status (comma-separated)
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
            query: parsed.transform_keys(customer_id: "customerId"),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::SubscriptionListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionDelegateParams} for more details.
        #
        # Delegate subscription payment to customer
        #
        # @overload delegate(id, target_customer_id:, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param target_customer_id [String] The unique identifier of the customer who will assume payment responsibility for
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionDelegateResponse]
        #
        # @see Stigg::Models::V1::SubscriptionDelegateParams
        def delegate(id, params)
          parsed, options = Stigg::V1::SubscriptionDelegateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/delegate", id],
            body: parsed,
            model: Stigg::Models::V1::SubscriptionDelegateResponse,
            options: options
          )
        end

        # Migrate subscription to latest plan version
        #
        # @overload migrate(id, subscription_migration_time: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param subscription_migration_time [Symbol, Stigg::Models::V1::SubscriptionMigrateParams::SubscriptionMigrationTime] When to migrate (immediate or period end)
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionMigrateResponse]
        #
        # @see Stigg::Models::V1::SubscriptionMigrateParams
        def migrate(id, params = {})
          parsed, options = Stigg::V1::SubscriptionMigrateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/migrate", id],
            body: parsed,
            model: Stigg::Models::V1::SubscriptionMigrateResponse,
            options: options
          )
        end

        # Preview subscription
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

        # Transfer subscription to resource
        #
        # @overload transfer(id, destination_resource_id:, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param destination_resource_id [String] Resource ID to transfer the subscription to
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionTransferResponse]
        #
        # @see Stigg::Models::V1::SubscriptionTransferParams
        def transfer(id, params)
          parsed, options = Stigg::V1::SubscriptionTransferParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/transfer", id],
            body: parsed,
            model: Stigg::Models::V1::SubscriptionTransferResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @future_update = Stigg::Resources::V1::Subscriptions::FutureUpdate.new(client: client)
        end
      end
    end
  end
end
