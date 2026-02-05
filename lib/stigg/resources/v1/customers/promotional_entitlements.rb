# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class PromotionalEntitlements
          # Grants promotional entitlements to a customer, providing feature access outside
          # their subscription. Entitlements can be time-limited or permanent.
          #
          # @overload grant(customer_id, promotional_entitlements:, request_options: {})
          #
          # @param customer_id [String] The unique identifier of the customer
          #
          # @param promotional_entitlements [Array<Stigg::Models::V1::Customers::PromotionalEntitlementGrantParams::PromotionalEntitlement>] Promotional entitlements to grant
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::PromotionalEntitlementGrantResponse]
          #
          # @see Stigg::Models::V1::Customers::PromotionalEntitlementGrantParams
          def grant(customer_id, params)
            parsed, options = Stigg::V1::Customers::PromotionalEntitlementGrantParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/promotional", customer_id],
              body: parsed,
              model: Stigg::Models::V1::Customers::PromotionalEntitlementGrantResponse,
              options: options
            )
          end

          # Revokes a previously granted promotional entitlement from a customer for a
          # specific feature.
          #
          # @overload revoke(feature_id, customer_id:, request_options: {})
          #
          # @param feature_id [String] The unique identifier of the entitlement feature
          #
          # @param customer_id [String] The unique identifier of the customer
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse]
          #
          # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeParams
          def revoke(feature_id, params)
            parsed, options = Stigg::V1::Customers::PromotionalEntitlementRevokeParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/v1/customers/%1$s/promotional/%2$s", customer_id, feature_id],
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
