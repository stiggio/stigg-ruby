# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1::Customers::PromotionalEntitlementsTest < Stigg::Test::ResourceTest
  def test_grant_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.customers.promotional_entitlements.grant(
        "customerId",
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
      response => Stigg::Models::V1::Customers::PromotionalEntitlementGrantResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Customers::PromotionalEntitlementGrantResponse::Data])
      }
    end
  end

  def test_revoke_required_params
    skip("Prism tests are disabled")

    response = @stigg.v1.customers.promotional_entitlements.revoke("featureId", customer_id: "customerId")

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
