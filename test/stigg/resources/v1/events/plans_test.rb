# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Events::PlansTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.events.plans.create(id: "id", display_name: "displayName", product_id: "productId")

    assert_pattern do
      response => Stigg::Models::V1::Events::PlanCreateResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::PlanCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @stigg.v1.events.plans.retrieve("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::PlanRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::PlanRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @stigg.v1.events.plans.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Events::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        billing_id: String | nil,
        created_at: Time,
        description: String | nil,
        display_name: String,
        entitlements: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::PlanListResponse::Entitlement]),
        is_latest: Stigg::Internal::Type::Boolean | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        parent_plan_id: String | nil,
        pricing_type: Stigg::Models::V1::Events::PlanListResponse::PricingType | nil,
        product_id: String,
        status: Stigg::Models::V1::Events::PlanListResponse::Status,
        updated_at: Time,
        version_number: Integer
      }
    end
  end
end
