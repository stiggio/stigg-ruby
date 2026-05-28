# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            class Entitlements
              # Some parameter documentations has been truncated, see
              # {Stigg::Models::V1::Events::Beta::Customers::EntitlementCheckParams} for more
              # details.
              #
              # Experimental — request and response shapes may change without notice. Same
              # semantics as `Check entitlement`, plus an optional `dimensions` query param that
              # resolves to per-entity governance limits surfaced as `chains` on the response.
              #
              # @overload check(id, currency_id: nil, dimensions: nil, feature_id: nil, requested_usage: nil, requested_values: nil, resource_id: nil, request_options: {})
              #
              # @param id [String] The unique identifier of the entity
              #
              # @param currency_id [String] Currency ID (refId) to check for credit entitlements. Mutually exclusive with `f
              #
              # @param dimensions [Hash{Symbol=>String}] Optional attribution map (e.g. `dimensions[userId]=u1`). When provided, the resp
              #
              # @param feature_id [String] Feature ID (refId) to check. Mutually exclusive with `currencyId`.
              #
              # @param requested_usage [Integer] Requested usage amount to evaluate against the entitlement limit (numeric featur
              #
              # @param requested_values [Array<String>] Requested values to evaluate against allowed values (enum features only)
              #
              # @param resource_id [String] Resource ID to scope the entitlement check to a specific resource
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Models::V1::Events::Beta::Customers::EntitlementCheckResponse]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::EntitlementCheckParams
              def check(id, params = {})
                parsed, options = Stigg::V1::Events::Beta::Customers::EntitlementCheckParams.dump_request(params)
                query = Stigg::Internal::Util.encode_query_params(parsed)
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
                  model: Stigg::Models::V1::Events::Beta::Customers::EntitlementCheckResponse,
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
  end
end
