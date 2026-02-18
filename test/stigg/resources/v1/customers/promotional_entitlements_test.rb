# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Customers::PromotionalEntitlementsTest < Stigg::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.customers.promotional_entitlements.create(
        "x",
        promotional_entitlements: [
          {
            customEndDate: "2019-12-27T18:11:19.117Z",
            enumValues: ["string"],
            featureId: "featureId",
            hasSoftLimit: true,
            hasUnlimitedUsage: true,
            isVisible: true,
            monthlyResetPeriodConfiguration: {accordingTo: :SubscriptionStart},
            period: :"1 week",
            resetPeriod: :YEAR,
            usageLimit: -9_007_199_254_740_991,
            weeklyResetPeriodConfiguration: {accordingTo: :SubscriptionStart},
            yearlyResetPeriodConfiguration: {accordingTo: :SubscriptionStart}
          }
        ]
      )

    assert_pattern do
      response => Stigg::Models::V1::Customers::PromotionalEntitlementCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Customers::PromotionalEntitlementCreateResponse::Data])
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.promotional_entitlements.list("x")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Customers::PromotionalEntitlementListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        end_date: Time | nil,
        enum_values: ^(Stigg::Internal::Type::ArrayOf[String]) | nil,
        environment_id: String,
        feature_group_ids: ^(Stigg::Internal::Type::ArrayOf[String]) | nil,
        feature_id: String,
        has_soft_limit: Stigg::Internal::Type::Boolean | nil,
        has_unlimited_usage: Stigg::Internal::Type::Boolean | nil,
        is_visible: Stigg::Internal::Type::Boolean,
        period: Stigg::Models::V1::Customers::PromotionalEntitlementListResponse::Period,
        reset_period: Stigg::Models::V1::Customers::PromotionalEntitlementListResponse::ResetPeriod | nil,
        reset_period_configuration: Stigg::Models::V1::Customers::PromotionalEntitlementListResponse::ResetPeriodConfiguration | nil,
        start_date: Time,
        status: Stigg::Models::V1::Customers::PromotionalEntitlementListResponse::Status,
        updated_at: Time,
        usage_limit: Float | nil
      }
    end
  end

  def test_revoke_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.promotional_entitlements.revoke("featureId", id: "id")

    assert_pattern do
      response => Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data
      }
    end
  end
end
