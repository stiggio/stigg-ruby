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
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::IntegrationRetrieveResponse)
          end
          def retrieve(
            # Integration details
            integration_id,
            # Customer slug
            id:,
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
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::IntegrationUpdateResponse)
          end
          def update(
            # Path param: Integration details
            integration_id,
            # Path param: Customer slug
            id:,
            # Body param: Synced entity id
            synced_entity_id:,
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
              vendor_identifier: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Customers::IntegrationListResponse
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
            # Maximum number of items to return
            limit: nil,
            # Filter by vendor identifier. Supports comma-separated values for multiple
            # vendors (e.g., STRIPE,HUBSPOT)
            vendor_identifier: nil,
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
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::IntegrationLinkResponse)
          end
          def link(
            # The unique identifier of the entity
            path_id,
            # Integration details
            body_id:,
            # Synced entity id
            synced_entity_id:,
            # The vendor identifier of integration
            vendor_identifier:,
            request_options: {}
          )
          end

          # Removes the link between a customer and an external integration.
          sig do
            params(
              integration_id: String,
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Customers::IntegrationUnlinkResponse)
          end
          def unlink(
            # Integration details
            integration_id,
            # Customer slug
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
