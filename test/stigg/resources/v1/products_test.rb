# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::ProductsTest < Stigg::Test::ResourceTest
  def test_archive_product
    skip("Mock server tests are disabled")

    response = @stigg.v1.products.archive_product("x")

    assert_pattern do
      response => Stigg::V1::Product
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Product::Data
      }
    end
  end

  def test_create_product_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.products.create_product(id: "id", display_name: "displayName")

    assert_pattern do
      response => Stigg::V1::Product
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Product::Data
      }
    end
  end

  def test_duplicate_product_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.products.duplicate_product("x", target_id: "targetId")

    assert_pattern do
      response => Stigg::V1::Product
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Product::Data
      }
    end
  end

  def test_list_products
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @stigg.v1.products.unarchive_product("x")

    assert_pattern do
      response => Stigg::V1::Product
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Product::Data
      }
    end
  end

  def test_update_product
    skip("Mock server tests are disabled")

    response = @stigg.v1.products.update_product("x")

    assert_pattern do
      response => Stigg::V1::Product
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Product::Data
      }
    end
  end
end
