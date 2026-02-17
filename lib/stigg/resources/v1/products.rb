# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Products
        # Archives a product, preventing new subscriptions. All plans and addons are
        # archived.
        #
        # @overload archive_product(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ProductArchiveProductResponse]
        #
        # @see Stigg::Models::V1::ProductArchiveProductParams
        def archive_product(id, params = {})
          @client.request(
            method: :post,
            path: ["api/v1/products/%1$s/archive", id],
            model: Stigg::Models::V1::ProductArchiveProductResponse,
            options: params[:request_options]
          )
        end

        # Creates a new product.
        #
        # @overload create_product(id:, description: nil, display_name: nil, metadata: nil, multiple_subscriptions: nil, request_options: {})
        #
        # @param id [String] The unique identifier for the entity
        #
        # @param description [String, nil] Description of the product
        #
        # @param display_name [String] Display name of the product
        #
        # @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the product
        #
        # @param multiple_subscriptions [Boolean] Indicates if multiple subscriptions to this product are allowed
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ProductCreateProductResponse]
        #
        # @see Stigg::Models::V1::ProductCreateProductParams
        def create_product(params)
          parsed, options = Stigg::V1::ProductCreateProductParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/v1/products",
            body: parsed,
            model: Stigg::Models::V1::ProductCreateProductResponse,
            options: options
          )
        end

        # Duplicates an existing product, including its plans, addons, and configuration.
        #
        # @overload duplicate_product(path_id, body_id:, description: nil, display_name: nil, request_options: {})
        #
        # @param path_id [String] The unique identifier of the entity
        #
        # @param body_id [String] The unique identifier for the entity
        #
        # @param description [String, nil] Description of the product
        #
        # @param display_name [String] Display name of the product
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ProductDuplicateProductResponse]
        #
        # @see Stigg::Models::V1::ProductDuplicateProductParams
        def duplicate_product(path_id, params)
          parsed, options = Stigg::V1::ProductDuplicateProductParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/products/%1$s/duplicate", path_id],
            body: parsed,
            model: Stigg::Models::V1::ProductDuplicateProductResponse,
            options: options
          )
        end

        # Retrieves a paginated list of products in the environment.
        #
        # @overload list_products(id: nil, after: nil, before: nil, created_at: nil, limit: nil, status: nil, request_options: {})
        #
        # @param id [String] Filter by entity ID
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::ProductListProductsParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param limit [Integer] Maximum number of items to return
        #
        # @param status [String] Filter by product status. Supports comma-separated values for multiple statuses
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::ProductListProductsResponse>]
        #
        # @see Stigg::Models::V1::ProductListProductsParams
        def list_products(params = {})
          parsed, options = Stigg::V1::ProductListProductsParams.dump_request(params)
          @client.request(
            method: :get,
            path: "api/v1/products",
            query: parsed.transform_keys(created_at: "createdAt"),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::ProductListProductsResponse,
            options: options
          )
        end

        # Restores an archived product, allowing new subscriptions to be created.
        #
        # @overload unarchive_product(id, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ProductUnarchiveProductResponse]
        #
        # @see Stigg::Models::V1::ProductUnarchiveProductParams
        def unarchive_product(id, params = {})
          @client.request(
            method: :post,
            path: ["api/v1/products/%1$s/unarchive", id],
            model: Stigg::Models::V1::ProductUnarchiveProductResponse,
            options: params[:request_options]
          )
        end

        # Updates an existing product's properties such as display name, description, and
        # metadata.
        #
        # @overload update_product(id, description: nil, display_name: nil, metadata: nil, multiple_subscriptions: nil, product_settings: nil, usage_reset_cutoff_rule: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param description [String, nil] Description of the product
        #
        # @param display_name [String] Display name of the product
        #
        # @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the product
        #
        # @param multiple_subscriptions [Boolean] Indicates if multiple subscriptions to this product are allowed
        #
        # @param product_settings [Stigg::Models::V1::ProductUpdateProductParams::ProductSettings]
        #
        # @param usage_reset_cutoff_rule [Stigg::Models::V1::ProductUpdateProductParams::UsageResetCutoffRule] Rule defining when usage resets upon subscription update.
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::ProductUpdateProductResponse]
        #
        # @see Stigg::Models::V1::ProductUpdateProductParams
        def update_product(id, params = {})
          parsed, options = Stigg::V1::ProductUpdateProductParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/v1/products/%1$s", id],
            body: parsed,
            model: Stigg::Models::V1::ProductUpdateProductResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
