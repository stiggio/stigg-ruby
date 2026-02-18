# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        class Usage
          # Immediately charges usage for a subscription via the billing integration.
          # Calculates usage since the last charge and creates an invoice.
          #
          # @overload charge_usage(id, until_date: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param until_date [Time] Cutoff date for usage calculation. If not provided, the current time is used.
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse]
          #
          # @see Stigg::Models::V1::Subscriptions::UsageChargeUsageParams
          def charge_usage(id, params = {})
            parsed, options = Stigg::V1::Subscriptions::UsageChargeUsageParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/subscriptions/%1$s/usage/charge", id],
              body: parsed,
              model: Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse,
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
