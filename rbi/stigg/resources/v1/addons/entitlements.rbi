# typed: strong

module Stigg
  module Resources
    class V1
      class Addons
        class Entitlements
          # Creates one or more entitlements (feature or credit) on a draft addon.
          sig do
            params(
              addon_id: String,
              entitlements:
                T::Array[
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::OrHash
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Addons::EntitlementCreateResponse)
          end
          def create(
            # The addon ID
            addon_id,
            # Entitlements to create
            entitlements:,
            request_options: {}
          )
          end

          # Updates an existing entitlement on a draft addon.
          sig do
            params(
              id: String,
              addon_id: String,
              credit:
                Stigg::V1::Addons::EntitlementUpdateParams::Credit::OrHash,
              feature:
                Stigg::V1::Addons::EntitlementUpdateParams::Feature::OrHash,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Addons::AddonPackageEntitlement)
          end
          def update(
            # Path param: The feature ID or custom currency ID of the entitlement
            id,
            # Path param: The addon ID
            addon_id:,
            # Body param: Credit entitlement fields to update
            credit: nil,
            # Body param: Feature entitlement fields to update
            feature: nil,
            request_options: {}
          )
          end

          # Retrieves a list of entitlements for an addon.
          sig do
            params(
              addon_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Addons::EntitlementListResponse)
          end
          def list(
            # The addon ID
            addon_id,
            request_options: {}
          )
          end

          # Deletes an entitlement from a draft addon.
          sig do
            params(
              id: String,
              addon_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Addons::AddonPackageEntitlement)
          end
          def delete(
            # The feature ID or custom currency ID of the entitlement
            id,
            # The addon ID
            addon_id:,
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
