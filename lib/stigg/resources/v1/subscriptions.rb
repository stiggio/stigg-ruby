# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        # Operations related to subscriptions
        # @return [Stigg::Resources::V1::Subscriptions::FutureUpdate]
        attr_reader :future_update

        # Operations related to subscriptions
        # @return [Stigg::Resources::V1::Subscriptions::Usage]
        attr_reader :usage

        # Operations related to subscriptions
        # @return [Stigg::Resources::V1::Subscriptions::Invoice]
        attr_reader :invoice

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionRetrieveParams} for more details.
        #
        # Retrieves a subscription by its unique identifier, including plan details,
        # billing period, status, and add-ons.
        #
        # @overload retrieve(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionRetrieveParams
        def retrieve(id, params = {})
          parsed, options = Stigg::V1::SubscriptionRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/subscriptions/%1$s", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionUpdateParams} for more details.
        #
        # Updates an active subscription's properties including billing period, add-ons,
        # unit quantities, and discounts.
        #
        # @overload update(id, addons: nil, applied_coupon: nil, await_payment_confirmation: nil, billing_cycle_anchor: nil, billing_information: nil, billing_period: nil, budget: nil, cancellation_date: nil, charges: nil, entitlements: nil, metadata: nil, minimum_spend: nil, price_overrides: nil, promotion_code: nil, schedule_strategy: nil, trial_end_date: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionUpdateParams::Addon>] Body param
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon] Body param
        #
        # @param await_payment_confirmation [Boolean] Body param: Await payment confirmation
        #
        # @param billing_cycle_anchor [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingCycleAnchor] Body param
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation] Body param
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingPeriod] Body param
        #
        # @param budget [Stigg::Models::V1::SubscriptionUpdateParams::Budget, nil] Body param
        #
        # @param cancellation_date [Time, nil] Body param: Subscription cancellation date
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionUpdateParams::Charge>] Body param
        #
        # @param entitlements [Array<Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Credit>] Body param
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Additional metadata for the subscription
        #
        # @param minimum_spend [Stigg::Models::V1::SubscriptionUpdateParams::MinimumSpend, nil] Body param: Minimum spend amount
        #
        # @param price_overrides [Array<Stigg::Models::V1::SubscriptionUpdateParams::PriceOverride>] Body param
        #
        # @param promotion_code [String] Body param: Promotion code
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::ScheduleStrategy] Body param
        #
        # @param trial_end_date [Time] Body param: Subscription trial end date
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::SubscriptionUpdateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/subscriptions/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
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
        # @overload list(after: nil, before: nil, created_at: nil, customer_id: nil, limit: nil, plan_id: nil, pricing_type: nil, resource_id: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::SubscriptionListParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param customer_id [String] Query param: Filter by customer ID
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param plan_id [String] Query param: Filter by plan ID
        #
        # @param pricing_type [Array<Symbol, Stigg::Models::V1::SubscriptionListParams::PricingType>] Query param: Filter by pricing type. Supports comma-separated values for multipl
        #
        # @param resource_id [String] Query param: Filter by resource ID
        #
        # @param status [Array<Symbol, Stigg::Models::V1::SubscriptionListParams::Status>] Query param: Filter by subscription status. Supports comma-separated values for
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::SubscriptionListResponse>]
        #
        # @see Stigg::Models::V1::SubscriptionListParams
        def list(params = {})
          query_params =
            [
              :after,
              :before,
              :created_at,
              :customer_id,
              :limit,
              :plan_id,
              :pricing_type,
              :resource_id,
              :status
            ]
          parsed, options = Stigg::V1::SubscriptionListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/subscriptions",
            query: query.transform_keys(
              created_at: "createdAt",
              customer_id: "customerId",
              plan_id: "planId",
              pricing_type: "pricingType",
              resource_id: "resourceId"
            ),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::SubscriptionListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionCancelParams} for more details.
        #
        # Cancels an active subscription, either immediately or at a specified time such
        # as end of billing period.
        #
        # @overload cancel(id, cancellation_action: nil, cancellation_time: nil, end_date: nil, prorate: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param cancellation_action [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationAction] Body param: Action on cancellation (downgrade or revoke)
        #
        # @param cancellation_time [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationTime] Body param: When to cancel (immediate, period end, or date)
        #
        # @param end_date [Time] Body param: Subscription end date
        #
        # @param prorate [Boolean] Body param: If set, enables or disables prorating of credits on subscription can
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionCancelParams
        def cancel(id, params = {})
          parsed, options = Stigg::V1::SubscriptionCancelParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/cancel", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
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
        # @overload delegate(id, target_customer_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param target_customer_id [String] Body param: The unique identifier of the customer who will assume payment respon
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionDelegateParams
        def delegate(id, params)
          parsed, options = Stigg::V1::SubscriptionDelegateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/delegate", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionImportParams} for more details.
        #
        # Imports multiple subscriptions in bulk. Used for migrating subscription data
        # from external systems.
        #
        # @overload import(subscriptions:, integration_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param subscriptions [Array<Stigg::Models::V1::SubscriptionImportParams::Subscription>] Body param: List of subscription objects to import
        #
        # @param integration_id [String, nil] Body param: Integration ID to use for importing subscriptions
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionImportResponse]
        #
        # @see Stigg::Models::V1::SubscriptionImportParams
        def import(params)
          parsed, options = Stigg::V1::SubscriptionImportParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/subscriptions/import",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::SubscriptionImportResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionMigrateParams} for more details.
        #
        # Migrates a subscription to the latest published version of its plan or add-ons.
        # Handles prorated charges or credits automatically.
        #
        # @overload migrate(id, subscription_migration_time: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param subscription_migration_time [Symbol, Stigg::Models::V1::SubscriptionMigrateParams::SubscriptionMigrationTime] Body param: When to migrate (immediate or period end)
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionMigrateParams
        def migrate(id, params = {})
          parsed, options = Stigg::V1::SubscriptionMigrateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/migrate", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Subscription,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionPreviewParams} for more details.
        #
        # Previews the pricing impact of creating or updating a subscription without
        # making changes. Returns estimated costs, taxes, and proration details.
        #
        # @overload preview(customer_id:, plan_id:, addons: nil, applied_coupon: nil, billable_features: nil, billing_country_code: nil, billing_cycle_anchor: nil, billing_information: nil, billing_period: nil, charges: nil, paying_customer_id: nil, resource_id: nil, schedule_strategy: nil, start_date: nil, trial_override_configuration: nil, unit_quantity: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customer_id [String] Body param: Customer ID
        #
        # @param plan_id [String] Body param: Plan ID
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionPreviewParams::Addon>] Body param: Addons to include
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon] Body param: Coupon or discount to apply
        #
        # @param billable_features [Array<Stigg::Models::V1::SubscriptionPreviewParams::BillableFeature>] Body param: Billable features with quantities
        #
        # @param billing_country_code [String] Body param: ISO 3166-1 country code for localization
        #
        # @param billing_cycle_anchor [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingCycleAnchor] Body param: Billing cycle anchor behavior for the subscription
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation] Body param: Billing and tax configuration
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingPeriod] Body param: Billing period (MONTHLY or ANNUALLY)
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionPreviewParams::Charge>] Body param: One-time or recurring charges
        #
        # @param paying_customer_id [String] Body param: Paying customer ID for delegated billing
        #
        # @param resource_id [String] Body param: Resource ID for multi-instance subscriptions
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::ScheduleStrategy] Body param: When to apply subscription changes
        #
        # @param start_date [Time] Body param: Subscription start date
        #
        # @param trial_override_configuration [Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration] Body param: Trial period override settings
        #
        # @param unit_quantity [Integer] Body param: Unit quantity for per-unit pricing. Minimum is 0 (zero is allowed).
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionPreviewResponse]
        #
        # @see Stigg::Models::V1::SubscriptionPreviewParams
        def preview(params)
          parsed, options = Stigg::V1::SubscriptionPreviewParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/subscriptions/preview",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::SubscriptionPreviewResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionProvisionParams} for more details.
        #
        # Creates a new subscription for an existing customer. When payment is required
        # and no payment method exists, returns a checkout URL.
        #
        # @overload provision(customer_id:, plan_id:, id: nil, addons: nil, applied_coupon: nil, await_payment_confirmation: nil, billing_country_code: nil, billing_cycle_anchor: nil, billing_id: nil, billing_information: nil, billing_period: nil, budget: nil, cancellation_date: nil, charges: nil, checkout_options: nil, entitlements: nil, metadata: nil, minimum_spend: nil, paying_customer_id: nil, payment_collection_method: nil, price_overrides: nil, resource_id: nil, salesforce_id: nil, schedule_strategy: nil, start_date: nil, trial_override_configuration: nil, unit_quantity: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param customer_id [String] Body param: Customer ID to provision the subscription for
        #
        # @param plan_id [String] Body param: Plan ID to provision
        #
        # @param id [String] Body param: Unique identifier for the subscription
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionProvisionParams::Addon>] Body param
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon] Body param: Coupon configuration
        #
        # @param await_payment_confirmation [Boolean] Body param: Whether to wait for payment confirmation before returning the subscr
        #
        # @param billing_country_code [String, nil] Body param: The ISO 3166-1 alpha-2 country code for billing
        #
        # @param billing_cycle_anchor [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingCycleAnchor] Body param: Billing cycle anchor behavior for the subscription
        #
        # @param billing_id [String, nil] Body param: External billing system identifier
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation] Body param
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingPeriod] Body param: Billing period (MONTHLY or ANNUALLY)
        #
        # @param budget [Stigg::Models::V1::SubscriptionProvisionParams::Budget, nil] Body param
        #
        # @param cancellation_date [Time] Body param: Subscription cancellation date
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionProvisionParams::Charge>] Body param
        #
        # @param checkout_options [Stigg::Models::V1::SubscriptionProvisionParams::CheckoutOptions] Body param: Checkout page configuration for payment collection
        #
        # @param entitlements [Array<Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Credit>] Body param
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Additional metadata for the subscription
        #
        # @param minimum_spend [Stigg::Models::V1::SubscriptionProvisionParams::MinimumSpend, nil] Body param: Minimum spend amount
        #
        # @param paying_customer_id [String, nil] Body param: Optional paying customer ID for split billing scenarios
        #
        # @param payment_collection_method [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PaymentCollectionMethod] Body param: How payments should be collected for this subscription
        #
        # @param price_overrides [Array<Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride>] Body param
        #
        # @param resource_id [String, nil] Body param: Optional resource ID for multi-instance subscriptions
        #
        # @param salesforce_id [String, nil] Body param: Salesforce ID
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::ScheduleStrategy] Body param: Strategy for scheduling subscription changes
        #
        # @param start_date [Time] Body param: Subscription start date
        #
        # @param trial_override_configuration [Stigg::Models::V1::SubscriptionProvisionParams::TrialOverrideConfiguration] Body param: Trial period override settings
        #
        # @param unit_quantity [Integer] Body param: Unit quantity for per-unit pricing. Minimum is 0 (zero is allowed).
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionProvisionResponse]
        #
        # @see Stigg::Models::V1::SubscriptionProvisionParams
        def provision(params)
          parsed, options = Stigg::V1::SubscriptionProvisionParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/subscriptions",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::SubscriptionProvisionResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionTransferParams} for more details.
        #
        # Transfers a subscription to a different resource ID. Used for multi-resource
        # products where subscriptions apply to specific entities like websites or apps.
        #
        # @overload transfer(id, destination_resource_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param destination_resource_id [String] Body param: Resource ID to transfer the subscription to
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Subscription]
        #
        # @see Stigg::Models::V1::SubscriptionTransferParams
        def transfer(id, params)
          parsed, options = Stigg::V1::SubscriptionTransferParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: ["api/v1/subscriptions/%1$s/transfer", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
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
