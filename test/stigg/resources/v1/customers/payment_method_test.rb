# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Customers::PaymentMethodTest < Stigg::Test::ResourceTest
  def test_attach_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.customers.payment_method.attach(
        "x",
        integration_id: "integrationId",
        payment_method_id: "paymentMethodId",
        vendor_identifier: :AUTH0
      )

    assert_pattern do
      response => Stigg::V1::CustomerResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::CustomerResponse::Data
      }
    end
  end

  def test_detach
    skip("Mock server tests are disabled")

    response = @stigg.v1.customers.payment_method.detach("x")

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
