# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        # @return [Stigg::Resources::V1::Subscriptions::FutureUpdate]
        attr_reader :future_update

        # Create a new Subscription
        #
        # @overload create(customer_id:, plan_id:, id: nil, await_payment_confirmation: nil, billing_period: nil, checkout_options: nil, metadata: nil, paying_customer_id: nil, resource_id: nil, trial_override_configuration: nil, request_options: {})
        #
        # @param customer_id [String] Customer ID to provision the subscription for
        #
        # @param plan_id [String] Plan ID to provision
        #
        # @param id [String, nil] Unique identifier for the subscription
        #
        # @param await_payment_confirmation [Boolean] Whether to wait for payment confirmation before returning the subscription
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionCreateParams::BillingPeriod]
        #
        # @param checkout_options [Stigg::Models::V1::SubscriptionCreateParams::CheckoutOptions]
        #
        # @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        # @param paying_customer_id [String, nil] Optional paying customer ID for split billing scenarios
        #
        # @param resource_id [String, nil] Optional resource ID for multi-instance subscriptions
        #
        # @param trial_override_configuration [Stigg::Models::V1::SubscriptionCreateParams::TrialOverrideConfiguration]
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

        # Get a single Subscription by id
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String]
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

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionListParams} for more details.
        #
        # Get a list of Subscriptions
        #
        # @overload list(after: nil, before: nil, customer_id: nil, limit: nil, status: nil, request_options: {})
        #
        # @param after [String] Starting after this UUID for pagination
        #
        # @param before [String] Ending before this UUID for pagination
        #
        # @param customer_id [String] Filter by customer ID
        #
        # @param limit [Integer] Items per page
        #
        # @param status [String] Filter by subscription status (comma-separated for multiple statuses, e.g., ACTI
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::SubscriptionListResponse]
        #
        # @see Stigg::Models::V1::SubscriptionListParams
        def list(params = {})
          parsed, options = Stigg::V1::SubscriptionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/v1/subscriptions",
            query: parsed.transform_keys(customer_id: "customerId"),
            model: Stigg::Models::V1::SubscriptionListResponse,
            options: options
          )
        end

        # Perform delegate on a Subscription
        #
        # @overload delegate(id, target_customer_id:, request_options: {})
        #
        # @param id [String]
        #
        # @param target_customer_id [String] The customer ID to delegate the subscription to
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

        # Perform migrate to latest plan version on a Subscription
        #
        # @overload migrate(id, subscription_migration_time: nil, request_options: {})
        #
        # @param id [String]
        #
        # @param subscription_migration_time [Symbol, Stigg::Models::V1::SubscriptionMigrateParams::SubscriptionMigrationTime] When to migrate the subscription: IMMEDIATE or END_OF_BILLING_PERIOD
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

        # Create a new Subscription Preview
        #
        # @overload preview(customer_id:, plan_id:, addons: nil, applied_coupon: nil, billable_features: nil, billing_country_code: nil, billing_information: nil, billing_period: nil, charges: nil, paying_customer_id: nil, resource_id: nil, schedule_strategy: nil, start_date: nil, trial_override_configuration: nil, unit_quantity: nil, request_options: {})
        #
        # @param customer_id [String] Customer ID
        #
        # @param plan_id [String] Plan ID
        #
        # @param addons [Array<Stigg::Models::V1::SubscriptionPreviewParams::Addon>]
        #
        # @param applied_coupon [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon]
        #
        # @param billable_features [Array<Stigg::Models::V1::SubscriptionPreviewParams::BillableFeature>]
        #
        # @param billing_country_code [String]
        #
        # @param billing_information [Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation]
        #
        # @param billing_period [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingPeriod]
        #
        # @param charges [Array<Stigg::Models::V1::SubscriptionPreviewParams::Charge>]
        #
        # @param paying_customer_id [String]
        #
        # @param resource_id [String]
        #
        # @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::ScheduleStrategy]
        #
        # @param start_date [Time] Subscription start date
        #
        # @param trial_override_configuration [Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration]
        #
        # @param unit_quantity [Float]
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

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::SubscriptionTransferParams} for more details.
        #
        # Perform transfer to resource on a Subscription
        #
        # @overload transfer(id, destination_resource_id:, request_options: {})
        #
        # @param id [String]
        #
        # @param destination_resource_id [String] The resource ID to transfer the subscription to. The destination resource must b
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
