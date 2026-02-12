# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Products
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
