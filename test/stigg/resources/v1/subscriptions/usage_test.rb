# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Subscriptions::UsageTest < Stigg::Test::ResourceTest
  def test_charge_usage
    skip("Mock server tests are disabled")

    response = @stigg.v1.subscriptions.usage.charge_usage("x")

    assert_pattern do
      response => Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data
      }
    end
  end

  def test_sync
    skip("Mock server tests are disabled")

    response = @stigg.v1.subscriptions.usage.sync("x")

    assert_pattern do
      response => Stigg::Models::V1::Subscriptions::UsageSyncResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Subscriptions::UsageSyncResponse::Data
      }
    end
  end
end
