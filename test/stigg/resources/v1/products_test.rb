# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::ProductsTest < Stigg::Test::ResourceTest
  def test_archive_product
    skip("Prism tests are disabled")

    response = @stigg.v1.products.archive_product("x")

    assert_pattern do
      response => Stigg::Models::V1::ProductArchiveProductResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ProductArchiveProductResponse::Data
      }
    end
  end

  def test_create_product_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.products.create_product(id: "id")

    assert_pattern do
      response => Stigg::Models::V1::ProductCreateProductResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ProductCreateProductResponse::Data
      }
    end
  end

  def test_duplicate_product
    skip("Prism tests are disabled")

    response = @stigg.v1.products.duplicate_product("x")

    assert_pattern do
      response => Stigg::Models::V1::ProductDuplicateProductResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ProductDuplicateProductResponse::Data
      }
    end
  end

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

  def test_unarchive_product
    skip("Prism tests are disabled")

    response = @stigg.v1.products.unarchive_product("x")

    assert_pattern do
      response => Stigg::Models::V1::ProductUnarchiveProductResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ProductUnarchiveProductResponse::Data
      }
    end
  end

  def test_update_product
    skip("Prism tests are disabled")

    response = @stigg.v1.products.update_product("x")

    assert_pattern do
      response => Stigg::Models::V1::ProductUpdateProductResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::ProductUpdateProductResponse::Data
      }
    end
  end
end
