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

  def test_list_charges
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.list_charges("x")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::V1::ChargeList::Data
    end

    assert_pattern do
      row => {
        id: String,
        billing_cadence: Stigg::V1::ChargeList::Data::BillingCadence,
        billing_model: Stigg::V1::ChargeList::Data::BillingModel,
        billing_period: Stigg::V1::ChargeList::Data::BillingPeriod,
        created_at: Time,
        billing_country_code: String | nil,
        billing_id: String | nil,
        block_size: Float | nil,
        credit_grant_cadence: Stigg::V1::ChargeList::Data::CreditGrantCadence | nil,
        credit_rate: Stigg::V1::ChargeList::Data::CreditRate | nil,
        crm_id: String | nil,
        crm_link_url: String | nil,
        feature_id: String | nil,
        max_unit_quantity: Float | nil,
        min_unit_quantity: Float | nil,
        price: Stigg::V1::ChargeList::Data::Price | nil,
        tiers: ^(Stigg::Internal::Type::ArrayOf[Stigg::V1::ChargeList::Data::Tier]) | nil,
        tiers_mode: Stigg::V1::ChargeList::Data::TiersMode | nil,
        top_up_custom_currency_id: String | nil,
        used_in_subscriptions: Stigg::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list_overage_charges
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.list_overage_charges("x")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::V1::ChargeList::Data
    end

    assert_pattern do
      row => {
        id: String,
        billing_cadence: Stigg::V1::ChargeList::Data::BillingCadence,
        billing_model: Stigg::V1::ChargeList::Data::BillingModel,
        billing_period: Stigg::V1::ChargeList::Data::BillingPeriod,
        created_at: Time,
        billing_country_code: String | nil,
        billing_id: String | nil,
        block_size: Float | nil,
        credit_grant_cadence: Stigg::V1::ChargeList::Data::CreditGrantCadence | nil,
        credit_rate: Stigg::V1::ChargeList::Data::CreditRate | nil,
        crm_id: String | nil,
        crm_link_url: String | nil,
        feature_id: String | nil,
        max_unit_quantity: Float | nil,
        min_unit_quantity: Float | nil,
        price: Stigg::V1::ChargeList::Data::Price | nil,
        tiers: ^(Stigg::Internal::Type::ArrayOf[Stigg::V1::ChargeList::Data::Tier]) | nil,
        tiers_mode: Stigg::V1::ChargeList::Data::TiersMode | nil,
        top_up_custom_currency_id: String | nil,
        used_in_subscriptions: Stigg::Internal::Type::Boolean | nil
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
end
