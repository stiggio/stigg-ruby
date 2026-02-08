# typed: strong

module Stigg
  module Resources
    class V1
      class Products
        # Retrieves a paginated list of products in the environment.
        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::ProductListProductsResponse
            ]
          )
        end
        def list_products(
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Maximum number of items to return
          limit: nil,
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
