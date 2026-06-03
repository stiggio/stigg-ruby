# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1Beta::Customers::EntitlementsTest < Stigg::Test::ResourceTest
  def test_check
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.entitlements.check("x")

    assert_pattern do
      response => Stigg::Models::V1Beta::Customers::EntitlementCheckResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1Beta::Customers::EntitlementCheckResponse::Data
      }
    end
  end
end
