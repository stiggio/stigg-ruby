# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        # Operations related to promotional entitlements
        class PromotionalEntitlements
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams} for more
          # details.
          #
          # Grants promotional entitlements to a customer, providing feature access outside
          # their subscription. Entitlements can be time-limited or permanent.
          #
          # @overload create(id, promotional_entitlements:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The unique identifier of the entity
          #
          # @param promotional_entitlements [Array<Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement>] Body param: Promotional entitlements to grant
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::PromotionalEntitlementCreateResponse]
          #
          # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams
          def create(id, params)
            parsed, options = Stigg::V1::Customers::PromotionalEntitlementCreateParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/promotional-entitlements", id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1::Customers::PromotionalEntitlementCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::PromotionalEntitlementListParams} for more
          # details.
          #
          # Retrieves a paginated list of a customer's promotional entitlements.
          #
          # @overload list(id, after: nil, before: nil, created_at: nil, limit: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The unique identifier of the entity
          #
          # @param after [String] Query param: Return items that come after this cursor
          #
          # @param before [String] Query param: Return items that come before this cursor
          #
          # @param created_at [Stigg::Models::V1::Customers::PromotionalEntitlementListParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
          #
          # @param limit [Integer] Query param: Maximum number of items to return
          #
          # @param status [Array<Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementListParams::Status>] Query param: Filter by promotional entitlement status. Supports comma-separated
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Customers::PromotionalEntitlementListResponse>]
          #
          # @see Stigg::Models::V1::Customers::PromotionalEntitlementListParams
          def list(id, params = {})
            query_params = [:after, :before, :created_at, :limit, :status]
            parsed, options = Stigg::V1::Customers::PromotionalEntitlementListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :get,
              path: ["api/v1/customers/%1$s/promotional-entitlements", id],
              query: query.transform_keys(created_at: "createdAt"),
              headers: parsed.except(*query_params).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Customers::PromotionalEntitlementListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Customers::PromotionalEntitlementRevokeParams} for more
          # details.
          #
          # Revokes a previously granted promotional entitlement from a customer for a
          # specific feature.
          #
          # @overload revoke(feature_id, id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param feature_id [String] Path param: The unique identifier of the entitlement feature
          #
          # @param id [String] Path param: The unique identifier of the customer
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse]
          #
          # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeParams
          def revoke(feature_id, params)
            parsed, options = Stigg::V1::Customers::PromotionalEntitlementRevokeParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/v1/customers/%1$s/promotional-entitlements/%2$s", id, feature_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse,
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
