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
