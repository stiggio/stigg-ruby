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
                  x_account_id: String,
                  x_environment_id: String,
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Models::V1::Events::Beta::Customers::EntitlementCheckResponse
                )
              end
              def check(
                # Path param: The unique identifier of the entity
                id,
                # Query param: Currency ID (refId) to check for credit entitlements. Mutually
                # exclusive with `featureId`.
                currency_id: nil,
                # Query param: Optional attribution map (e.g. `dimensions[userId]=u1`). When
                # provided, the response includes a `chains` array with per-entity governance
                # limits.
                dimensions: nil,
                # Query param: Feature ID (refId) to check. Mutually exclusive with `currencyId`.
                feature_id: nil,
                # Query param: Requested usage amount to evaluate against the entitlement limit
                # (numeric features only)
                requested_usage: nil,
                # Query param: Requested values to evaluate against allowed values (enum features
                # only)
                requested_values: nil,
                # Query param: Resource ID to scope the entitlement check to a specific resource
                resource_id: nil,
                # Header param: Account ID — optional when authenticating with a user JWT (Bearer
                # token); falls back to the user's first membership. Ignored for API-key auth.
                x_account_id: nil,
                # Header param: Environment ID — required when authenticating with a user JWT
                # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
                # intrinsic to the key).
                x_environment_id: nil,
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
