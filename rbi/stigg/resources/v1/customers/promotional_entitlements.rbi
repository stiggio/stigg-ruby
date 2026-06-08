# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        # Operations related to promotional entitlements
        class PromotionalEntitlements
          # Grants promotional entitlements to a customer, providing feature access outside
          # their subscription. Entitlements can be time-limited or permanent.
          sig do
            params(
              id: String,
              promotional_entitlements:
                T::Array[
                  Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::OrHash
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Customers::PromotionalEntitlementCreateResponse
            )
          end
          def create(
            # Path param: The unique identifier of the entity
            id,
            # Body param: Promotional entitlements to grant
            promotional_entitlements:,
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

          # Retrieves a paginated list of a customer's promotional entitlements.
          sig do
            params(
              id: String,
              after: String,
              before: String,
              created_at:
                Stigg::V1::Customers::PromotionalEntitlementListParams::CreatedAt::OrHash,
              limit: Integer,
              status:
                T::Array[
                  Stigg::V1::Customers::PromotionalEntitlementListParams::Status::OrSymbol
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Customers::PromotionalEntitlementListResponse
              ]
            )
          end
          def list(
            # Path param: The unique identifier of the entity
            id,
            # Query param: Return items that come after this cursor
            after: nil,
            # Query param: Return items that come before this cursor
            before: nil,
            # Query param: Filter by creation date using range operators: gt, gte, lt, lte
            created_at: nil,
            # Query param: Maximum number of items to return
            limit: nil,
            # Query param: Filter by promotional entitlement status. Supports comma-separated
            # values for multiple statuses
            status: nil,
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

          # Revokes a previously granted promotional entitlement from a customer for a
          # specific feature.
          sig do
            params(
              feature_id: String,
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse
            )
          end
          def revoke(
            # Path param: The unique identifier of the entitlement feature
            feature_id,
            # Path param: The unique identifier of the customer
            id:,
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
