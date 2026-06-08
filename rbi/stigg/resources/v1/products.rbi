# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to products
      class Products
        # Archives a product, preventing new subscriptions. All plans and addons are
        # archived.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Product)
        end
        def archive_product(
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

        # Creates a new product.
        sig do
          params(
            id: String,
            display_name: String,
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            multiple_subscriptions: T::Boolean,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Product)
        end
        def create_product(
          # Body param: The unique identifier for the entity
          id:,
          # Body param: Display name of the product
          display_name:,
          # Body param: Description of the product
          description: nil,
          # Body param: Additional metadata for the product
          metadata: nil,
          # Body param: Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions: nil,
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

        # Duplicates an existing product, including its plans, addons, and configuration.
        sig do
          params(
            id: String,
            target_id: String,
            description: T.nilable(String),
            display_name: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Product)
        end
        def duplicate_product(
          # Path param: The unique identifier of the entity
          id,
          # Body param: The unique identifier for the entity
          target_id:,
          # Body param: Description of the product
          description: nil,
          # Body param: Display name of the product
          display_name: nil,
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

        # Retrieves a paginated list of products in the environment.
        sig do
          params(
            id: String,
            after: String,
            before: String,
            created_at: Stigg::V1::ProductListProductsParams::CreatedAt::OrHash,
            limit: Integer,
            status:
              T::Array[Stigg::V1::ProductListProductsParams::Status::OrSymbol],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::ProductListProductsResponse
            ]
          )
        end
        def list_products(
          # Query param: Filter by entity ID
          id: nil,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by product status. Supports comma-separated values for
          # multiple statuses
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

        # Restores an archived product, allowing new subscriptions to be created.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Product)
        end
        def unarchive_product(
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

        # Updates an existing product's properties such as display name, description, and
        # metadata.
        sig do
          params(
            id: String,
            description: T.nilable(String),
            display_name: String,
            metadata: T.nilable(T::Hash[Symbol, String]),
            multiple_subscriptions: T::Boolean,
            product_settings:
              Stigg::V1::ProductUpdateProductParams::ProductSettings::OrHash,
            usage_reset_cutoff_rule:
              Stigg::V1::ProductUpdateProductParams::UsageResetCutoffRule::OrHash,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Product)
        end
        def update_product(
          # Path param: The unique identifier of the entity
          id,
          # Body param: Description of the product
          description: nil,
          # Body param: Display name of the product
          display_name: nil,
          # Body param: Additional metadata for the product
          metadata: nil,
          # Body param: Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions: nil,
          # Body param
          product_settings: nil,
          # Body param: Rule defining when usage resets upon subscription update.
          usage_reset_cutoff_rule: nil,
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
