# typed: strong

module Stigg
  module Resources
    class V1
      class Products
        # Archives a product, preventing new subscriptions. All plans and addons are
        # archived.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ProductArchiveProductResponse)
        end
        def archive_product(
          # The unique identifier of the entity
          id,
          request_options: {}
        )
        end

        # Creates a new product.
        sig do
          params(
            id: String,
            description: T.nilable(String),
            display_name: String,
            metadata: T.nilable(T::Hash[Symbol, String]),
            multiple_subscriptions: T::Boolean,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ProductCreateProductResponse)
        end
        def create_product(
          # The unique identifier for the entity
          id:,
          # Description of the product
          description: nil,
          # Display name of the product
          display_name: nil,
          # Additional metadata for the product
          metadata: nil,
          # Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions: nil,
          request_options: {}
        )
        end

        # Duplicates an existing product, including its plans, addons, and configuration.
        sig do
          params(
            path_id: String,
            body_id: String,
            description: T.nilable(String),
            display_name: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ProductDuplicateProductResponse)
        end
        def duplicate_product(
          # The unique identifier of the entity
          path_id,
          # The unique identifier for the entity
          body_id:,
          # Description of the product
          description: nil,
          # Display name of the product
          display_name: nil,
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
            status: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::ProductListProductsResponse
            ]
          )
        end
        def list_products(
          # Filter by entity ID
          id: nil,
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by product status. Supports comma-separated values for multiple statuses
          status: nil,
          request_options: {}
        )
        end

        # Restores an archived product, allowing new subscriptions to be created.
        sig do
          params(
            id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ProductUnarchiveProductResponse)
        end
        def unarchive_product(
          # The unique identifier of the entity
          id,
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
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1::ProductUpdateProductResponse)
        end
        def update_product(
          # The unique identifier of the entity
          id,
          # Description of the product
          description: nil,
          # Display name of the product
          display_name: nil,
          # Additional metadata for the product
          metadata: nil,
          # Indicates if multiple subscriptions to this product are allowed
          multiple_subscriptions: nil,
          product_settings: nil,
          # Rule defining when usage resets upon subscription update.
          usage_reset_cutoff_rule: nil,
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
