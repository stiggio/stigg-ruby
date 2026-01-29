# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::UsageTest < Stigg::Test::ResourceTest
  def test_history_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.usage.history("featureId", customer_id: "customerId", start_date: "2019-12-27T18:11:19.117Z")

    assert_pattern do
      response => Stigg::Models::V1::UsageHistoryResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::UsageHistoryResponse::Data
      }
    end
  end

  def test_report_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.usage.report(
        usages: [{customerId: "customerId", featureId: "featureId", value: -9_007_199_254_740_991}]
      )

    assert_pattern do
      response => Stigg::Models::V1::UsageReportResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::UsageReportResponse::Data])
      }
    end
  end
end
