# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SubscriptionUpdateParams, Stigg::Internal::AnyHash)
          end

        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SubscriptionUpdateParams::Addon])
          )
        end
        attr_reader :addons

        sig do
          params(
            addons: T::Array[Stigg::V1::SubscriptionUpdateParams::Addon::OrHash]
          ).void
        end
        attr_writer :addons

        sig do
          returns(T.nilable(Stigg::V1::SubscriptionUpdateParams::AppliedCoupon))
        end
        attr_reader :applied_coupon

        sig do
          params(
            applied_coupon:
              Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::OrHash
          ).void
        end
        attr_writer :applied_coupon

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :await_payment_confirmation

        sig { params(await_payment_confirmation: T::Boolean).void }
        attr_writer :await_payment_confirmation

        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionUpdateParams::BillingInformation)
          )
        end
        attr_reader :billing_information

        sig do
          params(
            billing_information:
              Stigg::V1::SubscriptionUpdateParams::BillingInformation::OrHash
          ).void
        end
        attr_writer :billing_information

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionUpdateParams::BillingPeriod::OrSymbol
            )
          )
        end
        attr_reader :billing_period

        sig do
          params(
            billing_period:
              Stigg::V1::SubscriptionUpdateParams::BillingPeriod::OrSymbol
          ).void
        end
        attr_writer :billing_period

        sig { returns(T.nilable(Stigg::V1::SubscriptionUpdateParams::Budget)) }
        attr_reader :budget

        sig do
          params(
            budget:
              T.nilable(Stigg::V1::SubscriptionUpdateParams::Budget::OrHash)
          ).void
        end
        attr_writer :budget

        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SubscriptionUpdateParams::Charge])
          )
        end
        attr_reader :charges

        sig do
          params(
            charges:
              T::Array[Stigg::V1::SubscriptionUpdateParams::Charge::OrHash]
          ).void
        end
        attr_writer :charges

        # Additional metadata for the subscription
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          returns(T.nilable(Stigg::V1::SubscriptionUpdateParams::MinimumSpend))
        end
        attr_reader :minimum_spend

        sig do
          params(
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::MinimumSpend::OrHash
              )
          ).void
        end
        attr_writer :minimum_spend

        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::SubscriptionUpdateParams::PriceOverride]
            )
          )
        end
        attr_reader :price_overrides

        sig do
          params(
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::PriceOverride::OrHash
              ]
          ).void
        end
        attr_writer :price_overrides

        sig { returns(T.nilable(String)) }
        attr_reader :promotion_code

        sig { params(promotion_code: String).void }
        attr_writer :promotion_code

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::OrSymbol
            )
          )
        end
        attr_reader :schedule_strategy

        sig do
          params(
            schedule_strategy:
              Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::OrSymbol
          ).void
        end
        attr_writer :schedule_strategy

        sig do
          returns(
            T.nilable(
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement
              ]
            )
          )
        end
        attr_reader :subscription_entitlements

        sig do
          params(
            subscription_entitlements:
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::OrHash
              ]
          ).void
        end
        attr_writer :subscription_entitlements

        # Subscription trial end date
        sig { returns(T.nilable(Time)) }
        attr_reader :trial_end_date

        sig { params(trial_end_date: Time).void }
        attr_writer :trial_end_date

        sig do
          params(
            addons:
              T::Array[Stigg::V1::SubscriptionUpdateParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::OrHash,
            await_payment_confirmation: T::Boolean,
            billing_information:
              Stigg::V1::SubscriptionUpdateParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionUpdateParams::BillingPeriod::OrSymbol,
            budget:
              T.nilable(Stigg::V1::SubscriptionUpdateParams::Budget::OrHash),
            charges:
              T::Array[Stigg::V1::SubscriptionUpdateParams::Charge::OrHash],
            metadata: T::Hash[Symbol, String],
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::MinimumSpend::OrHash
              ),
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::PriceOverride::OrHash
              ],
            promotion_code: String,
            schedule_strategy:
              Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::OrSymbol,
            subscription_entitlements:
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::OrHash
              ],
            trial_end_date: Time,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          addons: nil,
          applied_coupon: nil,
          await_payment_confirmation: nil,
          billing_information: nil,
          billing_period: nil,
          budget: nil,
          charges: nil,
          # Additional metadata for the subscription
          metadata: nil,
          minimum_spend: nil,
          price_overrides: nil,
          promotion_code: nil,
          schedule_strategy: nil,
          subscription_entitlements: nil,
          # Subscription trial end date
          trial_end_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              addons: T::Array[Stigg::V1::SubscriptionUpdateParams::Addon],
              applied_coupon:
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon,
              await_payment_confirmation: T::Boolean,
              billing_information:
                Stigg::V1::SubscriptionUpdateParams::BillingInformation,
              billing_period:
                Stigg::V1::SubscriptionUpdateParams::BillingPeriod::OrSymbol,
              budget: T.nilable(Stigg::V1::SubscriptionUpdateParams::Budget),
              charges: T::Array[Stigg::V1::SubscriptionUpdateParams::Charge],
              metadata: T::Hash[Symbol, String],
              minimum_spend:
                T.nilable(Stigg::V1::SubscriptionUpdateParams::MinimumSpend),
              price_overrides:
                T::Array[Stigg::V1::SubscriptionUpdateParams::PriceOverride],
              promotion_code: String,
              schedule_strategy:
                Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::OrSymbol,
              subscription_entitlements:
                T::Array[
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement
                ],
              trial_end_date: Time,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Addon < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionUpdateParams::Addon,
                Stigg::Internal::AnyHash
              )
            end

          # Addon ID
          sig { returns(String) }
          attr_accessor :addon_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig do
            params(addon_id: String, quantity: Float).returns(T.attached_class)
          end
          def self.new(
            # Addon ID
            addon_id:,
            quantity:
          )
          end

          sig { override.returns({ addon_id: String, quantity: Float }) }
          def to_hash
          end
        end

        class AppliedCoupon < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :billing_coupon_id

          sig { params(billing_coupon_id: String).void }
          attr_writer :billing_coupon_id

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration
              )
            )
          end
          attr_reader :configuration

          sig do
            params(
              configuration:
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration::OrHash
            ).void
          end
          attr_writer :configuration

          sig { returns(T.nilable(String)) }
          attr_reader :coupon_id

          sig { params(coupon_id: String).void }
          attr_writer :coupon_id

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount
              )
            )
          end
          attr_reader :discount

          sig do
            params(
              discount:
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::OrHash
            ).void
          end
          attr_writer :discount

          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code

          sig do
            params(
              billing_coupon_id: String,
              configuration:
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration::OrHash,
              coupon_id: String,
              discount:
                Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::OrHash,
              promotion_code: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            billing_coupon_id: nil,
            configuration: nil,
            coupon_id: nil,
            discount: nil,
            promotion_code: nil
          )
          end

          sig do
            override.returns(
              {
                billing_coupon_id: String,
                configuration:
                  Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration,
                coupon_id: String,
                discount:
                  Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount,
                promotion_code: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Configuration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration,
                  Stigg::Internal::AnyHash
                )
              end

            # Coupon start date
            sig { returns(T.nilable(Time)) }
            attr_reader :start_date

            sig { params(start_date: Time).void }
            attr_writer :start_date

            sig { params(start_date: Time).returns(T.attached_class) }
            def self.new(
              # Coupon start date
              start_date: nil
            )
            end

            sig { override.returns({ start_date: Time }) }
            def to_hash
            end
          end

          class Discount < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount,
                  Stigg::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff
                  ]
                )
              )
            end
            attr_accessor :amounts_off

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(Float)) }
            attr_reader :duration_in_months

            sig { params(duration_in_months: Float).void }
            attr_writer :duration_in_months

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(Float)) }
            attr_reader :percent_off

            sig { params(percent_off: Float).void }
            attr_writer :percent_off

            sig do
              params(
                amounts_off:
                  T.nilable(
                    T::Array[
                      Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::OrHash
                    ]
                  ),
                description: String,
                duration_in_months: Float,
                name: String,
                percent_off: Float
              ).returns(T.attached_class)
            end
            def self.new(
              amounts_off: nil,
              description: nil,
              duration_in_months: nil,
              name: nil,
              percent_off: nil
            )
            end

            sig do
              override.returns(
                {
                  amounts_off:
                    T.nilable(
                      T::Array[
                        Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff
                      ]
                    ),
                  description: String,
                  duration_in_months: Float,
                  name: String,
                  percent_off: Float
                }
              )
            end
            def to_hash
            end

            class AmountsOff < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff,
                    Stigg::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :amount

              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(amount:, currency: nil)
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    currency:
                      Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module Currency
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class BillingInformation < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionUpdateParams::BillingInformation,
                Stigg::Internal::AnyHash
              )
            end

          # Physical address
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress::OrHash
            ).void
          end
          attr_writer :billing_address

          sig { returns(T.nilable(String)) }
          attr_reader :charge_on_behalf_of_account

          sig { params(charge_on_behalf_of_account: String).void }
          attr_writer :charge_on_behalf_of_account

          sig { returns(T.nilable(String)) }
          attr_reader :coupon_id

          sig { params(coupon_id: String).void }
          attr_writer :coupon_id

          sig { returns(T.nilable(String)) }
          attr_reader :integration_id

          sig { params(integration_id: String).void }
          attr_writer :integration_id

          sig { returns(T.nilable(Float)) }
          attr_reader :invoice_days_until_due

          sig { params(invoice_days_until_due: Float).void }
          attr_writer :invoice_days_until_due

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_backdated

          sig { params(is_backdated: T::Boolean).void }
          attr_writer :is_backdated

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_invoice_paid

          sig { params(is_invoice_paid: T::Boolean).void }
          attr_writer :is_invoice_paid

          # Additional metadata for the subscription
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :metadata

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::OrSymbol
              )
            )
          end
          attr_reader :proration_behavior

          sig do
            params(
              proration_behavior:
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::OrSymbol
            ).void
          end
          attr_writer :proration_behavior

          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::TaxID
                ]
              )
            )
          end
          attr_reader :tax_ids

          sig do
            params(
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::TaxID::OrHash
                ]
            ).void
          end
          attr_writer :tax_ids

          sig { returns(T.nilable(Float)) }
          attr_reader :tax_percentage

          sig { params(tax_percentage: Float).void }
          attr_writer :tax_percentage

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :tax_rate_ids

          sig { params(tax_rate_ids: T::Array[String]).void }
          attr_writer :tax_rate_ids

          sig do
            params(
              billing_address:
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress::OrHash,
              charge_on_behalf_of_account: String,
              coupon_id: String,
              integration_id: String,
              invoice_days_until_due: Float,
              is_backdated: T::Boolean,
              is_invoice_paid: T::Boolean,
              metadata: T::Hash[Symbol, T.anything],
              proration_behavior:
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::OrSymbol,
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::TaxID::OrHash
                ],
              tax_percentage: Float,
              tax_rate_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Physical address
            billing_address: nil,
            charge_on_behalf_of_account: nil,
            coupon_id: nil,
            integration_id: nil,
            invoice_days_until_due: nil,
            is_backdated: nil,
            is_invoice_paid: nil,
            # Additional metadata for the subscription
            metadata: nil,
            proration_behavior: nil,
            tax_ids: nil,
            tax_percentage: nil,
            tax_rate_ids: nil
          )
          end

          sig do
            override.returns(
              {
                billing_address:
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress,
                charge_on_behalf_of_account: String,
                coupon_id: String,
                integration_id: String,
                invoice_days_until_due: Float,
                is_backdated: T::Boolean,
                is_invoice_paid: T::Boolean,
                metadata: T::Hash[Symbol, T.anything],
                proration_behavior:
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::OrSymbol,
                tax_ids:
                  T::Array[
                    Stigg::V1::SubscriptionUpdateParams::BillingInformation::TaxID
                  ],
                tax_percentage: Float,
                tax_rate_ids: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class BillingAddress < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress,
                  Stigg::Internal::AnyHash
                )
              end

            # City name
            sig { returns(T.nilable(String)) }
            attr_reader :city

            sig { params(city: String).void }
            attr_writer :city

            # Country code or name
            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { params(country: String).void }
            attr_writer :country

            # Street address line 1
            sig { returns(T.nilable(String)) }
            attr_reader :line1

            sig { params(line1: String).void }
            attr_writer :line1

            # Street address line 2
            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            # Postal or ZIP code
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code

            sig { params(postal_code: String).void }
            attr_writer :postal_code

            # State or province
            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            # Physical address
            sig do
              params(
                city: String,
                country: String,
                line1: String,
                line2: String,
                postal_code: String,
                state: String
              ).returns(T.attached_class)
            end
            def self.new(
              # City name
              city: nil,
              # Country code or name
              country: nil,
              # Street address line 1
              line1: nil,
              # Street address line 2
              line2: nil,
              # Postal or ZIP code
              postal_code: nil,
              # State or province
              state: nil
            )
            end

            sig do
              override.returns(
                {
                  city: String,
                  country: String,
                  line1: String,
                  line2: String,
                  postal_code: String,
                  state: String
                }
              )
            end
            def to_hash
            end
          end

          module ProrationBehavior
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INVOICE_IMMEDIATELY =
              T.let(
                :INVOICE_IMMEDIATELY,
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            CREATE_PRORATIONS =
              T.let(
                :CREATE_PRORATIONS,
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class TaxID < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::BillingInformation::TaxID,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :type

            sig { returns(String) }
            attr_accessor :value

            sig do
              params(type: String, value: String).returns(T.attached_class)
            end
            def self.new(type:, value:)
            end

            sig { override.returns({ type: String, value: String }) }
            def to_hash
            end
          end
        end

        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::SubscriptionUpdateParams::BillingPeriod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::V1::SubscriptionUpdateParams::BillingPeriod::TaggedSymbol
            )
          ANNUALLY =
            T.let(
              :ANNUALLY,
              Stigg::V1::SubscriptionUpdateParams::BillingPeriod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::BillingPeriod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Budget < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionUpdateParams::Budget,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :has_soft_limit

          sig { returns(Float) }
          attr_accessor :limit

          sig do
            params(has_soft_limit: T::Boolean, limit: Float).returns(
              T.attached_class
            )
          end
          def self.new(has_soft_limit:, limit:)
          end

          sig { override.returns({ has_soft_limit: T::Boolean, limit: Float }) }
          def to_hash
          end
        end

        class Charge < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionUpdateParams::Charge,
                Stigg::Internal::AnyHash
              )
            end

          # Charge ID
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Float) }
          attr_accessor :quantity

          sig do
            returns(Stigg::V1::SubscriptionUpdateParams::Charge::Type::OrSymbol)
          end
          attr_accessor :type

          sig do
            params(
              id: String,
              quantity: Float,
              type: Stigg::V1::SubscriptionUpdateParams::Charge::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Charge ID
            id:,
            quantity:,
            type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                quantity: Float,
                type:
                  Stigg::V1::SubscriptionUpdateParams::Charge::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::SubscriptionUpdateParams::Charge::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEATURE =
              T.let(
                :FEATURE,
                Stigg::V1::SubscriptionUpdateParams::Charge::Type::TaggedSymbol
              )
            CREDIT =
              T.let(
                :CREDIT,
                Stigg::V1::SubscriptionUpdateParams::Charge::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionUpdateParams::Charge::Type::TaggedSymbol
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
                Stigg::V1::SubscriptionUpdateParams::MinimumSpend,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum
              )
            )
          end
          attr_reader :minimum

          sig do
            params(
              minimum:
                T.nilable(
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::OrHash
                )
            ).void
          end
          attr_writer :minimum

          sig do
            params(
              minimum:
                T.nilable(
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(minimum: nil)
          end

          sig do
            override.returns(
              {
                minimum:
                  T.nilable(
                    Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum
                  )
              }
            )
          end
          def to_hash
          end

          class Minimum < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :amount

            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::OrSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::OrSymbol
              ).void
            end
            attr_writer :currency

            sig do
              params(
                amount: Float,
                currency:
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(amount:, currency: nil)
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Currency
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class PriceOverride < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionUpdateParams::PriceOverride,
                Stigg::Internal::AnyHash
              )
            end

          # Addon ID
          sig { returns(T.nilable(String)) }
          attr_reader :addon_id

          sig { params(addon_id: String).void }
          attr_writer :addon_id

          # Whether this is a base charge override
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :base_charge

          sig { params(base_charge: T::Boolean).void }
          attr_writer :base_charge

          # The corresponding custom currency id of the recurring credits price
          sig { returns(T.nilable(String)) }
          attr_reader :currency_id

          sig { params(currency_id: String).void }
          attr_writer :currency_id

          # Feature ID
          sig { returns(T.nilable(String)) }
          attr_reader :feature_id

          sig { params(feature_id: String).void }
          attr_writer :feature_id

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price
              )
            )
          end
          attr_reader :price

          sig do
            params(
              price:
                Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::OrHash
            ).void
          end
          attr_writer :price

          sig do
            params(
              addon_id: String,
              base_charge: T::Boolean,
              currency_id: String,
              feature_id: String,
              price:
                Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Addon ID
            addon_id: nil,
            # Whether this is a base charge override
            base_charge: nil,
            # The corresponding custom currency id of the recurring credits price
            currency_id: nil,
            # Feature ID
            feature_id: nil,
            price: nil
          )
          end

          sig do
            override.returns(
              {
                addon_id: String,
                base_charge: T::Boolean,
                currency_id: String,
                feature_id: String,
                price: Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price
              }
            )
          end
          def to_hash
          end

          class Price < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(Float) }
            attr_accessor :amount

            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::OrSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::OrSymbol
              ).void
            end
            attr_writer :currency

            sig do
              params(
                amount: Float,
                currency:
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(amount:, currency: nil)
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Currency
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionUpdateParams::PriceOverride::Price::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        module ScheduleStrategy
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          END_OF_BILLING_PERIOD =
            T.let(
              :END_OF_BILLING_PERIOD,
              Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::TaggedSymbol
            )
          END_OF_BILLING_MONTH =
            T.let(
              :END_OF_BILLING_MONTH,
              Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::TaggedSymbol
            )
          IMMEDIATE =
            T.let(
              :IMMEDIATE,
              Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SubscriptionEntitlement < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :feature_id

          sig { params(feature_id: String).void }
          attr_writer :feature_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_soft_limit

          sig { params(has_soft_limit: T::Boolean).void }
          attr_writer :has_soft_limit

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_unlimited_usage

          sig { params(has_unlimited_usage: T::Boolean).void }
          attr_writer :has_unlimited_usage

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration
              )
            )
          end
          attr_reader :monthly_reset_period_configuration

          sig do
            params(
              monthly_reset_period_configuration:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::OrHash
            ).void
          end
          attr_writer :monthly_reset_period_configuration

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::OrSymbol
              )
            )
          end
          attr_reader :reset_period

          sig do
            params(
              reset_period:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::OrSymbol
            ).void
          end
          attr_writer :reset_period

          sig { returns(T.nilable(Float)) }
          attr_reader :usage_limit

          sig { params(usage_limit: Float).void }
          attr_writer :usage_limit

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration
              )
            )
          end
          attr_reader :weekly_reset_period_configuration

          sig do
            params(
              weekly_reset_period_configuration:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::OrHash
            ).void
          end
          attr_writer :weekly_reset_period_configuration

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration
              )
            )
          end
          attr_reader :yearly_reset_period_configuration

          sig do
            params(
              yearly_reset_period_configuration:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::OrHash
            ).void
          end
          attr_writer :yearly_reset_period_configuration

          sig do
            params(
              id: String,
              feature_id: String,
              has_soft_limit: T::Boolean,
              has_unlimited_usage: T::Boolean,
              monthly_reset_period_configuration:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::OrHash,
              reset_period:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::OrSymbol,
              usage_limit: Float,
              weekly_reset_period_configuration:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::OrHash,
              yearly_reset_period_configuration:
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            feature_id: nil,
            has_soft_limit: nil,
            has_unlimited_usage: nil,
            monthly_reset_period_configuration: nil,
            reset_period: nil,
            usage_limit: nil,
            weekly_reset_period_configuration: nil,
            yearly_reset_period_configuration: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                feature_id: String,
                has_soft_limit: T::Boolean,
                has_unlimited_usage: T::Boolean,
                monthly_reset_period_configuration:
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration,
                reset_period:
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::OrSymbol,
                usage_limit: Float,
                weekly_reset_period_configuration:
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration,
                yearly_reset_period_configuration:
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration
              }
            )
          end
          def to_hash
          end

          class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration,
                  Stigg::Internal::AnyHash
                )
              end

            sig do
              returns(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
              )
            end
            attr_accessor :according_to

            sig do
              params(
                according_to:
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(according_to:)
            end

            sig do
              override.returns(
                {
                  according_to:
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                }
              )
            end
            def to_hash
            end

            module AccordingTo
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::AccordingTo
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIPTION_START =
                T.let(
                  :SubscriptionStart,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              START_OF_THE_MONTH =
                T.let(
                  :StartOfTheMonth,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module ResetPeriod
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YEAR =
              T.let(
                :YEAR,
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::TaggedSymbol
              )
            MONTH =
              T.let(
                :MONTH,
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::TaggedSymbol
              )
            WEEK =
              T.let(
                :WEEK,
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::TaggedSymbol
              )
            DAY =
              T.let(
                :DAY,
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::TaggedSymbol
              )
            HOUR =
              T.let(
                :HOUR,
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::ResetPeriod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration,
                  Stigg::Internal::AnyHash
                )
              end

            sig do
              returns(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
              )
            end
            attr_accessor :according_to

            sig do
              params(
                according_to:
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(according_to:)
            end

            sig do
              override.returns(
                {
                  according_to:
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                }
              )
            end
            def to_hash
            end

            module AccordingTo
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIPTION_START =
                T.let(
                  :SubscriptionStart,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_SUNDAY =
                T.let(
                  :EverySunday,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_MONDAY =
                T.let(
                  :EveryMonday,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_TUESDAY =
                T.let(
                  :EveryTuesday,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_WEDNESDAY =
                T.let(
                  :EveryWednesday,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_THURSDAY =
                T.let(
                  :EveryThursday,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_FRIDAY =
                T.let(
                  :EveryFriday,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_SATURDAY =
                T.let(
                  :EverySaturday,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration,
                  Stigg::Internal::AnyHash
                )
              end

            sig do
              returns(
                Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
              )
            end
            attr_accessor :according_to

            sig do
              params(
                according_to:
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(according_to:)
            end

            sig do
              override.returns(
                {
                  according_to:
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                }
              )
            end
            def to_hash
            end

            module AccordingTo
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::AccordingTo
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIPTION_START =
                T.let(
                  :SubscriptionStart,
                  Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionUpdateParams::SubscriptionEntitlement::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
