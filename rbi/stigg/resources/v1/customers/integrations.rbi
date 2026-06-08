# typed: strong

module Stigg
  module Resources
    class V1
      class Customers
        class Integrations
          # Retrieves a specific integration for a customer by integration ID.
          sig do
            params(
              integration_id: String,
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerIntegrationResponse)
          end
          def retrieve(
            # Path param: Integration details
            integration_id,
            # Path param: Customer slug
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

          # Updates a customer's integration link, such as changing the synced external
          # entity ID.
          sig do
            params(
              integration_id: String,
              id: String,
              synced_entity_id: T.nilable(String),
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerIntegrationResponse)
          end
          def update(
            # Path param: Integration details
            integration_id,
            # Path param: Customer slug
            id:,
            # Body param: Synced entity id
            synced_entity_id:,
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

          # Retrieves a paginated list of a customer's external integrations (billing, CRM,
          # etc.).
          sig do
            params(
              id: String,
              after: String,
              before: String,
              limit: Integer,
              vendor_identifier:
                T::Array[
                  Stigg::V1::Customers::IntegrationListParams::VendorIdentifier::OrSymbol
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Customers::IntegrationListResponse
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
            # Query param: Maximum number of items to return
            limit: nil,
            # Query param: Filter by vendor identifier. Supports comma-separated values for
            # multiple vendors (e.g., STRIPE,HUBSPOT)
            vendor_identifier: nil,
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

          # Links a customer to an external integration by specifying the vendor and
          # external entity ID.
          sig do
            params(
              path_id: String,
              body_id: String,
              synced_entity_id: String,
              vendor_identifier:
                Stigg::V1::Customers::IntegrationLinkParams::VendorIdentifier::OrSymbol,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerIntegrationResponse)
          end
          def link(
            # Path param: The unique identifier of the entity
            path_id,
            # Body param: Integration details
            body_id:,
            # Body param: Synced entity id
            synced_entity_id:,
            # Body param: The vendor identifier of integration
            vendor_identifier:,
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

          # Removes the link between a customer and an external integration.
          sig do
            params(
              integration_id: String,
              id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::V1::CustomerIntegrationResponse)
          end
          def unlink(
            # Path param: Integration details
            integration_id,
            # Path param: Customer slug
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
