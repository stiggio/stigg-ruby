# typed: strong

module Stigg
  module Resources
    class V1
      class Products
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

        # @api private
        sig { params(client: Stigg::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
