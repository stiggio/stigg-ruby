# frozen_string_literal: true

require_relative "../../../../test_helper"

class Stigg::Test::Resources::V1::Events::Addons::EntitlementsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.entitlements.create("addonId", entitlements: [{}])

    assert_pattern do
      response => Stigg::Models::V1::Events::Addons::EntitlementCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data])
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.entitlements.update("id", addon_id: "addonId")

    assert_pattern do
      response => Stigg::V1::Events::Addons::AddonPackageEntitlement
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Events::Addons::AddonPackageEntitlement::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.entitlements.list("addonId")

    assert_pattern do
      response => Stigg::Models::V1::Events::Addons::EntitlementListResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::Addons::EntitlementListResponse::Data]),
        pagination: Stigg::Models::V1::Events::Addons::EntitlementListResponse::Pagination
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.entitlements.delete("id", addon_id: "addonId")

    assert_pattern do
      response => Stigg::V1::Events::Addons::AddonPackageEntitlement
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Events::Addons::AddonPackageEntitlement::Data
      }
    end
  end
end
