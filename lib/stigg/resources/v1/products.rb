# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Products
        # Retrieves a paginated list of products in the environment.
        #
        # @overload list_products(after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param after [String] Return items that come after this cursor
        #
        # @param before [String] Return items that come before this cursor
        #
        # @param limit [Integer] Maximum number of items to return
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
            query: parsed,
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
