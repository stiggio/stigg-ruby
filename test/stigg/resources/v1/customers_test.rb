# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::CustomersTest < Stigg::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.retrieve("x")

    assert_pattern do
      response => Stigg::V1::CustomerResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerResponse::Data
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.update("x")

    assert_pattern do
      response => Stigg::V1::CustomerResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::CustomerListResponse
    end

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        created_at: Time,
        updated_at: Time,
        coupon_id: String | nil,
        default_payment_method: Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod | nil,
        email: String | nil,
        integrations: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListResponse::Integration]) | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]) | nil,
        name: String | nil
      }
    end
  end

  def test_archive
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.archive("x")

    assert_pattern do
      response => Stigg::V1::CustomerResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerResponse::Data
      }
    end
  end

  def test_import_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.import(customers: [{id: "id", email: "dev@stainless.com", name: "name"}])

    assert_pattern do
      response => Stigg::Models::V1::CustomerImportResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::CustomerImportResponse::Data
      }
    end
  end

  def test_provision_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.provision(id: "id")

    assert_pattern do
      response => Stigg::V1::CustomerResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerResponse::Data
      }
    end
  end

  def test_unarchive
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.unarchive("x")

    assert_pattern do
      response => Stigg::V1::CustomerResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerResponse::Data
      }
    end
  end
end
