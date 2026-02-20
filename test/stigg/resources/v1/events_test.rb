# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::EventsTest < Stigg::Test::ResourceTest
  def test_report_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.events.report(events: [{customerId: "customerId", eventName: "x", idempotencyKey: "x"}])

    assert_pattern do
      response => Stigg::Models::V1::EventReportResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Internal::Type::Unknown
      }
    end
  end
end
