# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Plans
          # @return [Stigg::Resources::V1::Events::Plans::Draft]
          attr_reader :draft

          # @return [Stigg::Resources::V1::Events::Plans::Entitlements]
          attr_reader :entitlements

          # Creates a new plan in draft status.
          #
          # @overload create(id:, display_name:, product_id:, billing_id: nil, default_trial_config: nil, description: nil, metadata: nil, parent_plan_id: nil, pricing_type: nil, status: nil, request_options: {})
          #
          # @param id [String] The unique identifier for the entity
          #
          # @param display_name [String] The display name of the package
          #
          # @param product_id [String] The product ID to associate the plan with
          #
          # @param billing_id [String, nil] The unique identifier for the entity in the billing provider
          #
          # @param default_trial_config [Stigg::Models::V1::Events::PlanCreateParams::DefaultTrialConfig, nil] Default trial configuration for the plan
          #
          # @param description [String, nil] The description of the package
          #
          # @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
          #
          # @param parent_plan_id [String, nil] The ID of the parent plan, if applicable
          #
          # @param pricing_type [Symbol, Stigg::Models::V1::Events::PlanCreateParams::PricingType, nil] The pricing type of the package
          #
          # @param status [Symbol, Stigg::Models::V1::Events::PlanCreateParams::Status] The status of the package
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::Plan]
          #
          # @see Stigg::Models::V1::Events::PlanCreateParams
          def create(params)
            parsed, options = Stigg::V1::Events::PlanCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/plans",
              body: parsed,
              model: Stigg::V1::Events::Plan,
              options: options
            )
          end

          # Retrieves a plan by its unique identifier, including entitlements and pricing
          # details.
          #
          # @overload retrieve(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::Plan]
          #
          # @see Stigg::Models::V1::Events::PlanRetrieveParams
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/plans/%1$s", id],
              model: Stigg::V1::Events::Plan,
              options: params[:request_options]
            )
          end

          # Updates an existing plan's properties such as display name, description, and
          # metadata.
          #
          # @overload update(id, billing_id: nil, compatible_addon_ids: nil, default_trial_config: nil, description: nil, display_name: nil, metadata: nil, parent_plan_id: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param billing_id [String, nil] The unique identifier for the entity in the billing provider
          #
          # @param compatible_addon_ids [Array<String>, nil]
          #
          # @param default_trial_config [Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig, nil] Default trial configuration for the plan
          #
          # @param description [String, nil] The description of the package
          #
          # @param display_name [String] The display name of the package
          #
          # @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
          #
          # @param parent_plan_id [String, nil] The ID of the parent plan, if applicable
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::Plan]
          #
          # @see Stigg::Models::V1::Events::PlanUpdateParams
          def update(id, params = {})
            parsed, options = Stigg::V1::Events::PlanUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["api/v1/plans/%1$s", id],
              body: parsed,
              model: Stigg::V1::Events::Plan,
              options: options
            )
          end

          # Retrieves a paginated list of plans in the environment.
          #
          # @overload list(after: nil, before: nil, created_at: nil, limit: nil, product_id: nil, status: nil, request_options: {})
          #
          # @param after [String] Return items that come after this cursor
          #
          # @param before [String] Return items that come before this cursor
          #
          # @param created_at [Stigg::Models::V1::Events::PlanListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
          #
          # @param limit [Integer] Maximum number of items to return
          #
          # @param product_id [String] Filter by product ID
          #
          # @param status [String] Filter by status. Supports comma-separated values for multiple statuses
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::PlanListResponse>]
          #
          # @see Stigg::Models::V1::Events::PlanListParams
          def list(params = {})
            parsed, options = Stigg::V1::Events::PlanListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/v1/plans",
              query: parsed.transform_keys(created_at: "createdAt", product_id: "productId"),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Events::PlanListResponse,
              options: options
            )
          end

          # Archives a plan, preventing it from being used in new subscriptions.
          #
          # @overload archive(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::Plan]
          #
          # @see Stigg::Models::V1::Events::PlanArchiveParams
          def archive(id, params = {})
            @client.request(
              method: :post,
              path: ["api/v1/plans/%1$s/archive", id],
              model: Stigg::V1::Events::Plan,
              options: params[:request_options]
            )
          end

          # Publishes a draft plan, making it available for use in subscriptions.
          #
          # @overload publish(id, migration_type:, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param migration_type [Symbol, Stigg::Models::V1::Events::PlanPublishParams::MigrationType] The migration type of the package
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::PlanPublishResponse]
          #
          # @see Stigg::Models::V1::Events::PlanPublishParams
          def publish(id, params)
            parsed, options = Stigg::V1::Events::PlanPublishParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/plans/%1$s/publish", id],
              body: parsed,
              model: Stigg::Models::V1::Events::PlanPublishResponse,
              options: options
            )
          end

          # Sets the pricing configuration for a plan, including pricing models, overage
          # pricing, and minimum spend.
          #
          # @overload set_pricing(id, pricing_type:, billing_id: nil, minimum_spend: nil, overage_billing_period: nil, overage_pricing_models: nil, pricing_models: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param pricing_type [Symbol, Stigg::Models::V1::Events::SetPackagePricing::PricingType] The pricing type (FREE, PAID, or CUSTOM)
          #
          # @param billing_id [String] Deprecated: billing integration ID
          #
          # @param minimum_spend [Array<Stigg::Models::V1::Events::SetPackagePricing::MinimumSpend>, nil] Minimum spend configuration per billing period
          #
          # @param overage_billing_period [Symbol, Stigg::Models::V1::Events::SetPackagePricing::OverageBillingPeriod] When overage charges are billed
          #
          # @param overage_pricing_models [Array<Stigg::Models::V1::Events::SetPackagePricing::OveragePricingModel>] Array of overage pricing model configurations
          #
          # @param pricing_models [Array<Stigg::Models::V1::Events::SetPackagePricing::PricingModel>] Array of pricing model configurations
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::SetPackagePricingResponse]
          #
          # @see Stigg::Models::V1::Events::PlanSetPricingParams
          def set_pricing(id, params)
            parsed, options = Stigg::V1::Events::PlanSetPricingParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["api/v1/plans/%1$s/charges", id],
              body: parsed,
              model: Stigg::V1::Events::SetPackagePricingResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
            @draft = Stigg::Resources::V1::Events::Plans::Draft.new(client: client)
            @entitlements = Stigg::Resources::V1::Events::Plans::Entitlements.new(client: client)
          end
        end
      end
    end
  end
end
