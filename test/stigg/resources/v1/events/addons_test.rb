# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Events::AddonsTest < Stigg::Test::ResourceTest
  def test_archive_addon
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.archive_addon("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::AddonArchiveAddonResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::AddonArchiveAddonResponse::Data
      }
    end
  end

  def test_create_addon_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.events.addons.create_addon(id: "id", display_name: "displayName", product_id: "productId")

    assert_pattern do
      response => Stigg::Models::V1::Events::AddonCreateAddonResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::AddonCreateAddonResponse::Data
      }
    end
  end

  def test_list_addons
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.list_addons

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Events::AddonListAddonsResponse
    end

    assert_pattern do
      row => {
        id: String,
        billing_id: String | nil,
        created_at: Time,
        dependencies: ^(Stigg::Internal::Type::ArrayOf[String]) | nil,
        description: String | nil,
        display_name: String,
        entitlements: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::AddonListAddonsResponse::Entitlement]),
        is_latest: Stigg::Internal::Type::Boolean | nil,
        max_quantity: Integer | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        pricing_type: Stigg::Models::V1::Events::AddonListAddonsResponse::PricingType | nil,
        product_id: String,
        status: Stigg::Models::V1::Events::AddonListAddonsResponse::Status,
        updated_at: Time,
        version_number: Integer
      }
    end
  end

  def test_publish_addon_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.publish_addon("x", migration_type: :NEW_CUSTOMERS)

    assert_pattern do
      response => Stigg::Models::V1::Events::AddonPublishAddonResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::AddonPublishAddonResponse::Data
      }
    end
  end

  def test_retrieve_addon
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.retrieve_addon("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::AddonRetrieveAddonResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::AddonRetrieveAddonResponse::Data
      }
    end
  end

  def test_update_addon
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.update_addon("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::AddonUpdateAddonResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::AddonUpdateAddonResponse::Data
      }
    end
  end
end
