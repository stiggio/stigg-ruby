# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Plans::EntitlementsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.entitlements.create("planId", entitlements: [{id: "id", type: :FEATURE}])

    assert_pattern do
      response => Stigg::Models::V1::Plans::EntitlementCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[union: Stigg::Models::V1::Plans::EntitlementCreateResponse::Data])
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.entitlements.update("id", plan_id: "planId", body: {type: :FEATURE})

    assert_pattern do
      response => Stigg::V1::Plans::PlanEntitlement
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Plans::PlanEntitlement::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.entitlements.list("planId")

    assert_pattern do
      response => Stigg::Models::V1::Plans::EntitlementListResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[union: Stigg::Models::V1::Plans::EntitlementListResponse::Data]),
        pagination: Stigg::Models::V1::Plans::EntitlementListResponse::Pagination
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @stigg.v1.plans.entitlements.delete("id", plan_id: "planId")

    assert_pattern do
      response => Stigg::V1::Plans::PlanEntitlement
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Plans::PlanEntitlement::Data
      }
    end
  end
end
