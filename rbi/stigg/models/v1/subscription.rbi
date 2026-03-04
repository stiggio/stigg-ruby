# typed: strong

module Stigg
  module Models
    module V1
      class Subscription < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Stigg::V1::Subscription, Stigg::Internal::AnyHash)
          end

        # Customer subscription to a plan
        sig { returns(Stigg::V1::Subscription::Data) }
        attr_reader :data

        sig { params(data: Stigg::V1::Subscription::Data::OrHash).void }
        attr_writer :data

        # Response object
        sig do
          params(data: Stigg::V1::Subscription::Data::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # Customer subscription to a plan
          data:
        )
        end

        sig { override.returns({ data: Stigg::V1::Subscription::Data }) }
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Stigg::V1::Subscription::Data, Stigg::Internal::AnyHash)
            end

          # Subscription ID
          sig { returns(String) }
          attr_accessor :id

          # Billing ID
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # Created at
          sig { returns(Time) }
          attr_accessor :created_at

          # Customer ID
          sig { returns(String) }
          attr_accessor :customer_id

          # Payment collection
          sig do
            returns(
              Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
            )
          end
          attr_accessor :payment_collection

          # Plan ID
          sig { returns(String) }
          attr_accessor :plan_id

          # Pricing type
          sig do
            returns(Stigg::V1::Subscription::Data::PricingType::TaggedSymbol)
          end
          attr_accessor :pricing_type

          # Subscription start date
          sig { returns(Time) }
          attr_accessor :start_date

          # Subscription status
          sig { returns(Stigg::V1::Subscription::Data::Status::TaggedSymbol) }
          attr_accessor :status

          sig do
            returns(T.nilable(T::Array[Stigg::V1::Subscription::Data::Addon]))
          end
          attr_reader :addons

          sig do
            params(
              addons: T::Array[Stigg::V1::Subscription::Data::Addon::OrHash]
            ).void
          end
          attr_writer :addons

          # Billing cycle anchor date
          sig { returns(T.nilable(Time)) }
          attr_accessor :billing_cycle_anchor

          # Budget configuration
          sig { returns(T.nilable(Stigg::V1::Subscription::Data::Budget)) }
          attr_reader :budget

          sig do
            params(
              budget: T.nilable(Stigg::V1::Subscription::Data::Budget::OrHash)
            ).void
          end
          attr_writer :budget

          # Subscription cancellation date
          sig { returns(T.nilable(Time)) }
          attr_accessor :cancellation_date

          # Subscription cancel reason
          sig do
            returns(
              T.nilable(
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            )
          end
          attr_accessor :cancel_reason

          # Coupons applied to the subscription
          sig do
            returns(T.nilable(T::Array[Stigg::V1::Subscription::Data::Coupon]))
          end
          attr_reader :coupons

          sig do
            params(
              coupons: T::Array[Stigg::V1::Subscription::Data::Coupon::OrHash]
            ).void
          end
          attr_writer :coupons

          # End of the current billing period
          sig { returns(T.nilable(Time)) }
          attr_accessor :current_billing_period_end

          # Start of the current billing period
          sig { returns(T.nilable(Time)) }
          attr_accessor :current_billing_period_start

          # Subscription effective end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :effective_end_date

          # Subscription end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # Scheduled future updates for the subscription
          sig do
            returns(
              T.nilable(T::Array[Stigg::V1::Subscription::Data::FutureUpdate])
            )
          end
          attr_reader :future_updates

          sig do
            params(
              future_updates:
                T::Array[Stigg::V1::Subscription::Data::FutureUpdate::OrHash]
            ).void
          end
          attr_writer :future_updates

          # Latest invoice for the subscription
          sig do
            returns(T.nilable(Stigg::V1::Subscription::Data::LatestInvoice))
          end
          attr_reader :latest_invoice

          sig do
            params(
              latest_invoice:
                T.nilable(Stigg::V1::Subscription::Data::LatestInvoice::OrHash)
            ).void
          end
          attr_writer :latest_invoice

          # Additional metadata for the subscription
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # Minimum spend configuration
          sig do
            returns(T.nilable(Stigg::V1::Subscription::Data::MinimumSpend))
          end
          attr_reader :minimum_spend

          sig do
            params(
              minimum_spend:
                T.nilable(Stigg::V1::Subscription::Data::MinimumSpend::OrHash)
            ).void
          end
          attr_writer :minimum_spend

          # Paying customer ID for delegated billing
          sig { returns(T.nilable(String)) }
          attr_accessor :paying_customer_id

          # The method used to collect payments for a subscription
          sig do
            returns(
              T.nilable(
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )
            )
          end
          attr_accessor :payment_collection_method

          sig do
            returns(T.nilable(T::Array[Stigg::V1::Subscription::Data::Price]))
          end
          attr_reader :prices

          sig do
            params(
              prices: T::Array[Stigg::V1::Subscription::Data::Price::OrHash]
            ).void
          end
          attr_writer :prices

          # Resource ID
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # Entitlements associated with the subscription
          sig do
            returns(
              T.nilable(
                T::Array[Stigg::V1::Subscription::Data::SubscriptionEntitlement]
              )
            )
          end
          attr_reader :subscription_entitlements

          sig do
            params(
              subscription_entitlements:
                T::Array[
                  Stigg::V1::Subscription::Data::SubscriptionEntitlement::OrHash
                ]
            ).void
          end
          attr_writer :subscription_entitlements

          # Trial configuration
          sig { returns(T.nilable(Stigg::V1::Subscription::Data::Trial)) }
          attr_reader :trial

          sig do
            params(
              trial: T.nilable(Stigg::V1::Subscription::Data::Trial::OrHash)
            ).void
          end
          attr_writer :trial

          # Subscription trial end date
          sig { returns(T.nilable(Time)) }
          attr_accessor :trial_end_date

          # Customer subscription to a plan
          sig do
            params(
              id: String,
              billing_id: T.nilable(String),
              created_at: Time,
              customer_id: String,
              payment_collection:
                Stigg::V1::Subscription::Data::PaymentCollection::OrSymbol,
              plan_id: String,
              pricing_type:
                Stigg::V1::Subscription::Data::PricingType::OrSymbol,
              start_date: Time,
              status: Stigg::V1::Subscription::Data::Status::OrSymbol,
              addons: T::Array[Stigg::V1::Subscription::Data::Addon::OrHash],
              billing_cycle_anchor: T.nilable(Time),
              budget: T.nilable(Stigg::V1::Subscription::Data::Budget::OrHash),
              cancellation_date: T.nilable(Time),
              cancel_reason:
                T.nilable(
                  Stigg::V1::Subscription::Data::CancelReason::OrSymbol
                ),
              coupons: T::Array[Stigg::V1::Subscription::Data::Coupon::OrHash],
              current_billing_period_end: T.nilable(Time),
              current_billing_period_start: T.nilable(Time),
              effective_end_date: T.nilable(Time),
              end_date: T.nilable(Time),
              future_updates:
                T::Array[Stigg::V1::Subscription::Data::FutureUpdate::OrHash],
              latest_invoice:
                T.nilable(Stigg::V1::Subscription::Data::LatestInvoice::OrHash),
              metadata: T::Hash[Symbol, String],
              minimum_spend:
                T.nilable(Stigg::V1::Subscription::Data::MinimumSpend::OrHash),
              paying_customer_id: T.nilable(String),
              payment_collection_method:
                T.nilable(
                  Stigg::V1::Subscription::Data::PaymentCollectionMethod::OrSymbol
                ),
              prices: T::Array[Stigg::V1::Subscription::Data::Price::OrHash],
              resource_id: T.nilable(String),
              subscription_entitlements:
                T::Array[
                  Stigg::V1::Subscription::Data::SubscriptionEntitlement::OrHash
                ],
              trial: T.nilable(Stigg::V1::Subscription::Data::Trial::OrHash),
              trial_end_date: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            # Subscription ID
            id:,
            # Billing ID
            billing_id:,
            # Created at
            created_at:,
            # Customer ID
            customer_id:,
            # Payment collection
            payment_collection:,
            # Plan ID
            plan_id:,
            # Pricing type
            pricing_type:,
            # Subscription start date
            start_date:,
            # Subscription status
            status:,
            addons: nil,
            # Billing cycle anchor date
            billing_cycle_anchor: nil,
            # Budget configuration
            budget: nil,
            # Subscription cancellation date
            cancellation_date: nil,
            # Subscription cancel reason
            cancel_reason: nil,
            # Coupons applied to the subscription
            coupons: nil,
            # End of the current billing period
            current_billing_period_end: nil,
            # Start of the current billing period
            current_billing_period_start: nil,
            # Subscription effective end date
            effective_end_date: nil,
            # Subscription end date
            end_date: nil,
            # Scheduled future updates for the subscription
            future_updates: nil,
            # Latest invoice for the subscription
            latest_invoice: nil,
            # Additional metadata for the subscription
            metadata: nil,
            # Minimum spend configuration
            minimum_spend: nil,
            # Paying customer ID for delegated billing
            paying_customer_id: nil,
            # The method used to collect payments for a subscription
            payment_collection_method: nil,
            prices: nil,
            # Resource ID
            resource_id: nil,
            # Entitlements associated with the subscription
            subscription_entitlements: nil,
            # Trial configuration
            trial: nil,
            # Subscription trial end date
            trial_end_date: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                billing_id: T.nilable(String),
                created_at: Time,
                customer_id: String,
                payment_collection:
                  Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol,
                plan_id: String,
                pricing_type:
                  Stigg::V1::Subscription::Data::PricingType::TaggedSymbol,
                start_date: Time,
                status: Stigg::V1::Subscription::Data::Status::TaggedSymbol,
                addons: T::Array[Stigg::V1::Subscription::Data::Addon],
                billing_cycle_anchor: T.nilable(Time),
                budget: T.nilable(Stigg::V1::Subscription::Data::Budget),
                cancellation_date: T.nilable(Time),
                cancel_reason:
                  T.nilable(
                    Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
                  ),
                coupons: T::Array[Stigg::V1::Subscription::Data::Coupon],
                current_billing_period_end: T.nilable(Time),
                current_billing_period_start: T.nilable(Time),
                effective_end_date: T.nilable(Time),
                end_date: T.nilable(Time),
                future_updates:
                  T::Array[Stigg::V1::Subscription::Data::FutureUpdate],
                latest_invoice:
                  T.nilable(Stigg::V1::Subscription::Data::LatestInvoice),
                metadata: T::Hash[Symbol, String],
                minimum_spend:
                  T.nilable(Stigg::V1::Subscription::Data::MinimumSpend),
                paying_customer_id: T.nilable(String),
                payment_collection_method:
                  T.nilable(
                    Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
                  ),
                prices: T::Array[Stigg::V1::Subscription::Data::Price],
                resource_id: T.nilable(String),
                subscription_entitlements:
                  T::Array[
                    Stigg::V1::Subscription::Data::SubscriptionEntitlement
                  ],
                trial: T.nilable(Stigg::V1::Subscription::Data::Trial),
                trial_end_date: T.nilable(Time)
              }
            )
          end
          def to_hash
          end

          # Payment collection
          module PaymentCollection
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::PaymentCollection)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_REQUIRED =
              T.let(
                :NOT_REQUIRED,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )
            FAILED =
              T.let(
                :FAILED,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )
            ACTION_REQUIRED =
              T.let(
                :ACTION_REQUIRED,
                Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::PaymentCollection::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Pricing type
          module PricingType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::PricingType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FREE =
              T.let(
                :FREE,
                Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
              )
            PAID =
              T.let(
                :PAID,
                Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :CUSTOM,
                Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::PricingType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Subscription status
          module Status
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT_PENDING =
              T.let(
                :PAYMENT_PENDING,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :EXPIRED,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            IN_TRIAL =
              T.let(
                :IN_TRIAL,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )
            NOT_STARTED =
              T.let(
                :NOT_STARTED,
                Stigg::V1::Subscription::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Stigg::V1::Subscription::Data::Status::TaggedSymbol]
              )
            end
            def self.values
            end
          end

          class Addon < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::Addon,
                  Stigg::Internal::AnyHash
                )
              end

            # Addon ID
            sig { returns(String) }
            attr_accessor :id

            # Number of addon instances
            sig { returns(Integer) }
            attr_accessor :quantity

            # Addon configuration
            sig do
              params(id: String, quantity: Integer).returns(T.attached_class)
            end
            def self.new(
              # Addon ID
              id:,
              # Number of addon instances
              quantity:
            )
            end

            sig { override.returns({ id: String, quantity: Integer }) }
            def to_hash
            end
          end

          class Budget < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::Budget,
                  Stigg::Internal::AnyHash
                )
              end

            # Whether the budget is a soft limit
            sig { returns(T::Boolean) }
            attr_accessor :has_soft_limit

            # Maximum spending limit
            sig { returns(Float) }
            attr_accessor :limit

            # Budget configuration
            sig do
              params(has_soft_limit: T::Boolean, limit: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Whether the budget is a soft limit
              has_soft_limit:,
              # Maximum spending limit
              limit:
            )
            end

            sig do
              override.returns({ has_soft_limit: T::Boolean, limit: Float })
            end
            def to_hash
            end
          end

          # Subscription cancel reason
          module CancelReason
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Subscription::Data::CancelReason)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UPGRADE_OR_DOWNGRADE =
              T.let(
                :UPGRADE_OR_DOWNGRADE,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            CANCELLED_BY_BILLING =
              T.let(
                :CANCELLED_BY_BILLING,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :EXPIRED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            DETACH_BILLING =
              T.let(
                :DETACH_BILLING,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            TRIAL_ENDED =
              T.let(
                :TRIAL_ENDED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            IMMEDIATE =
              T.let(
                :Immediate,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            TRIAL_CONVERTED =
              T.let(
                :TRIAL_CONVERTED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            PENDING_PAYMENT_EXPIRED =
              T.let(
                :PENDING_PAYMENT_EXPIRED,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            SCHEDULED_CANCELLATION =
              T.let(
                :ScheduledCancellation,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            CUSTOMER_ARCHIVED =
              T.let(
                :CustomerArchived,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )
            AUTO_CANCELLATION_RULE =
              T.let(
                :AutoCancellationRule,
                Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::CancelReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Coupon < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::Coupon,
                  Stigg::Internal::AnyHash
                )
              end

            # Coupon ID
            sig { returns(String) }
            attr_accessor :id

            # Coupon name
            sig { returns(String) }
            attr_accessor :name

            # Coupon status
            sig do
              returns(
                Stigg::V1::Subscription::Data::Coupon::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Fixed amount discounts by currency
            sig do
              returns(
                T.nilable(
                  T::Array[Stigg::V1::Subscription::Data::Coupon::AmountsOff]
                )
              )
            end
            attr_accessor :amounts_off

            # Percentage discount
            sig { returns(T.nilable(Float)) }
            attr_accessor :percent_off

            # Coupon applied to a subscription
            sig do
              params(
                id: String,
                name: String,
                status: Stigg::V1::Subscription::Data::Coupon::Status::OrSymbol,
                amounts_off:
                  T.nilable(
                    T::Array[
                      Stigg::V1::Subscription::Data::Coupon::AmountsOff::OrHash
                    ]
                  ),
                percent_off: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Coupon ID
              id:,
              # Coupon name
              name:,
              # Coupon status
              status:,
              # Fixed amount discounts by currency
              amounts_off: nil,
              # Percentage discount
              percent_off: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: String,
                  status:
                    Stigg::V1::Subscription::Data::Coupon::Status::TaggedSymbol,
                  amounts_off:
                    T.nilable(
                      T::Array[
                        Stigg::V1::Subscription::Data::Coupon::AmountsOff
                      ]
                    ),
                  percent_off: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            # Coupon status
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Stigg::V1::Subscription::Data::Coupon::Status)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :ACTIVE,
                  Stigg::V1::Subscription::Data::Coupon::Status::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :EXPIRED,
                  Stigg::V1::Subscription::Data::Coupon::Status::TaggedSymbol
                )
              REMOVED =
                T.let(
                  :REMOVED,
                  Stigg::V1::Subscription::Data::Coupon::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::Coupon::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class AmountsOff < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # The price currency
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The price amount
                amount: nil,
                # The price currency
                currency: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    currency:
                      Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # The price currency
              module Currency
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Subscription::Data::Coupon::AmountsOff::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class FutureUpdate < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::FutureUpdate,
                  Stigg::Internal::AnyHash
                )
              end

            # Scheduled execution time
            sig { returns(Time) }
            attr_accessor :scheduled_execution_time

            # Status of the scheduled update
            sig do
              returns(
                Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol
              )
            end
            attr_accessor :schedule_status

            # Type of scheduled change
            sig do
              returns(
                Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
              )
            end
            attr_accessor :subscription_schedule_type

            # Target package for the update
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Subscription::Data::FutureUpdate::TargetPackage
                )
              )
            end
            attr_reader :target_package

            sig do
              params(
                target_package:
                  T.nilable(
                    Stigg::V1::Subscription::Data::FutureUpdate::TargetPackage::OrHash
                  )
              ).void
            end
            attr_writer :target_package

            # Scheduled subscription update
            sig do
              params(
                scheduled_execution_time: Time,
                schedule_status:
                  Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::OrSymbol,
                subscription_schedule_type:
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::OrSymbol,
                target_package:
                  T.nilable(
                    Stigg::V1::Subscription::Data::FutureUpdate::TargetPackage::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Scheduled execution time
              scheduled_execution_time:,
              # Status of the scheduled update
              schedule_status:,
              # Type of scheduled change
              subscription_schedule_type:,
              # Target package for the update
              target_package: nil
            )
            end

            sig do
              override.returns(
                {
                  scheduled_execution_time: Time,
                  schedule_status:
                    Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol,
                  subscription_schedule_type:
                    Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol,
                  target_package:
                    T.nilable(
                      Stigg::V1::Subscription::Data::FutureUpdate::TargetPackage
                    )
                }
              )
            end
            def to_hash
            end

            # Status of the scheduled update
            module ScheduleStatus
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING_PAYMENT =
                T.let(
                  :PENDING_PAYMENT,
                  Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol
                )
              SCHEDULED =
                T.let(
                  :SCHEDULED,
                  Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :CANCELED,
                  Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol
                )
              DONE =
                T.let(
                  :DONE,
                  Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol
                )
              FAILED =
                T.let(
                  :FAILED,
                  Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::FutureUpdate::ScheduleStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Type of scheduled change
            module SubscriptionScheduleType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DOWNGRADE =
                T.let(
                  :DOWNGRADE,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              PLAN =
                T.let(
                  :PLAN,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              BILLING_PERIOD =
                T.let(
                  :BILLING_PERIOD,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              UNIT_AMOUNT =
                T.let(
                  :UNIT_AMOUNT,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              RECURRING_CREDITS =
                T.let(
                  :RECURRING_CREDITS,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              PRICE_OVERRIDE =
                T.let(
                  :PRICE_OVERRIDE,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              ADDON =
                T.let(
                  :ADDON,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              COUPON =
                T.let(
                  :COUPON,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              MIGRATE_TO_LATEST =
                T.let(
                  :MIGRATE_TO_LATEST,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              ADDITIONAL_META_DATA =
                T.let(
                  :ADDITIONAL_META_DATA,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )
              BILLING_INFO_METADATA =
                T.let(
                  :BILLING_INFO_METADATA,
                  Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::FutureUpdate::SubscriptionScheduleType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class TargetPackage < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Subscription::Data::FutureUpdate::TargetPackage,
                    Stigg::Internal::AnyHash
                  )
                end

              # Target package for the update
              sig { returns(String) }
              attr_accessor :id

              # Target package for the update
              sig { params(id: String).returns(T.attached_class) }
              def self.new(
                # Target package for the update
                id:
              )
              end

              sig { override.returns({ id: String }) }
              def to_hash
              end
            end
          end

          class LatestInvoice < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::LatestInvoice,
                  Stigg::Internal::AnyHash
                )
              end

            # Invoice billing ID
            sig { returns(String) }
            attr_accessor :billing_id

            # Invoice creation date
            sig { returns(Time) }
            attr_accessor :created_at

            # Whether payment requires action
            sig { returns(T::Boolean) }
            attr_accessor :requires_action

            # Invoice status
            sig do
              returns(
                Stigg::V1::Subscription::Data::LatestInvoice::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Amount due
            sig { returns(T.nilable(Float)) }
            attr_accessor :amount_due

            # Billing reason
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              )
            end
            attr_accessor :billing_reason

            # Invoice currency
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # Invoice PDF URL
            sig { returns(T.nilable(String)) }
            attr_accessor :pdf_url

            # Total amount
            sig { returns(T.nilable(Float)) }
            attr_accessor :total

            # Latest invoice for the subscription
            sig do
              params(
                billing_id: String,
                created_at: Time,
                requires_action: T::Boolean,
                status:
                  Stigg::V1::Subscription::Data::LatestInvoice::Status::OrSymbol,
                amount_due: T.nilable(Float),
                billing_reason:
                  T.nilable(
                    Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::OrSymbol
                  ),
                currency: T.nilable(String),
                pdf_url: T.nilable(String),
                total: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Invoice billing ID
              billing_id:,
              # Invoice creation date
              created_at:,
              # Whether payment requires action
              requires_action:,
              # Invoice status
              status:,
              # Amount due
              amount_due: nil,
              # Billing reason
              billing_reason: nil,
              # Invoice currency
              currency: nil,
              # Invoice PDF URL
              pdf_url: nil,
              # Total amount
              total: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_id: String,
                  created_at: Time,
                  requires_action: T::Boolean,
                  status:
                    Stigg::V1::Subscription::Data::LatestInvoice::Status::TaggedSymbol,
                  amount_due: T.nilable(Float),
                  billing_reason:
                    T.nilable(
                      Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                    ),
                  currency: T.nilable(String),
                  pdf_url: T.nilable(String),
                  total: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            # Invoice status
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Subscription::Data::LatestInvoice::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPEN =
                T.let(
                  :OPEN,
                  Stigg::V1::Subscription::Data::LatestInvoice::Status::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :CANCELED,
                  Stigg::V1::Subscription::Data::LatestInvoice::Status::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  Stigg::V1::Subscription::Data::LatestInvoice::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::LatestInvoice::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Billing reason
            module BillingReason
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Subscription::Data::LatestInvoice::BillingReason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BILLING_CYCLE =
                T.let(
                  :BILLING_CYCLE,
                  Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              SUBSCRIPTION_CREATION =
                T.let(
                  :SUBSCRIPTION_CREATION,
                  Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              SUBSCRIPTION_UPDATE =
                T.let(
                  :SUBSCRIPTION_UPDATE,
                  Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              MANUAL =
                T.let(
                  :MANUAL,
                  Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              MINIMUM_INVOICE_AMOUNT_EXCEEDED =
                T.let(
                  :MINIMUM_INVOICE_AMOUNT_EXCEEDED,
                  Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              OTHER =
                T.let(
                  :OTHER,
                  Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::LatestInvoice::BillingReason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class MinimumSpend < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::MinimumSpend,
                  Stigg::Internal::AnyHash
                )
              end

            # The price amount
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The price currency
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::OrSymbol
              ).void
            end
            attr_writer :currency

            # Minimum spend configuration
            sig do
              params(
                amount: Float,
                currency:
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price amount
              amount: nil,
              # The price currency
              currency: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency:
                    Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The price currency
            module Currency
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Subscription::Data::MinimumSpend::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::MinimumSpend::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # The method used to collect payments for a subscription
          module PaymentCollectionMethod
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Subscription::Data::PaymentCollectionMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARGE =
              T.let(
                :CHARGE,
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )
            INVOICE =
              T.let(
                :INVOICE,
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Subscription::Data::PaymentCollectionMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Price < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::Price,
                  Stigg::Internal::AnyHash
                )
              end

            # Addon identifier for the price override
            sig { returns(T.nilable(String)) }
            attr_accessor :addon_id

            # The price amount
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # Whether this is a base charge override
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :base_charge

            sig { params(base_charge: T::Boolean).void }
            attr_writer :base_charge

            # The billing country code of the price
            sig { returns(T.nilable(String)) }
            attr_reader :billing_country_code

            sig { params(billing_country_code: String).void }
            attr_writer :billing_country_code

            # Block size for pricing
            sig { returns(T.nilable(Float)) }
            attr_reader :block_size

            sig { params(block_size: Float).void }
            attr_writer :block_size

            # The price currency
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::V1::Subscription::Data::Price::Currency::OrSymbol
              ).void
            end
            attr_writer :currency

            # Feature identifier for the price override
            sig { returns(T.nilable(String)) }
            attr_accessor :feature_id

            # Pricing tiers configuration
            sig do
              returns(
                T.nilable(T::Array[Stigg::V1::Subscription::Data::Price::Tier])
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[Stigg::V1::Subscription::Data::Price::Tier::OrHash]
              ).void
            end
            attr_writer :tiers

            sig do
              params(
                addon_id: T.nilable(String),
                amount: Float,
                base_charge: T::Boolean,
                billing_country_code: String,
                block_size: Float,
                currency:
                  Stigg::V1::Subscription::Data::Price::Currency::OrSymbol,
                feature_id: T.nilable(String),
                tiers:
                  T::Array[Stigg::V1::Subscription::Data::Price::Tier::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(
              # Addon identifier for the price override
              addon_id: nil,
              # The price amount
              amount: nil,
              # Whether this is a base charge override
              base_charge: nil,
              # The billing country code of the price
              billing_country_code: nil,
              # Block size for pricing
              block_size: nil,
              # The price currency
              currency: nil,
              # Feature identifier for the price override
              feature_id: nil,
              # Pricing tiers configuration
              tiers: nil
            )
            end

            sig do
              override.returns(
                {
                  addon_id: T.nilable(String),
                  amount: Float,
                  base_charge: T::Boolean,
                  billing_country_code: String,
                  block_size: Float,
                  currency:
                    Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol,
                  feature_id: T.nilable(String),
                  tiers: T::Array[Stigg::V1::Subscription::Data::Price::Tier]
                }
              )
            end
            def to_hash
            end

            # The price currency
            module Currency
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Stigg::V1::Subscription::Data::Price::Currency)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::Price::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Tier < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Subscription::Data::Price::Tier,
                    Stigg::Internal::AnyHash
                  )
                end

              # The flat fee price of the price tier
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Subscription::Data::Price::Tier::FlatPrice
                  )
                )
              end
              attr_reader :flat_price

              sig do
                params(
                  flat_price:
                    Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::OrHash
                ).void
              end
              attr_writer :flat_price

              # The unit price of the price tier
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Subscription::Data::Price::Tier::UnitPrice
                  )
                )
              end
              attr_reader :unit_price

              sig do
                params(
                  unit_price:
                    Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::OrHash
                ).void
              end
              attr_writer :unit_price

              # The up to quantity of the price tier
              sig { returns(T.nilable(Float)) }
              attr_reader :up_to

              sig { params(up_to: Float).void }
              attr_writer :up_to

              sig do
                params(
                  flat_price:
                    Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::OrHash,
                  unit_price:
                    Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::OrHash,
                  up_to: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # The flat fee price of the price tier
                flat_price: nil,
                # The unit price of the price tier
                unit_price: nil,
                # The up to quantity of the price tier
                up_to: nil
              )
              end

              sig do
                override.returns(
                  {
                    flat_price:
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice,
                    unit_price:
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice,
                    up_to: Float
                  }
                )
              end
              def to_hash
              end

              class FlatPrice < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The price amount
                sig { returns(Float) }
                attr_accessor :amount

                # The price currency
                sig do
                  returns(
                    Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                end
                attr_accessor :currency

                # The flat fee price of the price tier
                sig do
                  params(
                    amount: Float,
                    currency:
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The price amount
                  amount:,
                  # The price currency
                  currency:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      currency:
                        Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # The price currency
                module Currency
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USD =
                    T.let(
                      :usd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AED =
                    T.let(
                      :aed,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ALL =
                    T.let(
                      :all,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AMD =
                    T.let(
                      :amd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ANG =
                    T.let(
                      :ang,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AUD =
                    T.let(
                      :aud,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AWG =
                    T.let(
                      :awg,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AZN =
                    T.let(
                      :azn,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BAM =
                    T.let(
                      :bam,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BBD =
                    T.let(
                      :bbd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BDT =
                    T.let(
                      :bdt,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BGN =
                    T.let(
                      :bgn,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BIF =
                    T.let(
                      :bif,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BMD =
                    T.let(
                      :bmd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BND =
                    T.let(
                      :bnd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BSD =
                    T.let(
                      :bsd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BWP =
                    T.let(
                      :bwp,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BYN =
                    T.let(
                      :byn,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BZD =
                    T.let(
                      :bzd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BRL =
                    T.let(
                      :brl,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CAD =
                    T.let(
                      :cad,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CDF =
                    T.let(
                      :cdf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CHF =
                    T.let(
                      :chf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CNY =
                    T.let(
                      :cny,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CZK =
                    T.let(
                      :czk,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DKK =
                    T.let(
                      :dkk,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DOP =
                    T.let(
                      :dop,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DZD =
                    T.let(
                      :dzd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  EGP =
                    T.let(
                      :egp,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ETB =
                    T.let(
                      :etb,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  EUR =
                    T.let(
                      :eur,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  FJD =
                    T.let(
                      :fjd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GBP =
                    T.let(
                      :gbp,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GEL =
                    T.let(
                      :gel,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GIP =
                    T.let(
                      :gip,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GMD =
                    T.let(
                      :gmd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GYD =
                    T.let(
                      :gyd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HKD =
                    T.let(
                      :hkd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HRK =
                    T.let(
                      :hrk,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HTG =
                    T.let(
                      :htg,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  IDR =
                    T.let(
                      :idr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ILS =
                    T.let(
                      :ils,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  INR =
                    T.let(
                      :inr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ISK =
                    T.let(
                      :isk,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  JMD =
                    T.let(
                      :jmd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  JPY =
                    T.let(
                      :jpy,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KES =
                    T.let(
                      :kes,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KGS =
                    T.let(
                      :kgs,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KHR =
                    T.let(
                      :khr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KMF =
                    T.let(
                      :kmf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KRW =
                    T.let(
                      :krw,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KYD =
                    T.let(
                      :kyd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KZT =
                    T.let(
                      :kzt,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LBP =
                    T.let(
                      :lbp,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LKR =
                    T.let(
                      :lkr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LRD =
                    T.let(
                      :lrd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LSL =
                    T.let(
                      :lsl,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MAD =
                    T.let(
                      :mad,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MDL =
                    T.let(
                      :mdl,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MGA =
                    T.let(
                      :mga,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MKD =
                    T.let(
                      :mkd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MMK =
                    T.let(
                      :mmk,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MNT =
                    T.let(
                      :mnt,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MOP =
                    T.let(
                      :mop,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MRO =
                    T.let(
                      :mro,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MVR =
                    T.let(
                      :mvr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MWK =
                    T.let(
                      :mwk,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MXN =
                    T.let(
                      :mxn,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MYR =
                    T.let(
                      :myr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MZN =
                    T.let(
                      :mzn,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NAD =
                    T.let(
                      :nad,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NGN =
                    T.let(
                      :ngn,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NOK =
                    T.let(
                      :nok,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NPR =
                    T.let(
                      :npr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NZD =
                    T.let(
                      :nzd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PGK =
                    T.let(
                      :pgk,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PHP =
                    T.let(
                      :php,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PKR =
                    T.let(
                      :pkr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PLN =
                    T.let(
                      :pln,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  QAR =
                    T.let(
                      :qar,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RON =
                    T.let(
                      :ron,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RSD =
                    T.let(
                      :rsd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RUB =
                    T.let(
                      :rub,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RWF =
                    T.let(
                      :rwf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SAR =
                    T.let(
                      :sar,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SBD =
                    T.let(
                      :sbd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SCR =
                    T.let(
                      :scr,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SEK =
                    T.let(
                      :sek,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SGD =
                    T.let(
                      :sgd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SLE =
                    T.let(
                      :sle,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SLL =
                    T.let(
                      :sll,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SOS =
                    T.let(
                      :sos,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SZL =
                    T.let(
                      :szl,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  THB =
                    T.let(
                      :thb,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TJS =
                    T.let(
                      :tjs,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TOP =
                    T.let(
                      :top,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TRY =
                    T.let(
                      :try,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TTD =
                    T.let(
                      :ttd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TZS =
                    T.let(
                      :tzs,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UAH =
                    T.let(
                      :uah,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UZS =
                    T.let(
                      :uzs,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  VND =
                    T.let(
                      :vnd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  VUV =
                    T.let(
                      :vuv,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  WST =
                    T.let(
                      :wst,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XAF =
                    T.let(
                      :xaf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XCD =
                    T.let(
                      :xcd,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  YER =
                    T.let(
                      :yer,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ZAR =
                    T.let(
                      :zar,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ZMW =
                    T.let(
                      :zmw,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CLP =
                    T.let(
                      :clp,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DJF =
                    T.let(
                      :djf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GNF =
                    T.let(
                      :gnf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UGX =
                    T.let(
                      :ugx,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PYG =
                    T.let(
                      :pyg,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XOF =
                    T.let(
                      :xof,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XPF =
                    T.let(
                      :xpf,
                      Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Subscription::Data::Price::Tier::FlatPrice::Currency::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class UnitPrice < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The price amount
                sig { returns(Float) }
                attr_accessor :amount

                # The price currency
                sig do
                  returns(
                    Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                end
                attr_accessor :currency

                # The unit price of the price tier
                sig do
                  params(
                    amount: Float,
                    currency:
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The price amount
                  amount:,
                  # The price currency
                  currency:
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      currency:
                        Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # The price currency
                module Currency
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USD =
                    T.let(
                      :usd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AED =
                    T.let(
                      :aed,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ALL =
                    T.let(
                      :all,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AMD =
                    T.let(
                      :amd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ANG =
                    T.let(
                      :ang,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AUD =
                    T.let(
                      :aud,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AWG =
                    T.let(
                      :awg,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AZN =
                    T.let(
                      :azn,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BAM =
                    T.let(
                      :bam,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BBD =
                    T.let(
                      :bbd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BDT =
                    T.let(
                      :bdt,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BGN =
                    T.let(
                      :bgn,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BIF =
                    T.let(
                      :bif,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BMD =
                    T.let(
                      :bmd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BND =
                    T.let(
                      :bnd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BSD =
                    T.let(
                      :bsd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BWP =
                    T.let(
                      :bwp,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BYN =
                    T.let(
                      :byn,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BZD =
                    T.let(
                      :bzd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BRL =
                    T.let(
                      :brl,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CAD =
                    T.let(
                      :cad,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CDF =
                    T.let(
                      :cdf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CHF =
                    T.let(
                      :chf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CNY =
                    T.let(
                      :cny,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CZK =
                    T.let(
                      :czk,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DKK =
                    T.let(
                      :dkk,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DOP =
                    T.let(
                      :dop,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DZD =
                    T.let(
                      :dzd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  EGP =
                    T.let(
                      :egp,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ETB =
                    T.let(
                      :etb,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  EUR =
                    T.let(
                      :eur,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  FJD =
                    T.let(
                      :fjd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GBP =
                    T.let(
                      :gbp,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GEL =
                    T.let(
                      :gel,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GIP =
                    T.let(
                      :gip,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GMD =
                    T.let(
                      :gmd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GYD =
                    T.let(
                      :gyd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HKD =
                    T.let(
                      :hkd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HRK =
                    T.let(
                      :hrk,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HTG =
                    T.let(
                      :htg,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  IDR =
                    T.let(
                      :idr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ILS =
                    T.let(
                      :ils,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  INR =
                    T.let(
                      :inr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ISK =
                    T.let(
                      :isk,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  JMD =
                    T.let(
                      :jmd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  JPY =
                    T.let(
                      :jpy,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KES =
                    T.let(
                      :kes,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KGS =
                    T.let(
                      :kgs,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KHR =
                    T.let(
                      :khr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KMF =
                    T.let(
                      :kmf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KRW =
                    T.let(
                      :krw,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KYD =
                    T.let(
                      :kyd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KZT =
                    T.let(
                      :kzt,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LBP =
                    T.let(
                      :lbp,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LKR =
                    T.let(
                      :lkr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LRD =
                    T.let(
                      :lrd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LSL =
                    T.let(
                      :lsl,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MAD =
                    T.let(
                      :mad,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MDL =
                    T.let(
                      :mdl,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MGA =
                    T.let(
                      :mga,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MKD =
                    T.let(
                      :mkd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MMK =
                    T.let(
                      :mmk,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MNT =
                    T.let(
                      :mnt,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MOP =
                    T.let(
                      :mop,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MRO =
                    T.let(
                      :mro,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MVR =
                    T.let(
                      :mvr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MWK =
                    T.let(
                      :mwk,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MXN =
                    T.let(
                      :mxn,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MYR =
                    T.let(
                      :myr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MZN =
                    T.let(
                      :mzn,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NAD =
                    T.let(
                      :nad,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NGN =
                    T.let(
                      :ngn,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NOK =
                    T.let(
                      :nok,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NPR =
                    T.let(
                      :npr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NZD =
                    T.let(
                      :nzd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PGK =
                    T.let(
                      :pgk,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PHP =
                    T.let(
                      :php,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PKR =
                    T.let(
                      :pkr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PLN =
                    T.let(
                      :pln,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  QAR =
                    T.let(
                      :qar,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RON =
                    T.let(
                      :ron,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RSD =
                    T.let(
                      :rsd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RUB =
                    T.let(
                      :rub,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RWF =
                    T.let(
                      :rwf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SAR =
                    T.let(
                      :sar,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SBD =
                    T.let(
                      :sbd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SCR =
                    T.let(
                      :scr,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SEK =
                    T.let(
                      :sek,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SGD =
                    T.let(
                      :sgd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SLE =
                    T.let(
                      :sle,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SLL =
                    T.let(
                      :sll,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SOS =
                    T.let(
                      :sos,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SZL =
                    T.let(
                      :szl,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  THB =
                    T.let(
                      :thb,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TJS =
                    T.let(
                      :tjs,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TOP =
                    T.let(
                      :top,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TRY =
                    T.let(
                      :try,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TTD =
                    T.let(
                      :ttd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TZS =
                    T.let(
                      :tzs,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UAH =
                    T.let(
                      :uah,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UZS =
                    T.let(
                      :uzs,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  VND =
                    T.let(
                      :vnd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  VUV =
                    T.let(
                      :vuv,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  WST =
                    T.let(
                      :wst,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XAF =
                    T.let(
                      :xaf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XCD =
                    T.let(
                      :xcd,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  YER =
                    T.let(
                      :yer,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ZAR =
                    T.let(
                      :zar,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ZMW =
                    T.let(
                      :zmw,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CLP =
                    T.let(
                      :clp,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DJF =
                    T.let(
                      :djf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GNF =
                    T.let(
                      :gnf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UGX =
                    T.let(
                      :ugx,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PYG =
                    T.let(
                      :pyg,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XOF =
                    T.let(
                      :xof,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XPF =
                    T.let(
                      :xpf,
                      Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Subscription::Data::Price::Tier::UnitPrice::Currency::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          class SubscriptionEntitlement < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::SubscriptionEntitlement,
                  Stigg::Internal::AnyHash
                )
              end

            # Feature ID or currency ID
            sig { returns(String) }
            attr_accessor :id

            # Entitlement type (FEATURE or CREDIT)
            sig do
              returns(
                Stigg::V1::Subscription::Data::SubscriptionEntitlement::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # Subscription entitlement reference
            sig do
              params(
                id: String,
                type:
                  Stigg::V1::Subscription::Data::SubscriptionEntitlement::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Feature ID or currency ID
              id:,
              # Entitlement type (FEATURE or CREDIT)
              type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  type:
                    Stigg::V1::Subscription::Data::SubscriptionEntitlement::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Entitlement type (FEATURE or CREDIT)
            module Type
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Subscription::Data::SubscriptionEntitlement::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FEATURE =
                T.let(
                  :FEATURE,
                  Stigg::V1::Subscription::Data::SubscriptionEntitlement::Type::TaggedSymbol
                )
              CREDIT =
                T.let(
                  :CREDIT,
                  Stigg::V1::Subscription::Data::SubscriptionEntitlement::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::SubscriptionEntitlement::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Trial < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Subscription::Data::Trial,
                  Stigg::Internal::AnyHash
                )
              end

            # Behavior when the trial ends
            sig do
              returns(
                Stigg::V1::Subscription::Data::Trial::TrialEndBehavior::TaggedSymbol
              )
            end
            attr_accessor :trial_end_behavior

            # Trial configuration
            sig do
              params(
                trial_end_behavior:
                  Stigg::V1::Subscription::Data::Trial::TrialEndBehavior::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Behavior when the trial ends
              trial_end_behavior:
            )
            end

            sig do
              override.returns(
                {
                  trial_end_behavior:
                    Stigg::V1::Subscription::Data::Trial::TrialEndBehavior::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Behavior when the trial ends
            module TrialEndBehavior
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Subscription::Data::Trial::TrialEndBehavior
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONVERT_TO_PAID =
                T.let(
                  :CONVERT_TO_PAID,
                  Stigg::V1::Subscription::Data::Trial::TrialEndBehavior::TaggedSymbol
                )
              CANCEL_SUBSCRIPTION =
                T.let(
                  :CANCEL_SUBSCRIPTION,
                  Stigg::V1::Subscription::Data::Trial::TrialEndBehavior::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Subscription::Data::Trial::TrialEndBehavior::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
