# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::CouponsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.coupons.create(
        id: "id",
        amounts_off: [{amount: 0, currency: :usd}],
        description: "description",
        duration_in_months: 1,
        name: "name",
        percent_off: 1
      )

    assert_pattern do
      response => Stigg::Models::V1::CouponCreateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::CouponCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @stigg.v1.coupons.retrieve("x")

    assert_pattern do
      response => Stigg::Models::V1::CouponRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::CouponRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @stigg.v1.coupons.list

    assert_pattern do
      response => Stigg::Models::V1::CouponListResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CouponListResponse::Data])
      }
    end
  end
end
