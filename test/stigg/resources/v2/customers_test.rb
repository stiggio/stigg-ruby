# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V2::CustomersTest < Stigg::Test::ResourceTest
  def test_get_customer_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @stigg.v2.customers.get_customer("refId", x_api_key: "X-API-KEY", x_environment_id: "X-ENVIRONMENT-ID")

    assert_pattern do
      response => Stigg::Models::V2::CustomerGetCustomerResponse
    end

    assert_pattern do
      response => {
        id: String,
        email: String | nil,
        name: String | nil
      }
    end
  end
end
