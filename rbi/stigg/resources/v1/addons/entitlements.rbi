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
                  T.any(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::OrHash,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::OrHash
                  )
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
              body:
                T.any(
                  Stigg::V1::Addons::EntitlementUpdateParams::Body::Feature::OrHash,
                  Stigg::V1::Addons::EntitlementUpdateParams::Body::Credit::OrHash
                ),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Addons::AddonPackageEntitlement)
          end
          def update(
            # Path param: The feature ID or custom currency ID of the entitlement
            id,
            # Path param: The addon ID
            addon_id:,
            # Body param: Request to update an addon entitlement
            body:,
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
