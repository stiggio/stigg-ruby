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
        metadata: {foo: "string"},
        name: "name",
        percent_off: 1
      )

    assert_pattern do
      response => Stigg::V1::Coupon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Coupon::Data
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @stigg.v1.coupons.retrieve("x")

    assert_pattern do
      response => Stigg::V1::Coupon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Coupon::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @stigg.v1.coupons.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::CouponListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amounts_off: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CouponListResponse::AmountsOff]) | nil,
        billing_id: String | nil,
        billing_link_url: String | nil,
        created_at: Time,
        description: String | nil,
        duration_in_months: Float | nil,
        name: String,
        percent_off: Float | nil,
        source: Stigg::Models::V1::CouponListResponse::Source | nil,
        status: Stigg::Models::V1::CouponListResponse::Status,
        type: Stigg::Models::V1::CouponListResponse::Type,
        updated_at: Time
      }
    end
  end

  def test_archive_coupon
    skip("Prism tests are disabled")

    response = @stigg.v1.coupons.archive_coupon("x")

    assert_pattern do
      response => Stigg::V1::Coupon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Coupon::Data
      }
    end
  end

  def test_update_coupon
    skip("Prism tests are disabled")

    response = @stigg.v1.coupons.update_coupon("x")

    assert_pattern do
      response => Stigg::V1::Coupon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Coupon::Data
      }
    end
  end
end
