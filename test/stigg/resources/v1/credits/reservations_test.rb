# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Credits::ReservationsTest < Stigg::Test::ResourceTest
  def test_release_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.credits.reservations.release(
        "x",
        consumed_amount: 0,
        currency_id: "currencyId",
        customer_id: "customerId"
      )

    assert_pattern do
      response => Stigg::Models::V1::Credits::ReservationReleaseResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Credits::ReservationReleaseResponse::Data
      }
    end
  end
end
