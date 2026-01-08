# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#preview
      class SubscriptionPreviewResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data]
        required :data, -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data }

        # @!method initialize(data:)
        #   @param data [Stigg::Models::V1::SubscriptionPreviewResponse::Data]

        # @see Stigg::Models::V1::SubscriptionPreviewResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute immediate_invoice
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice]
          required :immediate_invoice,
                   -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice },
                   api_name: :immediateInvoice

          # @!attribute billing_period_range
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange, nil]
          optional :billing_period_range,
                   -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange },
                   api_name: :billingPeriodRange

          # @!attribute free_items
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem>, nil]
          optional :free_items,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem] },
                   api_name: :freeItems

          # @!attribute has_scheduled_updates
          #
          #   @return [Boolean, nil]
          optional :has_scheduled_updates, Stigg::Internal::Type::Boolean, api_name: :hasScheduledUpdates

          # @!attribute is_plan_downgrade
          #
          #   @return [Boolean, nil]
          optional :is_plan_downgrade, Stigg::Internal::Type::Boolean, api_name: :isPlanDowngrade

          # @!attribute recurring_invoice
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice, nil]
          optional :recurring_invoice,
                   -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice },
                   api_name: :recurringInvoice

          # @!method initialize(immediate_invoice:, billing_period_range: nil, free_items: nil, has_scheduled_updates: nil, is_plan_downgrade: nil, recurring_invoice: nil)
          #   @param immediate_invoice [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice]
          #   @param billing_period_range [Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange]
          #   @param free_items [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem>]
          #   @param has_scheduled_updates [Boolean]
          #   @param is_plan_downgrade [Boolean]
          #   @param recurring_invoice [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice]

          # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data#immediate_invoice
          class ImmediateInvoice < Stigg::Internal::Type::BaseModel
            # @!attribute sub_total
            #
            #   @return [Float]
            required :sub_total, Float, api_name: :subTotal

            # @!attribute total
            #
            #   @return [Float]
            required :total, Float

            # @!attribute billing_period_range
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange, nil]
            optional :billing_period_range,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange },
                     api_name: :billingPeriodRange

            # @!attribute currency
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute discount
            #
            #   @return [Float, nil]
            optional :discount, Float

            # @!attribute discount_details
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails, nil]
            optional :discount_details,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails },
                     api_name: :discountDetails

            # @!attribute discounts
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount>, nil]
            optional :discounts,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount] }

            # @!attribute lines
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line>, nil]
            optional :lines,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line] }

            # @!attribute tax
            #
            #   @return [Float, nil]
            optional :tax, Float

            # @!method initialize(sub_total:, total:, billing_period_range: nil, currency: nil, discount: nil, discount_details: nil, discounts: nil, lines: nil, tax: nil)
            #   @param sub_total [Float]
            #   @param total [Float]
            #   @param billing_period_range [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange]
            #   @param currency [String, nil]
            #   @param discount [Float]
            #   @param discount_details [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails]
            #   @param discounts [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount>]
            #   @param lines [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line>]
            #   @param tax [Float]

            # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice#billing_period_range
            class BillingPeriodRange < Stigg::Internal::Type::BaseModel
              # @!attribute end_
              #   Billing period end date
              #
              #   @return [Time]
              required :end_, Time, api_name: :end

              # @!attribute start
              #   Billing period start date
              #
              #   @return [Time]
              required :start, Time

              # @!method initialize(end_:, start:)
              #   @param end_ [Time] Billing period end date
              #
              #   @param start [Time] Billing period start date
            end

            # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice#discount_details
            class DiscountDetails < Stigg::Internal::Type::BaseModel
              # @!attribute code
              #
              #   @return [String, nil]
              optional :code, String

              # @!attribute fixed_amount
              #
              #   @return [Float, nil]
              optional :fixed_amount, Float, api_name: :fixedAmount

              # @!attribute percentage
              #
              #   @return [Float, nil]
              optional :percentage, Float

              # @!method initialize(code: nil, fixed_amount: nil, percentage: nil)
              #   @param code [String]
              #   @param fixed_amount [Float]
              #   @param percentage [Float]
            end

            class Discount < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #
              #   @return [String]
              required :description, String

              # @!method initialize(amount:, currency:, description:)
              #   @param amount [Float]
              #   @param currency [String]
              #   @param description [String]
            end

            class Line < Stigg::Internal::Type::BaseModel
              # @!attribute currency
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #
              #   @return [String]
              required :description, String

              # @!attribute sub_total
              #
              #   @return [Float]
              required :sub_total, Float, api_name: :subTotal

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float, api_name: :unitPrice

              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!method initialize(currency:, description:, sub_total:, unit_price:, quantity: nil)
              #   @param currency [String]
              #   @param description [String]
              #   @param sub_total [Float]
              #   @param unit_price [Float]
              #   @param quantity [Float]
            end
          end

          # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data#billing_period_range
          class BillingPeriodRange < Stigg::Internal::Type::BaseModel
            # @!attribute end_
            #   Billing period end date
            #
            #   @return [Time, nil]
            optional :end_, Time, api_name: :end

            # @!attribute start
            #   Billing period start date
            #
            #   @return [Time, nil]
            optional :start, Time

            # @!method initialize(end_: nil, start: nil)
            #   @param end_ [Time] Billing period end date
            #
            #   @param start [Time] Billing period start date
          end

          class FreeItem < Stigg::Internal::Type::BaseModel
            # @!attribute addon_id
            #
            #   @return [String]
            required :addon_id, String, api_name: :addonId

            # @!attribute quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!method initialize(addon_id:, quantity:)
            #   @param addon_id [String]
            #   @param quantity [Float]
          end

          # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data#recurring_invoice
          class RecurringInvoice < Stigg::Internal::Type::BaseModel
            # @!attribute sub_total
            #
            #   @return [Float]
            required :sub_total, Float, api_name: :subTotal

            # @!attribute total
            #
            #   @return [Float]
            required :total, Float

            # @!attribute billing_period_range
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange, nil]
            optional :billing_period_range,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange },
                     api_name: :billingPeriodRange

            # @!attribute currency
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute discount
            #
            #   @return [Float, nil]
            optional :discount, Float

            # @!attribute discount_details
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails, nil]
            optional :discount_details,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails },
                     api_name: :discountDetails

            # @!attribute discounts
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount>, nil]
            optional :discounts,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount] }

            # @!attribute lines
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line>, nil]
            optional :lines,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line] }

            # @!attribute tax
            #
            #   @return [Float, nil]
            optional :tax, Float

            # @!method initialize(sub_total:, total:, billing_period_range: nil, currency: nil, discount: nil, discount_details: nil, discounts: nil, lines: nil, tax: nil)
            #   @param sub_total [Float]
            #   @param total [Float]
            #   @param billing_period_range [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange]
            #   @param currency [String, nil]
            #   @param discount [Float]
            #   @param discount_details [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails]
            #   @param discounts [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount>]
            #   @param lines [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line>]
            #   @param tax [Float]

            # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice#billing_period_range
            class BillingPeriodRange < Stigg::Internal::Type::BaseModel
              # @!attribute end_
              #   Billing period end date
              #
              #   @return [Time]
              required :end_, Time, api_name: :end

              # @!attribute start
              #   Billing period start date
              #
              #   @return [Time]
              required :start, Time

              # @!method initialize(end_:, start:)
              #   @param end_ [Time] Billing period end date
              #
              #   @param start [Time] Billing period start date
            end

            # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice#discount_details
            class DiscountDetails < Stigg::Internal::Type::BaseModel
              # @!attribute code
              #
              #   @return [String, nil]
              optional :code, String

              # @!attribute fixed_amount
              #
              #   @return [Float, nil]
              optional :fixed_amount, Float, api_name: :fixedAmount

              # @!attribute percentage
              #
              #   @return [Float, nil]
              optional :percentage, Float

              # @!method initialize(code: nil, fixed_amount: nil, percentage: nil)
              #   @param code [String]
              #   @param fixed_amount [Float]
              #   @param percentage [Float]
            end

            class Discount < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #
              #   @return [String]
              required :description, String

              # @!method initialize(amount:, currency:, description:)
              #   @param amount [Float]
              #   @param currency [String]
              #   @param description [String]
            end

            class Line < Stigg::Internal::Type::BaseModel
              # @!attribute currency
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #
              #   @return [String]
              required :description, String

              # @!attribute sub_total
              #
              #   @return [Float]
              required :sub_total, Float, api_name: :subTotal

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float, api_name: :unitPrice

              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!method initialize(currency:, description:, sub_total:, unit_price:, quantity: nil)
              #   @param currency [String]
              #   @param description [String]
              #   @param sub_total [Float]
              #   @param unit_price [Float]
              #   @param quantity [Float]
            end
          end
        end
      end
    end
  end
end
