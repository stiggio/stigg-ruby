# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to addons
      class Addons
        sig { returns(Stigg::Resources::V1::Addons::Entitlements) }
        attr_reader :entitlements

        # Creates a new addon in draft status, associated with a specific product.
        sig do
          params(
            id: String,
            display_name: String,
            product_id: String,
            billing_id: T.nilable(String),
            description: T.nilable(String),
            max_quantity: T.nilable(Integer),
            metadata: T::Hash[Symbol, String],
            pricing_type:
              T.nilable(Stigg::V1::AddonCreateParams::PricingType::OrSymbol),
            status: Stigg::V1::AddonCreateParams::Status::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def create(
          # Body param: The unique identifier for the entity
          id:,
          # Body param: The display name of the package
          display_name:,
          # Body param: The product id of the package
          product_id:,
          # Body param: The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Body param: The description of the package
          description: nil,
          # Body param: The maximum quantity of this addon that can be added to a
          # subscription
          max_quantity: nil,
          # Body param: Metadata associated with the entity
          metadata: nil,
          # Body param: The pricing type of the package
          pricing_type: nil,
          # Body param: The status of the package
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

        # Retrieves an addon by its unique identifier, including entitlements and pricing
        # details.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def retrieve(
          # The unique identifier of the entity
          id,
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

        # Updates an existing addon's properties such as display name, description, and
        # metadata.
        sig do
          params(
            id: String,
            billing_id: T.nilable(String),
            charges: Stigg::V1::AddonUpdateParams::Charges::OrHash,
            dependencies: T.nilable(T::Array[String]),
            description: T.nilable(String),
            display_name: String,
            max_quantity: T.nilable(Integer),
            metadata: T::Hash[Symbol, String],
            status: Stigg::V1::AddonUpdateParams::Status::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def update(
          # Path param: The unique identifier of the entity
          id,
          # Body param: The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Body param: Pricing configuration to set on the addon draft
          charges: nil,
          # Body param: List of addons the addon is dependant on
          dependencies: nil,
          # Body param: The description of the package
          description: nil,
          # Body param: The display name of the package
          display_name: nil,
          # Body param: The maximum quantity of this addon that can be added to a
          # subscription
          max_quantity: nil,
          # Body param: Metadata associated with the entity
          metadata: nil,
          # Body param: The status of the package
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

        # Retrieves a paginated list of addons in the environment.
        sig do
          params(
            after: String,
            before: String,
            created_at: Stigg::V1::AddonListParams::CreatedAt::OrHash,
            limit: Integer,
            product_id: String,
            status: T::Array[Stigg::V1::AddonListParams::Status::OrSymbol],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::AddonListResponse
            ]
          )
        end
        def list(
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by product ID
          product_id: nil,
          # Query param: Filter by status. Supports comma-separated values for multiple
          # statuses
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

        # Archives an addon, preventing it from being used in new subscriptions.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def archive(
          # The unique identifier of the entity
          id,
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

        # Creates a draft version of an existing addon for modification before publishing.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Addon)
        end
        def create_draft(
          # The unique identifier of the entity
          id,
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

        # Retrieves the list of charges configured on an addon.
        sig do
          params(
            id: String,
            after: String,
            before: String,
            limit: Integer,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::AddonListChargesResponse
            ]
          )
        end
        def list_charges(
          # Path param: The unique identifier of the entity
          id,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Maximum number of items to return
          limit: nil,
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

        # Publishes a draft addon, making it available for use in subscriptions.
        sig do
          params(
            id: String,
            migration_type:
              Stigg::V1::AddonPublishParams::MigrationType::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::AddonPublishResponse)
        end
        def publish(
          # Path param: The unique identifier of the entity
          id,
          # Body param: The migration type of the package
          migration_type:,
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

        # Removes a draft version of an addon.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::AddonRemoveDraftResponse)
        end
        def remove_draft(
          # The unique identifier of the entity
          id,
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

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
