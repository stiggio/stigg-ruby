# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::PlansTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.create(id: "id", display_name: "displayName", product_id: "productId")

    assert_pattern do
      response => Stigg::V1::Plan
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Plan::Data
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.retrieve("x")

    assert_pattern do
      response => Stigg::V1::Plan
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Plan::Data
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.update("x")

    assert_pattern do
      response => Stigg::V1::Plan
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Plan::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        billing_id: String | nil,
        compatible_addon_ids: ^(Stigg::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time,
        default_trial_config: Stigg::Models::V1::PlanListResponse::DefaultTrialConfig | nil,
        description: String | nil,
        display_name: String,
        entitlements: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::PlanListResponse::Entitlement]),
        is_latest: Stigg::Internal::Type::Boolean | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        parent_plan_id: String | nil,
        pricing_type: Stigg::Models::V1::PlanListResponse::PricingType | nil,
        product_id: String,
        status: Stigg::Models::V1::PlanListResponse::Status,
        updated_at: Time,
        version_number: Integer
      }
    end
  end

  def test_archive
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.archive("x")

    assert_pattern do
      response => Stigg::V1::Plan
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Plan::Data
      }
    end
  end

  def test_create_draft
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.create_draft("x")

    assert_pattern do
      response => Stigg::V1::Plan
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Plan::Data
      }
    end
  end

  def test_publish_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.publish("x", migration_type: :NEW_CUSTOMERS)

    assert_pattern do
      response => Stigg::Models::V1::PlanPublishResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::PlanPublishResponse::Data
      }
    end
  end

  def test_remove_draft
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.remove_draft("x")

    assert_pattern do
      response => Stigg::Models::V1::PlanRemoveDraftResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::PlanRemoveDraftResponse::Data
      }
    end
  end

  def test_set_pricing_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.set_pricing("x", pricing_type: :FREE)

    assert_pattern do
      response => Stigg::V1::SetPackagePricingResponse
    end

    assert_pattern do
      response => {
        data: Stigg::V1::SetPackagePricingResponse::Data
      }
    end
  end
end
