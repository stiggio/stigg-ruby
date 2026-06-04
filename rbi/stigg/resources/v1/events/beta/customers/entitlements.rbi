# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            class Entitlements
              # Experimental — request and response shapes may change without notice. Same
              # semantics as `Check entitlement`, plus an optional `dimensions` query param that
              # resolves to per-entity governance limits surfaced as `chains` on the response.
              sig do
                params(
                  id: String,
                  currency_id: String,
                  dimensions: T::Hash[Symbol, String],
                  feature_id: String,
                  requested_usage: Integer,
                  requested_values: T::Array[String],
                  resource_id: String,
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Models::V1::Events::Beta::Customers::EntitlementCheckResponse
                )
              end
              def check(
                # The unique identifier of the entity
                id,
                # Currency ID (refId) to check for credit entitlements. Mutually exclusive with
                # `featureId`.
                currency_id: nil,
                # Optional attribution map (e.g. `dimensions[userId]=u1`). When provided, the
                # response includes a `chains` array with per-entity governance limits.
                dimensions: nil,
                # Feature ID (refId) to check. Mutually exclusive with `currencyId`.
                feature_id: nil,
                # Requested usage amount to evaluate against the entitlement limit (numeric
                # features only)
                requested_usage: nil,
                # Requested values to evaluate against allowed values (enum features only)
                requested_values: nil,
                # Resource ID to scope the entitlement check to a specific resource
                resource_id: nil,
                request_options: {}
              )
              end

              # @api private
              sig { params(client: Stigg::Client).returns(T.attached_class) }
              def self.new(client:)
              end
            end
          end
        end
      end
    end
  end
end
