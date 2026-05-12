# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Credits::AutoRechargeTest < Stigg::Test::ResourceTest
  def test_get_auto_recharge_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.credits.auto_recharge.get_auto_recharge(currency_id: "currencyId", customer_id: "customerId")

    assert_pattern do
      response => Stigg::Models::V1::Credits::AutoRechargeGetAutoRechargeResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Credits::AutoRechargeGetAutoRechargeResponse::Data
      }
    end
  end
end
