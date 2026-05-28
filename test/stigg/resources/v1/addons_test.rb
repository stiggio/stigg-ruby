# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::AddonsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.create(id: "id", display_name: "displayName", product_id: "productId")

    assert_pattern do
      response => Stigg::V1::Addon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Addon::Data
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.retrieve("x")

    assert_pattern do
      response => Stigg::V1::Addon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Addon::Data
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.update("x")

    assert_pattern do
      response => Stigg::V1::Addon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Addon::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.list

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::AddonListResponse
    end

    assert_pattern do
      row => {
        id: String,
        billing_id: String | nil,
        created_at: Time,
        dependencies: ^(Stigg::Internal::Type::ArrayOf[String]) | nil,
        description: String | nil,
        display_name: String,
        entitlements: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::AddonListResponse::Entitlement]),
        is_latest: Stigg::Internal::Type::Boolean | nil,
        max_quantity: Integer | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        pricing_type: Stigg::Models::V1::AddonListResponse::PricingType | nil,
        product_id: String,
        status: Stigg::Models::V1::AddonListResponse::Status,
        updated_at: Time,
        version_number: Integer
      }
    end
  end

  def test_archive
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.archive("x")

    assert_pattern do
      response => Stigg::V1::Addon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Addon::Data
      }
    end
  end

  def test_create_draft
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.create_draft("x")

    assert_pattern do
      response => Stigg::V1::Addon
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Addon::Data
      }
    end
  end

  def test_list_charges
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.list_charges("x")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::AddonListChargesResponse
    end

    assert_pattern do
      row => {
        id: String,
        billing_cadence: Stigg::Models::V1::AddonListChargesResponse::BillingCadence,
        billing_model: Stigg::Models::V1::AddonListChargesResponse::BillingModel,
        billing_period: Stigg::Models::V1::AddonListChargesResponse::BillingPeriod,
        created_at: Time,
        billing_country_code: String | nil,
        billing_id: String | nil,
        block_size: Float | nil,
        credit_grant_cadence: Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence | nil,
        credit_rate: Stigg::Models::V1::AddonListChargesResponse::CreditRate | nil,
        crm_id: String | nil,
        crm_link_url: String | nil,
        feature_id: String | nil,
        max_unit_quantity: Float | nil,
        min_unit_quantity: Float | nil,
        price: Stigg::Models::V1::AddonListChargesResponse::Price | nil,
        tiers: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::AddonListChargesResponse::Tier]) | nil,
        tiers_mode: Stigg::Models::V1::AddonListChargesResponse::TiersMode | nil,
        top_up_custom_currency_id: String | nil,
        used_in_subscriptions: Stigg::Internal::Type::Boolean | nil
      }
    end
  end

  def test_publish_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.publish("x", migration_type: :NEW_CUSTOMERS)

    assert_pattern do
      response => Stigg::Models::V1::AddonPublishResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::AddonPublishResponse::Data
      }
    end
  end

  def test_remove_draft
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.remove_draft("x")

    assert_pattern do
      response => Stigg::Models::V1::AddonRemoveDraftResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::AddonRemoveDraftResponse::Data
      }
    end
  end
end
