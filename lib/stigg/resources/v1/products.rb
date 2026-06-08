# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to products
      class Products
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ProductArchiveProductParams} for more details.
        #
        # Archives a product, preventing new subscriptions. All plans and addons are
        # archived.
        #
        # @overload archive_product(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Product]
        #
        # @see Stigg::Models::V1::ProductArchiveProductParams
        def archive_product(id, params = {})
          parsed, options = Stigg::V1::ProductArchiveProductParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/products/%1$s/archive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Product,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ProductCreateProductParams} for more details.
        #
        # Creates a new product.
        #
        # @overload create_product(id:, display_name:, description: nil, metadata: nil, multiple_subscriptions: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Body param: The unique identifier for the entity
        #
        # @param display_name [String] Body param: Display name of the product
        #
        # @param description [String, nil] Body param: Description of the product
        #
        # @param metadata [Hash{Symbol=>String}, nil] Body param: Additional metadata for the product
        #
        # @param multiple_subscriptions [Boolean] Body param: Indicates if multiple subscriptions to this product are allowed
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Product]
        #
        # @see Stigg::Models::V1::ProductCreateProductParams
        def create_product(params)
          parsed, options = Stigg::V1::ProductCreateProductParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/products",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Product,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ProductDuplicateProductParams} for more details.
        #
        # Duplicates an existing product, including its plans, addons, and configuration.
        #
        # @overload duplicate_product(id, target_id:, description: nil, display_name: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param target_id [String] Body param: The unique identifier for the entity
        #
        # @param description [String, nil] Body param: Description of the product
        #
        # @param display_name [String] Body param: Display name of the product
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Product]
        #
        # @see Stigg::Models::V1::ProductDuplicateProductParams
        def duplicate_product(id, params)
          parsed, options = Stigg::V1::ProductDuplicateProductParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: ["api/v1/products/%1$s/duplicate", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Product,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ProductListProductsParams} for more details.
        #
        # Retrieves a paginated list of products in the environment.
        #
        # @overload list_products(id: nil, after: nil, before: nil, created_at: nil, limit: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Query param: Filter by entity ID
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::ProductListProductsParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param status [Array<Symbol, Stigg::Models::V1::ProductListProductsParams::Status>] Query param: Filter by product status. Supports comma-separated values for multi
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::ProductListProductsResponse>]
        #
        # @see Stigg::Models::V1::ProductListProductsParams
        def list_products(params = {})
          query_params = [:id, :after, :before, :created_at, :limit, :status]
          parsed, options = Stigg::V1::ProductListProductsParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/products",
            query: query.transform_keys(created_at: "createdAt"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::ProductListProductsResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ProductUnarchiveProductParams} for more details.
        #
        # Restores an archived product, allowing new subscriptions to be created.
        #
        # @overload unarchive_product(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Product]
        #
        # @see Stigg::Models::V1::ProductUnarchiveProductParams
        def unarchive_product(id, params = {})
          parsed, options = Stigg::V1::ProductUnarchiveProductParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/products/%1$s/unarchive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Product,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::ProductUpdateProductParams} for more details.
        #
        # Updates an existing product's properties such as display name, description, and
        # metadata.
        #
        # @overload update_product(id, description: nil, display_name: nil, metadata: nil, multiple_subscriptions: nil, product_settings: nil, usage_reset_cutoff_rule: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param description [String, nil] Body param: Description of the product
        #
        # @param display_name [String] Body param: Display name of the product
        #
        # @param metadata [Hash{Symbol=>String}, nil] Body param: Additional metadata for the product
        #
        # @param multiple_subscriptions [Boolean] Body param: Indicates if multiple subscriptions to this product are allowed
        #
        # @param product_settings [Stigg::Models::V1::ProductUpdateProductParams::ProductSettings] Body param
        #
        # @param usage_reset_cutoff_rule [Stigg::Models::V1::ProductUpdateProductParams::UsageResetCutoffRule] Body param: Rule defining when usage resets upon subscription update.
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Product]
        #
        # @see Stigg::Models::V1::ProductUpdateProductParams
        def update_product(id, params = {})
          parsed, options = Stigg::V1::ProductUpdateProductParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/products/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Product,
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
