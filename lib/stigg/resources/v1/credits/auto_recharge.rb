# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Credits
        class AutoRecharge
          # Retrieves the automatic recharge configuration for a customer and currency.
          # Returns default settings if no configuration exists.
          #
          # @overload get_auto_recharge(currency_id:, customer_id:, request_options: {})
          #
          # @param currency_id [String] Filter by currency ID (required)
          #
          # @param customer_id [String] Filter by customer ID (required)
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::AutoRechargeGetAutoRechargeResponse]
          #
          # @see Stigg::Models::V1::Credits::AutoRechargeGetAutoRechargeParams
          def get_auto_recharge(params)
            parsed, options = Stigg::V1::Credits::AutoRechargeGetAutoRechargeParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "api/v1/credits/auto-recharge",
              query: query.transform_keys(currency_id: "currencyId", customer_id: "customerId"),
              model: Stigg::Models::V1::Credits::AutoRechargeGetAutoRechargeResponse,
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
