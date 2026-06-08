# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Subscriptions
        # Operations related to subscriptions
        class Usage
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Subscriptions::UsageChargeUsageParams} for more details.
          #
          # Immediately charges usage for a subscription via the billing integration.
          # Calculates usage since the last charge and creates an invoice.
          #
          # @overload charge_usage(id, until_date: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The unique identifier of the entity
          #
          # @param until_date [Time] Body param: Cutoff date for usage calculation. If not provided, the current time
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse]
          #
          # @see Stigg::Models::V1::Subscriptions::UsageChargeUsageParams
          def charge_usage(id, params = {})
            parsed, options = Stigg::V1::Subscriptions::UsageChargeUsageParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1/subscriptions/%1$s/usage/charge", id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1::Subscriptions::UsageSyncParams} for more details.
          #
          # Triggers a usage sync for a subscription, reporting current usage to the billing
          # provider.
          #
          # @overload sync(id, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
          #
          # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Subscriptions::UsageSyncResponse]
          #
          # @see Stigg::Models::V1::Subscriptions::UsageSyncParams
          def sync(id, params = {})
            parsed, options = Stigg::V1::Subscriptions::UsageSyncParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/v1/subscriptions/%1$s/usage/sync", id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1::Subscriptions::UsageSyncResponse,
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
