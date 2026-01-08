# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Customers::UsageTest < Stigg::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.customers.usage.retrieve(
        "featureId",
        customer_id: "customerId",
        start_date: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => Stigg::Models::V1::Customers::UsageRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Customers::UsageRetrieveResponse::Data
      }
    end
  end
end
