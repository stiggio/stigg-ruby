# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Subscriptions
        # @see Stigg::Resources::V1::Subscriptions::Usage#charge_usage
        class UsageChargeUsageResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Result of charging subscription usage including the billing period and charged
          #   items.
          #
          #   @return [Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data]
          required :data, -> { Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data }

          # @!method initialize(data:)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse} for more details.
          #
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data] Result of charging subscription usage including the billing period and charged i

          # @see Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute invoice_billing_id
            #   The invoice ID in the billing integration
            #
            #   @return [String, nil]
            required :invoice_billing_id, String, api_name: :invoiceBillingId, nil?: true

            # @!attribute period_end
            #   End of the usage billing period
            #
            #   @return [Time]
            required :period_end, Time, api_name: :periodEnd

            # @!attribute period_start
            #   Start of the usage billing period
            #
            #   @return [Time]
            required :period_start, Time, api_name: :periodStart

            # @!attribute subscription_id
            #   The subscription ID for which usage was charged
            #
            #   @return [String]
            required :subscription_id, String, api_name: :subscriptionId

            # @!attribute usage_charged
            #   Usage items that were charged
            #
            #   @return [Array<Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::UsageCharged>]
            required :usage_charged,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::UsageCharged] },
                     api_name: :usageCharged

            # @!method initialize(invoice_billing_id:, period_end:, period_start:, subscription_id:, usage_charged:)
            #   Result of charging subscription usage including the billing period and charged
            #   items.
            #
            #   @param invoice_billing_id [String, nil] The invoice ID in the billing integration
            #
            #   @param period_end [Time] End of the usage billing period
            #
            #   @param period_start [Time] Start of the usage billing period
            #
            #   @param subscription_id [String] The subscription ID for which usage was charged
            #
            #   @param usage_charged [Array<Stigg::Models::V1::Subscriptions::UsageChargeUsageResponse::Data::UsageCharged>] Usage items that were charged

            class UsageCharged < Stigg::Internal::Type::BaseModel
              # @!attribute feature_id
              #   The feature ID for which usage was charged
              #
              #   @return [String, nil]
              required :feature_id, String, api_name: :featureId, nil?: true

              # @!attribute usage_amount
              #   The number of units charged
              #
              #   @return [Float]
              required :usage_amount, Float, api_name: :usageAmount

              # @!method initialize(feature_id:, usage_amount:)
              #   A single usage item that was charged.
              #
              #   @param feature_id [String, nil] The feature ID for which usage was charged
              #
              #   @param usage_amount [Float] The number of units charged
            end
          end
        end
      end
    end
  end
end
