# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Subscriptions::FutureUpdateTest < Stigg::Test::ResourceTest
  def test_cancel_pending_payment
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.future_update.cancel_pending_payment("x")

    assert_pattern do
      response => Stigg::V1::Subscriptions::CancelSubscription
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Subscriptions::CancelSubscription::Data
      }
    end
  end

  def test_cancel_schedule
    skip("Prism tests are disabled")

    response = @stigg.v1.subscriptions.future_update.cancel_schedule("x")

    assert_pattern do
      response => Stigg::V1::Subscriptions::CancelSubscription
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Subscriptions::CancelSubscription::Data
      }
    end
  end
end
