# frozen_string_literal: true

require_relative "../test_helper"

class Stigg::Test::Resources::V1Test < Stigg::Test::ResourceTest
  def test_create_event_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.create_event(events: [{customerId: "customerId", eventName: "x", idempotencyKey: "x"}])

    assert_pattern do
      response => Stigg::Models::V1CreateEventResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Internal::Type::Unknown
      }
    end
  end

  def test_create_usage_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.create_usage(
        usages: [{customerId: "customerId", featureId: "featureId", value: -9_007_199_254_740_991}]
      )

    assert_pattern do
      response => Stigg::Models::V1CreateUsageResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1CreateUsageResponse::Data])
      }
    end
  end
end
