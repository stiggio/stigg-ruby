# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Credits::ConsumptionTest < Stigg::Test::ResourceTest
  def test_consume_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.credits.consumption.consume(
        amount: 1,
        currency_id: "currencyId",
        customer_id: "customerId",
        idempotency_key: "x"
      )

    assert_pattern do
      response => Stigg::Models::V1::Credits::ConsumptionConsumeResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data
      }
    end
  end

  def test_consume_async_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.credits.consumption.consume_async(
        consumptions: [{amount: 1, currencyId: "currencyId", customerId: "customerId", idempotencyKey: "x"}]
      )

    assert_pattern do
      response => Stigg::Models::V1::Credits::ConsumptionConsumeAsyncResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Internal::Type::Unknown
      }
    end
  end
end
