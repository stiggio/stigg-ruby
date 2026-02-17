# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
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
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Customers::PromotionalEntitlementCreateResponse
            )
          end
          def create(
            # The unique identifier of the entity
            id,
            # Promotional entitlements to grant
            promotional_entitlements:,
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
              status: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Customers::PromotionalEntitlementListResponse
              ]
            )
          end
          def list(
            # The unique identifier of the entity
            id,
            # Return items that come after this cursor
            after: nil,
            # Return items that come before this cursor
            before: nil,
            # Filter by creation date using range operators: gt, gte, lt, lte
            created_at: nil,
            # Maximum number of items to return
            limit: nil,
            # Filter by promotional entitlement status. Supports comma-separated values for
            # multiple statuses
            status: nil,
            request_options: {}
          )
          end

          # Revokes a previously granted promotional entitlement from a customer for a
          # specific feature.
          sig do
            params(
              feature_id: String,
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse
            )
          end
          def revoke(
            # The unique identifier of the entitlement feature
            feature_id,
            # The unique identifier of the customer
            id:,
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
