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
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Addons::EntitlementCreateResponse)
          end
          def create(
            # Path param: The addon ID
            addon_id,
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
              x_account_id: String,
              x_environment_id: String,
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

          # Retrieves a list of entitlements for an addon.
          sig do
            params(
              addon_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Addons::EntitlementListResponse)
          end
          def list(
            # The addon ID
            addon_id,
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

          # Deletes an entitlement from a draft addon.
          sig do
            params(
              id: String,
              addon_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::Addons::AddonPackageEntitlement)
          end
          def delete(
            # Path param: The feature ID or custom currency ID of the entitlement
            id,
            # Path param: The addon ID
            addon_id:,
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
