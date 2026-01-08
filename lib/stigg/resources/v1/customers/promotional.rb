# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Customers
        class Promotional
          # Create a new Promotional Entitlements
          #
          # @overload create(customer_id, promotional_entitlements:, request_options: {})
          #
          # @param customer_id [String] The unique identifier of the entitlement customer
          #
          # @param promotional_entitlements [Array<Stigg::Models::V1::Customers::PromotionalCreateParams::PromotionalEntitlement>] Promotional entitlements to grant
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::PromotionalCreateResponse]
          #
          # @see Stigg::Models::V1::Customers::PromotionalCreateParams
          def create(customer_id, params)
            parsed, options = Stigg::V1::Customers::PromotionalCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/customers/%1$s/promotional", customer_id],
              body: parsed,
              model: Stigg::Models::V1::Customers::PromotionalCreateResponse,
              options: options
            )
          end

          # Perform revocation on a Promotional Entitlement
          #
          # @overload revoke(feature_id, customer_id:, request_options: {})
          #
          # @param feature_id [String] The unique identifier of the entitlement feature
          #
          # @param customer_id [String] The unique identifier of the entitlement customer
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Customers::PromotionalRevokeResponse]
          #
          # @see Stigg::Models::V1::Customers::PromotionalRevokeParams
          def revoke(feature_id, params)
            parsed, options = Stigg::V1::Customers::PromotionalRevokeParams.dump_request(params)
            customer_id =
              parsed.delete(:customer_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/v1/customers/%1$s/promotional/featureId/%2$s", customer_id, feature_id],
              model: Stigg::Models::V1::Customers::PromotionalRevokeResponse,
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
