# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        class Promotional
          # Create a new Promotional Entitlements
          sig do
            params(
              customer_id: String,
              promotional_entitlements:
                T::Array[
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::OrHash
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::PromotionalCreateResponse)
          end
          def create(
            # The unique identifier of the entitlement customer
            customer_id,
            # Promotional entitlements to grant
            promotional_entitlements:,
            request_options: {}
          )
          end

          # Perform revocation on a Promotional Entitlement
          sig do
            params(
              feature_id: String,
              customer_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::PromotionalRevokeResponse)
          end
          def revoke(
            # The unique identifier of the entitlement feature
            feature_id,
            # The unique identifier of the entitlement customer
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
