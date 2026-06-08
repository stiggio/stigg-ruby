# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Credits
        # Operations related to credit grants
        class Grants
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::GrantCreateParams} for more details.
          #
          # Creates a new credit grant for a customer with specified amount, type, and
          # optional billing configuration.
          #
          # @overload create(amount:, currency_id:, customer_id:, display_name:, grant_type:, await_payment_confirmation: nil, billing_information: nil, comment: nil, cost: nil, effective_at: nil, expire_at: nil, metadata: nil, payment_collection_method: nil, priority: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param amount [Float] Body param: The credit amount to grant
          #
          # @param currency_id [String] Body param: The credit currency ID (required)
          #
          # @param customer_id [String] Body param: The customer ID to grant credits to (required)
          #
          # @param display_name [String] Body param: The display name for the credit grant
          #
          # @param grant_type [Symbol, Stigg::Models::V1::Credits::GrantCreateParams::GrantType] Body param: The type of credit grant (PAID, PROMOTIONAL)
          #
          # @param await_payment_confirmation [Boolean] Body param: Whether to wait for payment confirmation before returning (default:
          #
          # @param billing_information [Stigg::Models::V1::Credits::GrantCreateParams::BillingInformation] Body param: Billing information for the credit grant
          #
          # @param comment [String] Body param: An optional comment on the credit grant
          #
          # @param cost [Stigg::Models::V1::Credits::GrantCreateParams::Cost] Body param: The monetary cost of the credit grant
          #
          # @param effective_at [Time] Body param: The date when the credit grant becomes effective
          #
          # @param expire_at [Time] Body param: The date when the credit grant expires
          #
          # @param metadata [Hash{Symbol=>String}] Body param: Additional metadata for the credit grant
          #
          # @param payment_collection_method [Symbol, Stigg::Models::V1::Credits::GrantCreateParams::PaymentCollectionMethod] Body param: The payment collection method (CHARGE, INVOICE, NONE)
          #
          # @param priority [Integer] Body param: The priority of the credit grant (lower number = higher priority)
          #
          # @param resource_id [String] Body param: The resource ID to scope the grant to
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CreditGrantResponse]
          #
          # @see Stigg::Models::V1::Credits::GrantCreateParams
          def create(params)
            parsed, options = Stigg::V1::Credits::GrantCreateParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: "api/v1/credits/grants",
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::V1::Credits::CreditGrantResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::GrantListParams} for more details.
          #
          # Retrieves a paginated list of credit grants for a customer.
          #
          # @overload list(customer_id:, after: nil, before: nil, created_at: nil, currency_id: nil, limit: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param customer_id [String] Query param: Filter by customer ID (required)
          #
          # @param after [String] Query param: Return items that come after this cursor
          #
          # @param before [String] Query param: Return items that come before this cursor
          #
          # @param created_at [Stigg::Models::V1::Credits::GrantListParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
          #
          # @param currency_id [String] Query param: Filter by currency ID
          #
          # @param limit [Integer] Query param: Maximum number of items to return
          #
          # @param resource_id [String] Query param: Filter by resource ID. When omitted, only grants without a resource
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Credits::GrantListResponse>]
          #
          # @see Stigg::Models::V1::Credits::GrantListParams
          def list(params)
            query_params = [:customer_id, :after, :before, :created_at, :currency_id, :limit, :resource_id]
            parsed, options = Stigg::V1::Credits::GrantListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :get,
              path: "api/v1/credits/grants",
              query: query.transform_keys(
                customer_id: "customerId",
                created_at: "createdAt",
                currency_id: "currencyId",
                resource_id: "resourceId"
              ),
              headers: parsed.except(*query_params).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Credits::GrantListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::GrantVoidParams} for more details.
          #
          # Voids an existing credit grant, preventing further consumption of the remaining
          # credits.
          #
          # @overload void(id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::CreditGrantResponse]
          #
          # @see Stigg::Models::V1::Credits::GrantVoidParams
          def void(id, params = {})
            parsed, options = Stigg::V1::Credits::GrantVoidParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/credits/grants/%1$s/void", id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::V1::Credits::CreditGrantResponse,
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
