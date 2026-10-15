# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V2::UsageTest < Stigg::Test::ResourceTest
  def test_report_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v2.usage.report(
        usages: [{customerId: "customerId", featureId: "featureId", value: -9_007_199_254_740_991}]
      )

    assert_pattern do
      response => Stigg::Models::V2::UsageReportResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V2::UsageReportResponse::Data
      }
    end
  end
end
