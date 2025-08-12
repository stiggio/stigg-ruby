# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V2::CustomersTest < Stigg::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v2.customers.retrieve("refId", x_api_key: "X-API-KEY", x_environment_id: "X-ENVIRONMENT-ID")

    assert_pattern do
      response => Stigg::Models::V2::CustomerRetrieveResponse
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
