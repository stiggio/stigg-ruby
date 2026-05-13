# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Events::CreditsTest < Stigg::Test::ResourceTest
  def test_get_auto_recharge_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.events.credits.get_auto_recharge(currency_id: "currencyId", customer_id: "customerId")

    assert_pattern do
      response => Stigg::Models::V1::Events::CreditGetAutoRechargeResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::CreditGetAutoRechargeResponse::Data
      }
    end
  end

  def test_get_usage_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.credits.get_usage(customer_id: "customerId")

    assert_pattern do
      response => Stigg::Models::V1::Events::CreditGetUsageResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::CreditGetUsageResponse::Data
      }
    end
  end

  def test_list_ledger_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.credits.list_ledger(customer_id: "customerId")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Events::CreditListLedgerResponse
    end

    assert_pattern do
      row => {
        amount: Float,
        credit_currency_id: String,
        credit_grant_id: String,
        customer_id: String,
        event_id: String | nil,
        event_type: Stigg::Models::V1::Events::CreditListLedgerResponse::EventType,
        feature_id: String | nil,
        resource_id: String | nil,
        timestamp: Time
      }
    end
  end
end
