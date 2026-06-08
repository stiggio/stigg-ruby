# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to plans
      class Plans
        # @return [Stigg::Resources::V1::Plans::Entitlements]
        attr_reader :entitlements

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanCreateParams} for more details.
        #
        # Creates a new plan in draft status.
        #
        # @overload create(id:, display_name:, product_id:, billing_id: nil, default_trial_config: nil, description: nil, metadata: nil, parent_plan_id: nil, pricing_type: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Body param: The unique identifier for the entity
        #
        # @param display_name [String] Body param: The display name of the package
        #
        # @param product_id [String] Body param: The product ID to associate the plan with
        #
        # @param billing_id [String, nil] Body param: The unique identifier for the entity in the billing provider
        #
        # @param default_trial_config [Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig, nil] Body param: Default trial configuration for the plan
        #
        # @param description [String, nil] Body param: The description of the package
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Metadata associated with the entity
        #
        # @param parent_plan_id [String, nil] Body param: The ID of the parent plan, if applicable
        #
        # @param pricing_type [Symbol, Stigg::Models::V1::PlanCreateParams::PricingType, nil] Body param: The pricing type of the package
        #
        # @param status [Symbol, Stigg::Models::V1::PlanCreateParams::Status] Body param: The status of the package
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Plan]
        #
        # @see Stigg::Models::V1::PlanCreateParams
        def create(params)
          parsed, options = Stigg::V1::PlanCreateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/plans",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Plan,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanRetrieveParams} for more details.
        #
        # Retrieves a plan by its unique identifier, including entitlements and pricing
        # details.
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
        # @return [Stigg::Models::V1::Plan]
        #
        # @see Stigg::Models::V1::PlanRetrieveParams
        def retrieve(id, params = {})
          parsed, options = Stigg::V1::PlanRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/plans/%1$s", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Plan,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanUpdateParams} for more details.
        #
        # Updates an existing plan's properties such as display name, description, and
        # metadata.
        #
        # @overload update(id, billing_id: nil, charges: nil, compatible_addon_ids: nil, default_trial_config: nil, description: nil, display_name: nil, metadata: nil, parent_plan_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param billing_id [String, nil] Body param: The unique identifier for the entity in the billing provider
        #
        # @param charges [Stigg::Models::V1::PlanUpdateParams::Charges] Body param: Pricing configuration to set on the plan draft
        #
        # @param compatible_addon_ids [Array<String>, nil] Body param
        #
        # @param default_trial_config [Stigg::Models::V1::PlanUpdateParams::DefaultTrialConfig, nil] Body param: Default trial configuration for the plan
        #
        # @param description [String, nil] Body param: The description of the package
        #
        # @param display_name [String] Body param: The display name of the package
        #
        # @param metadata [Hash{Symbol=>String}] Body param: Metadata associated with the entity
        #
        # @param parent_plan_id [String, nil] Body param: The ID of the parent plan, if applicable
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Plan]
        #
        # @see Stigg::Models::V1::PlanUpdateParams
        def update(id, params = {})
          parsed, options = Stigg::V1::PlanUpdateParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/plans/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Plan,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanListParams} for more details.
        #
        # Retrieves a paginated list of plans in the environment.
        #
        # @overload list(after: nil, before: nil, created_at: nil, limit: nil, product_id: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::PlanListParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param product_id [String] Query param: Filter by product ID
        #
        # @param status [Array<Symbol, Stigg::Models::V1::PlanListParams::Status>] Query param: Filter by status. Supports comma-separated values for multiple stat
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::PlanListResponse>]
        #
        # @see Stigg::Models::V1::PlanListParams
        def list(params = {})
          query_params = [:after, :before, :created_at, :limit, :product_id, :status]
          parsed, options = Stigg::V1::PlanListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/plans",
            query: query.transform_keys(created_at: "createdAt", product_id: "productId"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::PlanListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanArchiveParams} for more details.
        #
        # Archives a plan, preventing it from being used in new subscriptions.
        #
        # @overload archive(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Plan]
        #
        # @see Stigg::Models::V1::PlanArchiveParams
        def archive(id, params = {})
          parsed, options = Stigg::V1::PlanArchiveParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/plans/%1$s/archive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Plan,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanCreateDraftParams} for more details.
        #
        # Creates a draft version of an existing plan for modification before publishing.
        #
        # @overload create_draft(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Plan]
        #
        # @see Stigg::Models::V1::PlanCreateDraftParams
        def create_draft(id, params = {})
          parsed, options = Stigg::V1::PlanCreateDraftParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/plans/%1$s/draft", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Plan,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanListChargesParams} for more details.
        #
        # Retrieves the list of charges configured on a plan.
        #
        # @overload list_charges(id, after: nil, before: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::PlanListChargesResponse>]
        #
        # @see Stigg::Models::V1::PlanListChargesParams
        def list_charges(id, params = {})
          query_params = [:after, :before, :limit]
          parsed, options = Stigg::V1::PlanListChargesParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: ["api/v1/plans/%1$s/charges", id],
            query: query,
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::PlanListChargesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanListOverageChargesParams} for more details.
        #
        # Retrieves the list of overage charges configured on a plan.
        #
        # @overload list_overage_charges(id, after: nil, before: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::PlanListOverageChargesResponse>]
        #
        # @see Stigg::Models::V1::PlanListOverageChargesParams
        def list_overage_charges(id, params = {})
          query_params = [:after, :before, :limit]
          parsed, options = Stigg::V1::PlanListOverageChargesParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: ["api/v1/plans/%1$s/overage-charges", id],
            query: query,
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::PlanListOverageChargesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanPublishParams} for more details.
        #
        # Publishes a draft plan, making it available for use in subscriptions.
        #
        # @overload publish(id, migration_type:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param migration_type [Symbol, Stigg::Models::V1::PlanPublishParams::MigrationType] Body param: The migration type of the package
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::PlanPublishResponse]
        #
        # @see Stigg::Models::V1::PlanPublishParams
        def publish(id, params)
          parsed, options = Stigg::V1::PlanPublishParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: ["api/v1/plans/%1$s/publish", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::PlanPublishResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::PlanRemoveDraftParams} for more details.
        #
        # Removes a draft version of a plan.
        #
        # @overload remove_draft(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::PlanRemoveDraftResponse]
        #
        # @see Stigg::Models::V1::PlanRemoveDraftParams
        def remove_draft(id, params = {})
          parsed, options = Stigg::V1::PlanRemoveDraftParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["api/v1/plans/%1$s/draft", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::PlanRemoveDraftResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
          @entitlements = Stigg::Resources::V1::Plans::Entitlements.new(client: client)
        end
      end
    end
  end
end
