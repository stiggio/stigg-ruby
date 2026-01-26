# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::CustomersTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.create(id: "id")

    assert_pattern do
      response => Stigg::V1::CustomerResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerResponse::Data
      }
    end
  end

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
      response => Stigg::Models::V1::CustomerListResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListResponse::Data])
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
