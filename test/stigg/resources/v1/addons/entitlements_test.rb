# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Addons::EntitlementsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.entitlements.create("addonId", entitlements: [{id: "id", type: :FEATURE}])

    assert_pattern do
      response => Stigg::Models::V1::Addons::EntitlementCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[union: Stigg::Models::V1::Addons::EntitlementCreateResponse::Data])
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.entitlements.update("id", addon_id: "addonId", body: {type: :FEATURE})

    assert_pattern do
      response => Stigg::V1::Addons::AddonPackageEntitlement
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Addons::AddonPackageEntitlement::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.entitlements.list("addonId")

    assert_pattern do
      response => Stigg::Models::V1::Addons::EntitlementListResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[union: Stigg::Models::V1::Addons::EntitlementListResponse::Data]),
        pagination: Stigg::Models::V1::Addons::EntitlementListResponse::Pagination
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.addons.entitlements.delete("id", addon_id: "addonId")

    assert_pattern do
      response => Stigg::V1::Addons::AddonPackageEntitlement
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Addons::AddonPackageEntitlement::Data
      }
    end
  end
end
