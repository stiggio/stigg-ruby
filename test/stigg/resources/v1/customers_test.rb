# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::CustomersTest < Stigg::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @stigg.v1.customers.retrieve("refId", x_api_key: "X-API-KEY", x_environment_id: "X-ENVIRONMENT-ID")

    assert_pattern do
      response => Stigg::Models::V1::CustomerRetrieveResponse
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
