# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class PromotionalEntitlements
          # Grants promotional entitlements to a customer, providing feature access outside
          # their subscription. Entitlements can be time-limited or permanent.
          #
          # @overload create(id, promotional_entitlements:, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param promotional_entitlements [Array<Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement>] Promotional entitlements to grant
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::PromotionalEntitlementCreateResponse]
          #
          # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams
          def create(id, params)
            parsed, options = Stigg::V1::Customers::PromotionalEntitlementCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/promotional-entitlements", id],
              body: parsed,
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
          # @overload list(id, after: nil, before: nil, created_at: nil, limit: nil, status: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param after [String] Return items that come after this cursor
          #
          # @param before [String] Return items that come before this cursor
          #
          # @param created_at [Stigg::Models::V1::Customers::PromotionalEntitlementListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
          #
          # @param limit [Integer] Maximum number of items to return
          #
          # @param status [String] Filter by promotional entitlement status. Supports comma-separated values for mu
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Customers::PromotionalEntitlementListResponse>]
          #
          # @see Stigg::Models::V1::Customers::PromotionalEntitlementListParams
          def list(id, params = {})
            parsed, options = Stigg::V1::Customers::PromotionalEntitlementListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["api/v1/customers/%1$s/promotional-entitlements", id],
              query: parsed.transform_keys(created_at: "createdAt"),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Customers::PromotionalEntitlementListResponse,
              options: options
            )
          end

          # Revokes a previously granted promotional entitlement from a customer for a
          # specific feature.
          #
          # @overload revoke(feature_id, id:, request_options: {})
          #
          # @param feature_id [String] The unique identifier of the entitlement feature
          #
          # @param id [String] The unique identifier of the customer
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
