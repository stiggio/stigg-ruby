# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::ProductsTest < Stigg::Test::ResourceTest
  def test_list_products
    skip("Prism tests are disabled")

    response = @stigg.v1.products.list_products

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::ProductListProductsResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        display_name: String,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        multiple_subscriptions: Stigg::Internal::Type::Boolean,
        status: Stigg::Models::V1::ProductListProductsResponse::Status,
        updated_at: Time,
        product_settings: Stigg::Models::V1::ProductListProductsResponse::ProductSettings | nil
      }
    end
  end
end
