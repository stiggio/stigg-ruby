# typed: strong

module Stigg
  module Resources
    class V1
      class Plans
        class Entitlements
          # Creates one or more entitlements (feature or credit) on a draft plan.
          sig do
            params(
              plan_id: String,
              entitlements:
                T::Array[
                  T.any(
                    Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::OrHash,
                    Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Credit::OrHash
                  )
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Plans::EntitlementCreateResponse)
          end
          def create(
            # Path param: The plan ID
            plan_id,
            # Body param: Entitlements to create
            entitlements:,
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

          # Updates an existing entitlement on a draft plan.
          sig do
            params(
              id: String,
              plan_id: String,
              body:
                T.any(
                  Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::OrHash,
                  Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::OrHash
                ),
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Plans::PlanEntitlement)
          end
          def update(
            # Path param: The feature ID or custom currency ID of the entitlement
            id,
            # Path param: The plan ID
            plan_id:,
            # Body param: Request to update a plan entitlement
            body:,
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

          # Retrieves a list of entitlements for a plan.
          sig do
            params(
              plan_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Plans::EntitlementListResponse)
          end
          def list(
            # The plan ID
            plan_id,
            # Account ID — optional when authenticating with a user JWT (Bearer token); falls
            # back to the user's first membership. Ignored for API-key auth.
            x_account_id: nil,
            # Environment ID — required when authenticating with a user JWT (Bearer token) on
            # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
            # key).
            x_environment_id: nil,
            request_options: {}
          )
          end

          # Deletes an entitlement from a draft plan.
          sig do
            params(
              id: String,
              plan_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Plans::PlanEntitlement)
          end
          def delete(
            # Path param: The feature ID or custom currency ID of the entitlement
            id,
            # Path param: The plan ID
            plan_id:,
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
