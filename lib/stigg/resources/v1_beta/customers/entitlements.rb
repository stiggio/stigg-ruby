# frozen_string_literal: true

module Stigg
  module Resources
    class V1Beta
      class Customers
        class Entitlements
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1Beta::Customers::EntitlementCheckParams} for more details.
          #
          # Experimental — request and response shapes may change without notice. Same
          # semantics as `Check entitlement`, plus an optional `dimensions` query param that
          # resolves to per-entity governance limits surfaced as `chains` on the response.
          #
          # @overload check(id, currency_id: nil, dimensions: nil, feature_id: nil, requested_usage: nil, requested_values: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The unique identifier of the entity
          #
          # @param currency_id [String] Query param: Currency ID (refId) to check for credit entitlements. Mutually excl
          #
          # @param dimensions [Hash{Symbol=>String}] Query param: Optional attribution map (e.g. `dimensions[userId]=u1`). When provi
          #
          # @param feature_id [String] Query param: Feature ID (refId) to check. Mutually exclusive with `currencyId`.
          #
          # @param requested_usage [Integer] Query param: Requested usage amount to evaluate against the entitlement limit (n
          #
          # @param requested_values [Array<String>] Query param: Requested values to evaluate against allowed values (enum features
          #
          # @param resource_id [String] Query param: Resource ID to scope the entitlement check to a specific resource
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1Beta::Customers::EntitlementCheckResponse]
          #
          # @see Stigg::Models::V1Beta::Customers::EntitlementCheckParams
          def check(id, params = {})
            query_params =
              [:currency_id, :dimensions, :feature_id, :requested_usage, :requested_values, :resource_id]
            parsed, options = Stigg::V1Beta::Customers::EntitlementCheckParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :get,
              path: ["api/v1-beta/customers/%1$s/entitlements/check", id],
              query: query.transform_keys(
                currency_id: "currencyId",
                feature_id: "featureId",
                requested_usage: "requestedUsage",
                requested_values: "requestedValues",
                resource_id: "resourceId"
              ),
              headers: parsed.except(*query_params).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1Beta::Customers::EntitlementCheckResponse,
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
