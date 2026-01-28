# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#preview
      class SubscriptionPreviewResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Pricing preview with invoices
        #
        #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data]
        required :data, -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::SubscriptionPreviewResponse::Data] Pricing preview with invoices

        # @see Stigg::Models::V1::SubscriptionPreviewResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute immediate_invoice
          #   Invoice due immediately
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice]
          required :immediate_invoice,
                   -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice },
                   api_name: :immediateInvoice

          # @!attribute billing_period_range
          #   Billing period range
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange, nil]
          optional :billing_period_range,
                   -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange },
                   api_name: :billingPeriodRange

          # @!attribute free_items
          #   Free items included
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem>, nil]
          optional :free_items,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem] },
                   api_name: :freeItems

          # @!attribute has_scheduled_updates
          #   Whether updates are scheduled
          #
          #   @return [Boolean, nil]
          optional :has_scheduled_updates, Stigg::Internal::Type::Boolean, api_name: :hasScheduledUpdates

          # @!attribute is_plan_downgrade
          #   Whether this is a downgrade
          #
          #   @return [Boolean, nil]
          optional :is_plan_downgrade, Stigg::Internal::Type::Boolean, api_name: :isPlanDowngrade

          # @!attribute recurring_invoice
          #   Recurring invoice preview
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice, nil]
          optional :recurring_invoice,
                   -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice },
                   api_name: :recurringInvoice

          # @!method initialize(immediate_invoice:, billing_period_range: nil, free_items: nil, has_scheduled_updates: nil, is_plan_downgrade: nil, recurring_invoice: nil)
          #   Pricing preview with invoices
          #
          #   @param immediate_invoice [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice] Invoice due immediately
          #
          #   @param billing_period_range [Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange] Billing period range
          #
          #   @param free_items [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem>] Free items included
          #
          #   @param has_scheduled_updates [Boolean] Whether updates are scheduled
          #
          #   @param is_plan_downgrade [Boolean] Whether this is a downgrade
          #
          #   @param recurring_invoice [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice] Recurring invoice preview

          # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data#immediate_invoice
          class ImmediateInvoice < Stigg::Internal::Type::BaseModel
            # @!attribute sub_total
            #   Subtotal before discounts
            #
            #   @return [Float]
            required :sub_total, Float, api_name: :subTotal

            # @!attribute total
            #   Invoice total
            #
            #   @return [Float]
            required :total, Float

            # @!attribute billing_period_range
            #   Billing period covered
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange, nil]
            optional :billing_period_range,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange },
                     api_name: :billingPeriodRange

            # @!attribute currency
            #   Currency code
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute discount
            #   Total discount amount
            #
            #   @return [Float, nil]
            optional :discount, Float

            # @!attribute discount_details
            #   Discount breakdown
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails, nil]
            optional :discount_details,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails },
                     api_name: :discountDetails

            # @!attribute discounts
            #   Applied discounts
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount>, nil]
            optional :discounts,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount] }

            # @!attribute lines
            #   Line items
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line>, nil]
            optional :lines,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line] }

            # @!attribute tax
            #   Tax amount
            #
            #   @return [Float, nil]
            optional :tax, Float

            # @!method initialize(sub_total:, total:, billing_period_range: nil, currency: nil, discount: nil, discount_details: nil, discounts: nil, lines: nil, tax: nil)
            #   Invoice due immediately
            #
            #   @param sub_total [Float] Subtotal before discounts
            #
            #   @param total [Float] Invoice total
            #
            #   @param billing_period_range [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange] Billing period covered
            #
            #   @param currency [String, nil] Currency code
            #
            #   @param discount [Float] Total discount amount
            #
            #   @param discount_details [Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails] Discount breakdown
            #
            #   @param discounts [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount>] Applied discounts
            #
            #   @param lines [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line>] Line items
            #
            #   @param tax [Float] Tax amount

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
              #   Billing period covered
              #
              #   @param end_ [Time] Billing period end date
              #
              #   @param start [Time] Billing period start date
            end

            # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice#discount_details
            class DiscountDetails < Stigg::Internal::Type::BaseModel
              # @!attribute code
              #   Promo code used
              #
              #   @return [String, nil]
              optional :code, String

              # @!attribute fixed_amount
              #   Fixed discount amount
              #
              #   @return [Float, nil]
              optional :fixed_amount, Float, api_name: :fixedAmount

              # @!attribute percentage
              #   Percentage discount
              #
              #   @return [Float, nil]
              optional :percentage, Float

              # @!method initialize(code: nil, fixed_amount: nil, percentage: nil)
              #   Discount breakdown
              #
              #   @param code [String] Promo code used
              #
              #   @param fixed_amount [Float] Fixed discount amount
              #
              #   @param percentage [Float] Percentage discount
            end

            class Discount < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   Discount amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   Currency code
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #   Discount description
              #
              #   @return [String]
              required :description, String

              # @!method initialize(amount:, currency:, description:)
              #   Applied discount amount
              #
              #   @param amount [Float] Discount amount
              #
              #   @param currency [String] Currency code
              #
              #   @param description [String] Discount description
            end

            class Line < Stigg::Internal::Type::BaseModel
              # @!attribute currency
              #   Currency code
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #   Line item description
              #
              #   @return [String]
              required :description, String

              # @!attribute sub_total
              #   Line subtotal
              #
              #   @return [Float]
              required :sub_total, Float, api_name: :subTotal

              # @!attribute unit_price
              #   Price per unit
              #
              #   @return [Float]
              required :unit_price, Float, api_name: :unitPrice

              # @!attribute quantity
              #   Quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!method initialize(currency:, description:, sub_total:, unit_price:, quantity: nil)
              #   Invoice line item
              #
              #   @param currency [String] Currency code
              #
              #   @param description [String] Line item description
              #
              #   @param sub_total [Float] Line subtotal
              #
              #   @param unit_price [Float] Price per unit
              #
              #   @param quantity [Float] Quantity
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
            #   Billing period range
            #
            #   @param end_ [Time] Billing period end date
            #
            #   @param start [Time] Billing period start date
          end

          class FreeItem < Stigg::Internal::Type::BaseModel
            # @!attribute addon_id
            #   Addon ID
            #
            #   @return [String]
            required :addon_id, String, api_name: :addonId

            # @!attribute quantity
            #   Quantity
            #
            #   @return [Float]
            required :quantity, Float

            # @!method initialize(addon_id:, quantity:)
            #   Free item in subscription
            #
            #   @param addon_id [String] Addon ID
            #
            #   @param quantity [Float] Quantity
          end

          # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data#recurring_invoice
          class RecurringInvoice < Stigg::Internal::Type::BaseModel
            # @!attribute sub_total
            #   Subtotal before discounts
            #
            #   @return [Float]
            required :sub_total, Float, api_name: :subTotal

            # @!attribute total
            #   Invoice total
            #
            #   @return [Float]
            required :total, Float

            # @!attribute billing_period_range
            #   Billing period covered
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange, nil]
            optional :billing_period_range,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange },
                     api_name: :billingPeriodRange

            # @!attribute currency
            #   Currency code
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute discount
            #   Total discount amount
            #
            #   @return [Float, nil]
            optional :discount, Float

            # @!attribute discount_details
            #   Discount breakdown
            #
            #   @return [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails, nil]
            optional :discount_details,
                     -> { Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails },
                     api_name: :discountDetails

            # @!attribute discounts
            #   Applied discounts
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount>, nil]
            optional :discounts,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount] }

            # @!attribute lines
            #   Line items
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line>, nil]
            optional :lines,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line] }

            # @!attribute tax
            #   Tax amount
            #
            #   @return [Float, nil]
            optional :tax, Float

            # @!method initialize(sub_total:, total:, billing_period_range: nil, currency: nil, discount: nil, discount_details: nil, discounts: nil, lines: nil, tax: nil)
            #   Recurring invoice preview
            #
            #   @param sub_total [Float] Subtotal before discounts
            #
            #   @param total [Float] Invoice total
            #
            #   @param billing_period_range [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange] Billing period covered
            #
            #   @param currency [String, nil] Currency code
            #
            #   @param discount [Float] Total discount amount
            #
            #   @param discount_details [Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails] Discount breakdown
            #
            #   @param discounts [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount>] Applied discounts
            #
            #   @param lines [Array<Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line>] Line items
            #
            #   @param tax [Float] Tax amount

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
              #   Billing period covered
              #
              #   @param end_ [Time] Billing period end date
              #
              #   @param start [Time] Billing period start date
            end

            # @see Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice#discount_details
            class DiscountDetails < Stigg::Internal::Type::BaseModel
              # @!attribute code
              #   Promo code used
              #
              #   @return [String, nil]
              optional :code, String

              # @!attribute fixed_amount
              #   Fixed discount amount
              #
              #   @return [Float, nil]
              optional :fixed_amount, Float, api_name: :fixedAmount

              # @!attribute percentage
              #   Percentage discount
              #
              #   @return [Float, nil]
              optional :percentage, Float

              # @!method initialize(code: nil, fixed_amount: nil, percentage: nil)
              #   Discount breakdown
              #
              #   @param code [String] Promo code used
              #
              #   @param fixed_amount [Float] Fixed discount amount
              #
              #   @param percentage [Float] Percentage discount
            end

            class Discount < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   Discount amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   Currency code
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #   Discount description
              #
              #   @return [String]
              required :description, String

              # @!method initialize(amount:, currency:, description:)
              #   Applied discount amount
              #
              #   @param amount [Float] Discount amount
              #
              #   @param currency [String] Currency code
              #
              #   @param description [String] Discount description
            end

            class Line < Stigg::Internal::Type::BaseModel
              # @!attribute currency
              #   Currency code
              #
              #   @return [String]
              required :currency, String

              # @!attribute description
              #   Line item description
              #
              #   @return [String]
              required :description, String

              # @!attribute sub_total
              #   Line subtotal
              #
              #   @return [Float]
              required :sub_total, Float, api_name: :subTotal

              # @!attribute unit_price
              #   Price per unit
              #
              #   @return [Float]
              required :unit_price, Float, api_name: :unitPrice

              # @!attribute quantity
              #   Quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!method initialize(currency:, description:, sub_total:, unit_price:, quantity: nil)
              #   Invoice line item
              #
              #   @param currency [String] Currency code
              #
              #   @param description [String] Line item description
              #
              #   @param sub_total [Float] Line subtotal
              #
              #   @param unit_price [Float] Price per unit
              #
              #   @param quantity [Float] Quantity
            end
          end
        end
      end
    end
  end
end
