# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Subscriptions::InvoiceTest < Stigg::Test::ResourceTest
  def test_mark_as_paid
    skip("Mock server tests are disabled")

    response = @stigg.v1.subscriptions.invoice.mark_as_paid("x")

    assert_pattern do
      response => Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Subscriptions::InvoiceMarkAsPaidResponse::Data
      }
    end
  end
end
