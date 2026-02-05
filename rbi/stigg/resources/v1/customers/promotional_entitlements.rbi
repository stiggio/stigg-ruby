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
              customer_id: String,
              promotional_entitlements:
                T::Array[
                  Stigg::V1::Customers::PromotionalEntitlementGrantParams::PromotionalEntitlement::OrHash
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Customers::PromotionalEntitlementGrantResponse
            )
          end
          def grant(
            # The unique identifier of the customer
            customer_id,
            # Promotional entitlements to grant
            promotional_entitlements:,
            request_options: {}
          )
          end

          # Revokes a previously granted promotional entitlement from a customer for a
          # specific feature.
          sig do
            params(
              feature_id: String,
              customer_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse
            )
          end
          def revoke(
            # The unique identifier of the entitlement feature
            feature_id,
            # The unique identifier of the customer
            customer_id:,
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
