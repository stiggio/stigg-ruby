# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Credits
          # Operations related to credit grants
          class Grants
            # Creates a new credit grant for a customer with specified amount, type, and
            # optional billing configuration.
            #
            # @overload create(amount:, currency_id:, customer_id:, display_name:, grant_type:, await_payment_confirmation: nil, billing_information: nil, comment: nil, cost: nil, effective_at: nil, expire_at: nil, metadata: nil, payment_collection_method: nil, priority: nil, resource_id: nil, request_options: {})
            #
            # @param amount [Float] The credit amount to grant
            #
            # @param currency_id [String] The credit currency ID (required)
            #
            # @param customer_id [String] The customer ID to grant credits to (required)
            #
            # @param display_name [String] The display name for the credit grant
            #
            # @param grant_type [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::GrantType] The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            #
            # @param await_payment_confirmation [Boolean] Whether to wait for payment confirmation before returning (default: true)
            #
            # @param billing_information [Stigg::Models::V1::Events::Credits::GrantCreateParams::BillingInformation] Billing information for the credit grant
            #
            # @param comment [String] An optional comment on the credit grant
            #
            # @param cost [Stigg::Models::V1::Events::Credits::GrantCreateParams::Cost] The monetary cost of the credit grant
            #
            # @param effective_at [Time] The date when the credit grant becomes effective
            #
            # @param expire_at [Time] The date when the credit grant expires
            #
            # @param metadata [Hash{Symbol=>String}] Additional metadata for the credit grant
            #
            # @param payment_collection_method [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod] The payment collection method (CHARGE, INVOICE, NONE)
            #
            # @param priority [Integer] The priority of the credit grant (lower number = higher priority)
            #
            # @param resource_id [String] The resource ID to scope the grant to
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Credits::CreditGrantResponse]
            #
            # @see Stigg::Models::V1::Events::Credits::GrantCreateParams
            def create(params)
              parsed, options = Stigg::V1::Events::Credits::GrantCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/credits/grants",
                body: parsed,
                model: Stigg::V1::Events::Credits::CreditGrantResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Events::Credits::GrantListParams} for more details.
            #
            # Retrieves a paginated list of credit grants for a customer.
            #
            # @overload list(customer_id:, after: nil, before: nil, created_at: nil, currency_id: nil, limit: nil, resource_id: nil, request_options: {})
            #
            # @param customer_id [String] Filter by customer ID (required)
            #
            # @param after [String] Return items that come after this cursor
            #
            # @param before [String] Return items that come before this cursor
            #
            # @param created_at [Stigg::Models::V1::Events::Credits::GrantListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
            #
            # @param currency_id [String] Filter by currency ID
            #
            # @param limit [Integer] Maximum number of items to return
            #
            # @param resource_id [String] Filter by resource ID. When omitted, only grants without a resource are returned
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::Credits::GrantListResponse>]
            #
            # @see Stigg::Models::V1::Events::Credits::GrantListParams
            def list(params)
              parsed, options = Stigg::V1::Events::Credits::GrantListParams.dump_request(params)
              query = Stigg::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: "api/v1/credits/grants",
                query: query.transform_keys(
                  customer_id: "customerId",
                  created_at: "createdAt",
                  currency_id: "currencyId",
                  resource_id: "resourceId"
                ),
                page: Stigg::Internal::MyCursorIDPage,
                model: Stigg::Models::V1::Events::Credits::GrantListResponse,
                options: options
              )
            end

            # Voids an existing credit grant, preventing further consumption of the remaining
            # credits.
            #
            # @overload void(id, request_options: {})
            #
            # @param id [String] The unique identifier of the entity
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Credits::CreditGrantResponse]
            #
            # @see Stigg::Models::V1::Events::Credits::GrantVoidParams
            def void(id, params = {})
              @client.request(
                method: :post,
                path: ["api/v1/credits/grants/%1$s/void", id],
                model: Stigg::V1::Events::Credits::CreditGrantResponse,
                options: params[:request_options]
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
end
