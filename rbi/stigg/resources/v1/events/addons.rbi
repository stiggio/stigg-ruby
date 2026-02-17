# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Addons
          sig { returns(Stigg::Resources::V1::Events::Addons::Draft) }
          attr_reader :draft

          # Archives an addon, preventing it from being used in new subscriptions.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::AddonArchiveAddonResponse)
          end
          def archive_addon(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Creates a new addon in draft status, associated with a specific product.
          sig do
            params(
              id: String,
              display_name: String,
              product_id: String,
              billing_id: String,
              description: String,
              max_quantity: Integer,
              metadata: T::Hash[Symbol, String],
              pricing_type:
                Stigg::V1::Events::AddonCreateAddonParams::PricingType::OrSymbol,
              status:
                Stigg::V1::Events::AddonCreateAddonParams::Status::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::AddonCreateAddonResponse)
          end
          def create_addon(
            # The unique identifier for the entity
            id:,
            # The display name of the package
            display_name:,
            # The product ID to associate the addon with
            product_id:,
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            # The description of the package
            description: nil,
            # The maximum quantity of this addon that can be added to a subscription
            max_quantity: nil,
            # Metadata associated with the entity
            metadata: nil,
            # The pricing type of the package
            pricing_type: nil,
            # The status of the package
            status: nil,
            request_options: {}
          )
          end

          # Retrieves a paginated list of addons in the environment.
          sig do
            params(
              after: String,
              before: String,
              created_at:
                Stigg::V1::Events::AddonListAddonsParams::CreatedAt::OrHash,
              limit: Integer,
              product_id: String,
              status:
                Stigg::V1::Events::AddonListAddonsParams::Status::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Events::AddonListAddonsResponse
              ]
            )
          end
          def list_addons(
            # Return items that come after this cursor
            after: nil,
            # Return items that come before this cursor
            before: nil,
            # Filter by creation date using range operators: gt, gte, lt, lte
            created_at: nil,
            # Maximum number of items to return
            limit: nil,
            # Filter by product ID
            product_id: nil,
            # Filter by addon status. Supports comma-separated values for multiple statuses
            status: nil,
            request_options: {}
          )
          end

          # Publishes a draft addon, making it available for use in subscriptions.
          sig do
            params(
              id: String,
              migration_type:
                Stigg::V1::Events::AddonPublishAddonParams::MigrationType::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::AddonPublishAddonResponse)
          end
          def publish_addon(
            # The unique identifier of the entity
            id,
            # The migration type of the package
            migration_type:,
            request_options: {}
          )
          end

          # Retrieves an addon by its unique identifier, including entitlements and pricing
          # details.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::AddonRetrieveAddonResponse)
          end
          def retrieve_addon(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Updates an existing addon's properties such as display name, description, and
          # metadata.
          sig do
            params(
              id: String,
              billing_id: T.nilable(String),
              dependencies: T.nilable(T::Array[String]),
              description: T.nilable(String),
              display_name: String,
              max_quantity: T.nilable(Integer),
              metadata: T::Hash[Symbol, String],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::AddonUpdateAddonResponse)
          end
          def update_addon(
            # The unique identifier of the entity
            id,
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            # List of addons the addon is dependant on
            dependencies: nil,
            # The description of the package
            description: nil,
            # The display name of the package
            display_name: nil,
            # The maximum quantity of this addon that can be added to a subscription
            max_quantity: nil,
            # Metadata associated with the entity
            metadata: nil,
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
