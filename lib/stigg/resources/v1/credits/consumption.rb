# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Credits
        class Consumption
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::ConsumptionConsumeParams} for more details.
          #
          # Consumes a specified amount of credits directly from a customer wallet, with no
          # feature mapping. Returns the optimistic balance.
          #
          # @overload consume(amount:, currency_id:, customer_id:, idempotency_key:, created_at: nil, dimensions: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param amount [Float] Body param: The amount of credits to consume
          #
          # @param currency_id [String] Body param: The credit currency to consume from (required)
          #
          # @param customer_id [String] Body param: The customer to consume credits from (required)
          #
          # @param idempotency_key [String] Body param: A unique key used to deduplicate the consumption (required)
          #
          # @param created_at [Time] Body param: Optional timestamp the consumption is attributed to
          #
          # @param dimensions [Hash{Symbol=>String, Float, Boolean}] Body param: Optional dimensions describing the consumption
          #
          # @param resource_id [String] Body param: Optional resource the consumption is attributed to
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::ConsumptionConsumeResponse]
          #
          # @see Stigg::Models::V1::Credits::ConsumptionConsumeParams
          def consume(params)
            parsed, options = Stigg::V1::Credits::ConsumptionConsumeParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: "api/v1/credits/consumption",
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1::Credits::ConsumptionConsumeResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Credits::ConsumptionConsumeAsyncParams} for more details.
          #
          # Consumes credits directly from customer wallets asynchronously. Consumptions are
          # reconciled asynchronously into the credit balances.
          #
          # @overload consume_async(consumptions:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param consumptions [Array<Stigg::Models::V1::Credits::ConsumptionConsumeAsyncParams::Consumption>] Body param: The credit consumptions to report (up to 1000)
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Credits::ConsumptionConsumeAsyncResponse]
          #
          # @see Stigg::Models::V1::Credits::ConsumptionConsumeAsyncParams
          def consume_async(params)
            parsed, options = Stigg::V1::Credits::ConsumptionConsumeAsyncParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: "api/v1/credits/consumption/async",
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1::Credits::ConsumptionConsumeAsyncResponse,
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
