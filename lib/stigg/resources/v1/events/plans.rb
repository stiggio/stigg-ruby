# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Plans
          # Creates a new plan in draft status.
          #
          # @overload create(id:, display_name:, product_id:, billing_id: nil, description: nil, metadata: nil, parent_plan_id: nil, pricing_type: nil, status: nil, request_options: {})
          #
          # @param id [String] The unique identifier for the entity
          #
          # @param display_name [String] The display name of the package
          #
          # @param product_id [String] The product ID to associate the plan with
          #
          # @param billing_id [String, nil] The unique identifier for the entity in the billing provider
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
          # @return [Stigg::Models::V1::Events::PlanCreateResponse]
          #
          # @see Stigg::Models::V1::Events::PlanCreateParams
          def create(params)
            parsed, options = Stigg::V1::Events::PlanCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/plans",
              body: parsed,
              model: Stigg::Models::V1::Events::PlanCreateResponse,
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
          # @return [Stigg::Models::V1::Events::PlanRetrieveResponse]
          #
          # @see Stigg::Models::V1::Events::PlanRetrieveParams
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/plans/%1$s", id],
              model: Stigg::Models::V1::Events::PlanRetrieveResponse,
              options: params[:request_options]
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

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
