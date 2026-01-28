# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionPreviewResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::SubscriptionPreviewResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Pricing preview with invoices
        sig { returns(Stigg::Models::V1::SubscriptionPreviewResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::SubscriptionPreviewResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data: Stigg::Models::V1::SubscriptionPreviewResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Pricing preview with invoices
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::SubscriptionPreviewResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::SubscriptionPreviewResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Invoice due immediately
          sig do
            returns(
              Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice
            )
          end
          attr_reader :immediate_invoice

          sig do
            params(
              immediate_invoice:
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::OrHash
            ).void
          end
          attr_writer :immediate_invoice

          # Billing period range
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange
              )
            )
          end
          attr_reader :billing_period_range

          sig do
            params(
              billing_period_range:
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange::OrHash
            ).void
          end
          attr_writer :billing_period_range

          # Free items included
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem
                ]
              )
            )
          end
          attr_reader :free_items

          sig do
            params(
              free_items:
                T::Array[
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem::OrHash
                ]
            ).void
          end
          attr_writer :free_items

          # Whether updates are scheduled
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_scheduled_updates

          sig { params(has_scheduled_updates: T::Boolean).void }
          attr_writer :has_scheduled_updates

          # Whether this is a downgrade
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_plan_downgrade

          sig { params(is_plan_downgrade: T::Boolean).void }
          attr_writer :is_plan_downgrade

          # Recurring invoice preview
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice
              )
            )
          end
          attr_reader :recurring_invoice

          sig do
            params(
              recurring_invoice:
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::OrHash
            ).void
          end
          attr_writer :recurring_invoice

          # Pricing preview with invoices
          sig do
            params(
              immediate_invoice:
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::OrHash,
              billing_period_range:
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange::OrHash,
              free_items:
                T::Array[
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem::OrHash
                ],
              has_scheduled_updates: T::Boolean,
              is_plan_downgrade: T::Boolean,
              recurring_invoice:
                Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Invoice due immediately
            immediate_invoice:,
            # Billing period range
            billing_period_range: nil,
            # Free items included
            free_items: nil,
            # Whether updates are scheduled
            has_scheduled_updates: nil,
            # Whether this is a downgrade
            is_plan_downgrade: nil,
            # Recurring invoice preview
            recurring_invoice: nil
          )
          end

          sig do
            override.returns(
              {
                immediate_invoice:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice,
                billing_period_range:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange,
                free_items:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem
                  ],
                has_scheduled_updates: T::Boolean,
                is_plan_downgrade: T::Boolean,
                recurring_invoice:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice
              }
            )
          end
          def to_hash
          end

          class ImmediateInvoice < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice,
                  Stigg::Internal::AnyHash
                )
              end

            # Subtotal before discounts
            sig { returns(Float) }
            attr_accessor :sub_total

            # Invoice total
            sig { returns(Float) }
            attr_accessor :total

            # Billing period covered
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange
                )
              )
            end
            attr_reader :billing_period_range

            sig do
              params(
                billing_period_range:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange::OrHash
              ).void
            end
            attr_writer :billing_period_range

            # Currency code
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # Total discount amount
            sig { returns(T.nilable(Float)) }
            attr_reader :discount

            sig { params(discount: Float).void }
            attr_writer :discount

            # Discount breakdown
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails
                )
              )
            end
            attr_reader :discount_details

            sig do
              params(
                discount_details:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails::OrHash
              ).void
            end
            attr_writer :discount_details

            # Applied discounts
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount
                  ]
                )
              )
            end
            attr_reader :discounts

            sig do
              params(
                discounts:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount::OrHash
                  ]
              ).void
            end
            attr_writer :discounts

            # Line items
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line
                  ]
                )
              )
            end
            attr_reader :lines

            sig do
              params(
                lines:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line::OrHash
                  ]
              ).void
            end
            attr_writer :lines

            # Tax amount
            sig { returns(T.nilable(Float)) }
            attr_reader :tax

            sig { params(tax: Float).void }
            attr_writer :tax

            # Invoice due immediately
            sig do
              params(
                sub_total: Float,
                total: Float,
                billing_period_range:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange::OrHash,
                currency: T.nilable(String),
                discount: Float,
                discount_details:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails::OrHash,
                discounts:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount::OrHash
                  ],
                lines:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line::OrHash
                  ],
                tax: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Subtotal before discounts
              sub_total:,
              # Invoice total
              total:,
              # Billing period covered
              billing_period_range: nil,
              # Currency code
              currency: nil,
              # Total discount amount
              discount: nil,
              # Discount breakdown
              discount_details: nil,
              # Applied discounts
              discounts: nil,
              # Line items
              lines: nil,
              # Tax amount
              tax: nil
            )
            end

            sig do
              override.returns(
                {
                  sub_total: Float,
                  total: Float,
                  billing_period_range:
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange,
                  currency: T.nilable(String),
                  discount: Float,
                  discount_details:
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails,
                  discounts:
                    T::Array[
                      Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount
                    ],
                  lines:
                    T::Array[
                      Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line
                    ],
                  tax: Float
                }
              )
            end
            def to_hash
            end

            class BillingPeriodRange < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::BillingPeriodRange,
                    Stigg::Internal::AnyHash
                  )
                end

              # Billing period end date
              sig { returns(Time) }
              attr_accessor :end_

              # Billing period start date
              sig { returns(Time) }
              attr_accessor :start

              # Billing period covered
              sig { params(end_: Time, start: Time).returns(T.attached_class) }
              def self.new(
                # Billing period end date
                end_:,
                # Billing period start date
                start:
              )
              end

              sig { override.returns({ end_: Time, start: Time }) }
              def to_hash
              end
            end

            class DiscountDetails < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::DiscountDetails,
                    Stigg::Internal::AnyHash
                  )
                end

              # Promo code used
              sig { returns(T.nilable(String)) }
              attr_reader :code

              sig { params(code: String).void }
              attr_writer :code

              # Fixed discount amount
              sig { returns(T.nilable(Float)) }
              attr_reader :fixed_amount

              sig { params(fixed_amount: Float).void }
              attr_writer :fixed_amount

              # Percentage discount
              sig { returns(T.nilable(Float)) }
              attr_reader :percentage

              sig { params(percentage: Float).void }
              attr_writer :percentage

              # Discount breakdown
              sig do
                params(
                  code: String,
                  fixed_amount: Float,
                  percentage: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Promo code used
                code: nil,
                # Fixed discount amount
                fixed_amount: nil,
                # Percentage discount
                percentage: nil
              )
              end

              sig do
                override.returns(
                  { code: String, fixed_amount: Float, percentage: Float }
                )
              end
              def to_hash
              end
            end

            class Discount < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Discount,
                    Stigg::Internal::AnyHash
                  )
                end

              # Discount amount
              sig { returns(Float) }
              attr_accessor :amount

              # Currency code
              sig { returns(String) }
              attr_accessor :currency

              # Discount description
              sig { returns(String) }
              attr_accessor :description

              # Applied discount amount
              sig do
                params(
                  amount: Float,
                  currency: String,
                  description: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Discount amount
                amount:,
                # Currency code
                currency:,
                # Discount description
                description:
              )
              end

              sig do
                override.returns(
                  { amount: Float, currency: String, description: String }
                )
              end
              def to_hash
              end
            end

            class Line < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::ImmediateInvoice::Line,
                    Stigg::Internal::AnyHash
                  )
                end

              # Currency code
              sig { returns(String) }
              attr_accessor :currency

              # Line item description
              sig { returns(String) }
              attr_accessor :description

              # Line subtotal
              sig { returns(Float) }
              attr_accessor :sub_total

              # Price per unit
              sig { returns(Float) }
              attr_accessor :unit_price

              # Quantity
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Invoice line item
              sig do
                params(
                  currency: String,
                  description: String,
                  sub_total: Float,
                  unit_price: Float,
                  quantity: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Currency code
                currency:,
                # Line item description
                description:,
                # Line subtotal
                sub_total:,
                # Price per unit
                unit_price:,
                # Quantity
                quantity: nil
              )
              end

              sig do
                override.returns(
                  {
                    currency: String,
                    description: String,
                    sub_total: Float,
                    unit_price: Float,
                    quantity: Float
                  }
                )
              end
              def to_hash
              end
            end
          end

          class BillingPeriodRange < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::BillingPeriodRange,
                  Stigg::Internal::AnyHash
                )
              end

            # Billing period end date
            sig { returns(T.nilable(Time)) }
            attr_reader :end_

            sig { params(end_: Time).void }
            attr_writer :end_

            # Billing period start date
            sig { returns(T.nilable(Time)) }
            attr_reader :start

            sig { params(start: Time).void }
            attr_writer :start

            # Billing period range
            sig { params(end_: Time, start: Time).returns(T.attached_class) }
            def self.new(
              # Billing period end date
              end_: nil,
              # Billing period start date
              start: nil
            )
            end

            sig { override.returns({ end_: Time, start: Time }) }
            def to_hash
            end
          end

          class FreeItem < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::FreeItem,
                  Stigg::Internal::AnyHash
                )
              end

            # Addon ID
            sig { returns(String) }
            attr_accessor :addon_id

            # Quantity
            sig { returns(Float) }
            attr_accessor :quantity

            # Free item in subscription
            sig do
              params(addon_id: String, quantity: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Addon ID
              addon_id:,
              # Quantity
              quantity:
            )
            end

            sig { override.returns({ addon_id: String, quantity: Float }) }
            def to_hash
            end
          end

          class RecurringInvoice < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice,
                  Stigg::Internal::AnyHash
                )
              end

            # Subtotal before discounts
            sig { returns(Float) }
            attr_accessor :sub_total

            # Invoice total
            sig { returns(Float) }
            attr_accessor :total

            # Billing period covered
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange
                )
              )
            end
            attr_reader :billing_period_range

            sig do
              params(
                billing_period_range:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange::OrHash
              ).void
            end
            attr_writer :billing_period_range

            # Currency code
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # Total discount amount
            sig { returns(T.nilable(Float)) }
            attr_reader :discount

            sig { params(discount: Float).void }
            attr_writer :discount

            # Discount breakdown
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails
                )
              )
            end
            attr_reader :discount_details

            sig do
              params(
                discount_details:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails::OrHash
              ).void
            end
            attr_writer :discount_details

            # Applied discounts
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount
                  ]
                )
              )
            end
            attr_reader :discounts

            sig do
              params(
                discounts:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount::OrHash
                  ]
              ).void
            end
            attr_writer :discounts

            # Line items
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line
                  ]
                )
              )
            end
            attr_reader :lines

            sig do
              params(
                lines:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line::OrHash
                  ]
              ).void
            end
            attr_writer :lines

            # Tax amount
            sig { returns(T.nilable(Float)) }
            attr_reader :tax

            sig { params(tax: Float).void }
            attr_writer :tax

            # Recurring invoice preview
            sig do
              params(
                sub_total: Float,
                total: Float,
                billing_period_range:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange::OrHash,
                currency: T.nilable(String),
                discount: Float,
                discount_details:
                  Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails::OrHash,
                discounts:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount::OrHash
                  ],
                lines:
                  T::Array[
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line::OrHash
                  ],
                tax: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Subtotal before discounts
              sub_total:,
              # Invoice total
              total:,
              # Billing period covered
              billing_period_range: nil,
              # Currency code
              currency: nil,
              # Total discount amount
              discount: nil,
              # Discount breakdown
              discount_details: nil,
              # Applied discounts
              discounts: nil,
              # Line items
              lines: nil,
              # Tax amount
              tax: nil
            )
            end

            sig do
              override.returns(
                {
                  sub_total: Float,
                  total: Float,
                  billing_period_range:
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange,
                  currency: T.nilable(String),
                  discount: Float,
                  discount_details:
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails,
                  discounts:
                    T::Array[
                      Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount
                    ],
                  lines:
                    T::Array[
                      Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line
                    ],
                  tax: Float
                }
              )
            end
            def to_hash
            end

            class BillingPeriodRange < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::BillingPeriodRange,
                    Stigg::Internal::AnyHash
                  )
                end

              # Billing period end date
              sig { returns(Time) }
              attr_accessor :end_

              # Billing period start date
              sig { returns(Time) }
              attr_accessor :start

              # Billing period covered
              sig { params(end_: Time, start: Time).returns(T.attached_class) }
              def self.new(
                # Billing period end date
                end_:,
                # Billing period start date
                start:
              )
              end

              sig { override.returns({ end_: Time, start: Time }) }
              def to_hash
              end
            end

            class DiscountDetails < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::DiscountDetails,
                    Stigg::Internal::AnyHash
                  )
                end

              # Promo code used
              sig { returns(T.nilable(String)) }
              attr_reader :code

              sig { params(code: String).void }
              attr_writer :code

              # Fixed discount amount
              sig { returns(T.nilable(Float)) }
              attr_reader :fixed_amount

              sig { params(fixed_amount: Float).void }
              attr_writer :fixed_amount

              # Percentage discount
              sig { returns(T.nilable(Float)) }
              attr_reader :percentage

              sig { params(percentage: Float).void }
              attr_writer :percentage

              # Discount breakdown
              sig do
                params(
                  code: String,
                  fixed_amount: Float,
                  percentage: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Promo code used
                code: nil,
                # Fixed discount amount
                fixed_amount: nil,
                # Percentage discount
                percentage: nil
              )
              end

              sig do
                override.returns(
                  { code: String, fixed_amount: Float, percentage: Float }
                )
              end
              def to_hash
              end
            end

            class Discount < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Discount,
                    Stigg::Internal::AnyHash
                  )
                end

              # Discount amount
              sig { returns(Float) }
              attr_accessor :amount

              # Currency code
              sig { returns(String) }
              attr_accessor :currency

              # Discount description
              sig { returns(String) }
              attr_accessor :description

              # Applied discount amount
              sig do
                params(
                  amount: Float,
                  currency: String,
                  description: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Discount amount
                amount:,
                # Currency code
                currency:,
                # Discount description
                description:
              )
              end

              sig do
                override.returns(
                  { amount: Float, currency: String, description: String }
                )
              end
              def to_hash
              end
            end

            class Line < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::SubscriptionPreviewResponse::Data::RecurringInvoice::Line,
                    Stigg::Internal::AnyHash
                  )
                end

              # Currency code
              sig { returns(String) }
              attr_accessor :currency

              # Line item description
              sig { returns(String) }
              attr_accessor :description

              # Line subtotal
              sig { returns(Float) }
              attr_accessor :sub_total

              # Price per unit
              sig { returns(Float) }
              attr_accessor :unit_price

              # Quantity
              sig { returns(T.nilable(Float)) }
              attr_reader :quantity

              sig { params(quantity: Float).void }
              attr_writer :quantity

              # Invoice line item
              sig do
                params(
                  currency: String,
                  description: String,
                  sub_total: Float,
                  unit_price: Float,
                  quantity: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Currency code
                currency:,
                # Line item description
                description:,
                # Line subtotal
                sub_total:,
                # Price per unit
                unit_price:,
                # Quantity
                quantity: nil
              )
              end

              sig do
                override.returns(
                  {
                    currency: String,
                    description: String,
                    sub_total: Float,
                    unit_price: Float,
                    quantity: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
