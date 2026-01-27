# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionPreviewParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::SubscriptionPreviewParams,
              Stigg::Internal::AnyHash
            )
          end

        # Customer ID
        sig { returns(String) }
        attr_accessor :customer_id

        # Plan ID
        sig { returns(String) }
        attr_accessor :plan_id

        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SubscriptionPreviewParams::Addon])
          )
        end
        attr_reader :addons

        sig do
          params(
            addons:
              T::Array[Stigg::V1::SubscriptionPreviewParams::Addon::OrHash]
          ).void
        end
        attr_writer :addons

        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionPreviewParams::AppliedCoupon)
          )
        end
        attr_reader :applied_coupon

        sig do
          params(
            applied_coupon:
              Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::OrHash
          ).void
        end
        attr_writer :applied_coupon

        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::SubscriptionPreviewParams::BillableFeature]
            )
          )
        end
        attr_reader :billable_features

        sig do
          params(
            billable_features:
              T::Array[
                Stigg::V1::SubscriptionPreviewParams::BillableFeature::OrHash
              ]
          ).void
        end
        attr_writer :billable_features

        sig { returns(T.nilable(String)) }
        attr_reader :billing_country_code

        sig { params(billing_country_code: String).void }
        attr_writer :billing_country_code

        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionPreviewParams::BillingInformation)
          )
        end
        attr_reader :billing_information

        sig do
          params(
            billing_information:
              Stigg::V1::SubscriptionPreviewParams::BillingInformation::OrHash
          ).void
        end
        attr_writer :billing_information

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionPreviewParams::BillingPeriod::OrSymbol
            )
          )
        end
        attr_reader :billing_period

        sig do
          params(
            billing_period:
              Stigg::V1::SubscriptionPreviewParams::BillingPeriod::OrSymbol
          ).void
        end
        attr_writer :billing_period

        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SubscriptionPreviewParams::Charge])
          )
        end
        attr_reader :charges

        sig do
          params(
            charges:
              T::Array[Stigg::V1::SubscriptionPreviewParams::Charge::OrHash]
          ).void
        end
        attr_writer :charges

        sig { returns(T.nilable(String)) }
        attr_reader :paying_customer_id

        sig { params(paying_customer_id: String).void }
        attr_writer :paying_customer_id

        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::OrSymbol
            )
          )
        end
        attr_reader :schedule_strategy

        sig do
          params(
            schedule_strategy:
              Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::OrSymbol
          ).void
        end
        attr_writer :schedule_strategy

        # Subscription start date
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration
            )
          )
        end
        attr_reader :trial_override_configuration

        sig do
          params(
            trial_override_configuration:
              Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::OrHash
          ).void
        end
        attr_writer :trial_override_configuration

        sig { returns(T.nilable(Float)) }
        attr_reader :unit_quantity

        sig { params(unit_quantity: Float).void }
        attr_writer :unit_quantity

        sig do
          params(
            customer_id: String,
            plan_id: String,
            addons:
              T::Array[Stigg::V1::SubscriptionPreviewParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::OrHash,
            billable_features:
              T::Array[
                Stigg::V1::SubscriptionPreviewParams::BillableFeature::OrHash
              ],
            billing_country_code: String,
            billing_information:
              Stigg::V1::SubscriptionPreviewParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionPreviewParams::BillingPeriod::OrSymbol,
            charges:
              T::Array[Stigg::V1::SubscriptionPreviewParams::Charge::OrHash],
            paying_customer_id: String,
            resource_id: String,
            schedule_strategy:
              Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::OrSymbol,
            start_date: Time,
            trial_override_configuration:
              Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::OrHash,
            unit_quantity: Float,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer ID
          customer_id:,
          # Plan ID
          plan_id:,
          addons: nil,
          applied_coupon: nil,
          billable_features: nil,
          billing_country_code: nil,
          billing_information: nil,
          billing_period: nil,
          charges: nil,
          paying_customer_id: nil,
          resource_id: nil,
          schedule_strategy: nil,
          # Subscription start date
          start_date: nil,
          trial_override_configuration: nil,
          unit_quantity: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              plan_id: String,
              addons: T::Array[Stigg::V1::SubscriptionPreviewParams::Addon],
              applied_coupon:
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon,
              billable_features:
                T::Array[Stigg::V1::SubscriptionPreviewParams::BillableFeature],
              billing_country_code: String,
              billing_information:
                Stigg::V1::SubscriptionPreviewParams::BillingInformation,
              billing_period:
                Stigg::V1::SubscriptionPreviewParams::BillingPeriod::OrSymbol,
              charges: T::Array[Stigg::V1::SubscriptionPreviewParams::Charge],
              paying_customer_id: String,
              resource_id: String,
              schedule_strategy:
                Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::OrSymbol,
              start_date: Time,
              trial_override_configuration:
                Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration,
              unit_quantity: Float,
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
                Stigg::V1::SubscriptionPreviewParams::Addon,
                Stigg::Internal::AnyHash
              )
            end

          # Addon ID
          sig { returns(String) }
          attr_accessor :addon_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :quantity

          sig { params(quantity: Integer).void }
          attr_writer :quantity

          sig do
            params(addon_id: String, quantity: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Addon ID
            addon_id:,
            quantity: nil
          )
          end

          sig { override.returns({ addon_id: String, quantity: Integer }) }
          def to_hash
          end
        end

        class AppliedCoupon < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon,
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
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration
              )
            )
          end
          attr_reader :configuration

          sig do
            params(
              configuration:
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration::OrHash
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
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount
              )
            )
          end
          attr_reader :discount

          sig do
            params(
              discount:
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::OrHash
            ).void
          end
          attr_writer :discount

          sig { returns(T.nilable(String)) }
          attr_reader :promotion_code

          sig { params(promotion_code: String).void }
          attr_writer :promotion_code

          sig do
            params(
              billing_coupon_id: String,
              configuration:
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration::OrHash,
              coupon_id: String,
              discount:
                Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::OrHash,
              promotion_code: String
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
                  Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration,
                coupon_id: String,
                discount:
                  Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount,
                promotion_code: String
              }
            )
          end
          def to_hash
          end

          class Configuration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration,
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
                  Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount,
                  Stigg::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff
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
                      Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::OrHash
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
                        Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff
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
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff,
                    Stigg::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :amount

              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(amount:, currency: nil)
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    currency:
                      Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class BillableFeature < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionPreviewParams::BillableFeature,
                Stigg::Internal::AnyHash
              )
            end

          # Feature ID
          sig { returns(String) }
          attr_accessor :feature_id

          sig { returns(Float) }
          attr_accessor :quantity

          sig do
            params(feature_id: String, quantity: Float).returns(
              T.attached_class
            )
          end
          def self.new(
            # Feature ID
            feature_id:,
            quantity:
          )
          end

          sig { override.returns({ feature_id: String, quantity: Float }) }
          def to_hash
          end
        end

        class BillingInformation < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionPreviewParams::BillingInformation,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress::OrHash
            ).void
          end
          attr_writer :billing_address

          sig { returns(T.nilable(String)) }
          attr_reader :charge_on_behalf_of_account

          sig { params(charge_on_behalf_of_account: String).void }
          attr_writer :charge_on_behalf_of_account

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

          sig { returns(T.nilable(T.anything)) }
          attr_reader :metadata

          sig { params(metadata: T.anything).void }
          attr_writer :metadata

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::OrSymbol
              )
            )
          end
          attr_reader :proration_behavior

          sig do
            params(
              proration_behavior:
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::OrSymbol
            ).void
          end
          attr_writer :proration_behavior

          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::TaxID
                ]
              )
            )
          end
          attr_reader :tax_ids

          sig do
            params(
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::TaxID::OrHash
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
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress::OrHash,
              charge_on_behalf_of_account: String,
              integration_id: String,
              invoice_days_until_due: Float,
              is_backdated: T::Boolean,
              is_invoice_paid: T::Boolean,
              metadata: T.anything,
              proration_behavior:
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::OrSymbol,
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::TaxID::OrHash
                ],
              tax_percentage: Float,
              tax_rate_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            billing_address: nil,
            charge_on_behalf_of_account: nil,
            integration_id: nil,
            invoice_days_until_due: nil,
            is_backdated: nil,
            is_invoice_paid: nil,
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
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress,
                charge_on_behalf_of_account: String,
                integration_id: String,
                invoice_days_until_due: Float,
                is_backdated: T::Boolean,
                is_invoice_paid: T::Boolean,
                metadata: T.anything,
                proration_behavior:
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::OrSymbol,
                tax_ids:
                  T::Array[
                    Stigg::V1::SubscriptionPreviewParams::BillingInformation::TaxID
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
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :city

            sig { params(city: String).void }
            attr_writer :city

            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { params(country: String).void }
            attr_writer :country

            sig { returns(T.nilable(String)) }
            attr_reader :line1

            sig { params(line1: String).void }
            attr_writer :line1

            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            sig { returns(T.nilable(String)) }
            attr_reader :postal_code

            sig { params(postal_code: String).void }
            attr_writer :postal_code

            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

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
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
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
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INVOICE_IMMEDIATELY =
              T.let(
                :INVOICE_IMMEDIATELY,
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            CREATE_PRORATIONS =
              T.let(
                :CREATE_PRORATIONS,
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior::TaggedSymbol
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
                  Stigg::V1::SubscriptionPreviewParams::BillingInformation::TaxID,
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
              T.all(Symbol, Stigg::V1::SubscriptionPreviewParams::BillingPeriod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::V1::SubscriptionPreviewParams::BillingPeriod::TaggedSymbol
            )
          ANNUALLY =
            T.let(
              :ANNUALLY,
              Stigg::V1::SubscriptionPreviewParams::BillingPeriod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionPreviewParams::BillingPeriod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Charge < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionPreviewParams::Charge,
                Stigg::Internal::AnyHash
              )
            end

          # Charge ID
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Float) }
          attr_accessor :quantity

          sig do
            returns(
              Stigg::V1::SubscriptionPreviewParams::Charge::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              id: String,
              quantity: Float,
              type: Stigg::V1::SubscriptionPreviewParams::Charge::Type::OrSymbol
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
                  Stigg::V1::SubscriptionPreviewParams::Charge::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionPreviewParams::Charge::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEATURE =
              T.let(
                :FEATURE,
                Stigg::V1::SubscriptionPreviewParams::Charge::Type::TaggedSymbol
              )
            CREDIT =
              T.let(
                :CREDIT,
                Stigg::V1::SubscriptionPreviewParams::Charge::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionPreviewParams::Charge::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module ScheduleStrategy
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          END_OF_BILLING_PERIOD =
            T.let(
              :END_OF_BILLING_PERIOD,
              Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::TaggedSymbol
            )
          END_OF_BILLING_MONTH =
            T.let(
              :END_OF_BILLING_MONTH,
              Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::TaggedSymbol
            )
          IMMEDIATE =
            T.let(
              :IMMEDIATE,
              Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class TrialOverrideConfiguration < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :is_trial

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
              )
            )
          end
          attr_reader :trial_end_behavior

          sig do
            params(
              trial_end_behavior:
                Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
            ).void
          end
          attr_writer :trial_end_behavior

          # Trial end date
          sig { returns(T.nilable(Time)) }
          attr_reader :trial_end_date

          sig { params(trial_end_date: Time).void }
          attr_writer :trial_end_date

          sig do
            params(
              is_trial: T::Boolean,
              trial_end_behavior:
                Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
              trial_end_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            is_trial:,
            trial_end_behavior: nil,
            # Trial end date
            trial_end_date: nil
          )
          end

          sig do
            override.returns(
              {
                is_trial: T::Boolean,
                trial_end_behavior:
                  Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
                trial_end_date: Time
              }
            )
          end
          def to_hash
          end

          module TrialEndBehavior
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONVERT_TO_PAID =
              T.let(
                :CONVERT_TO_PAID,
                Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )
            CANCEL_SUBSCRIPTION =
              T.let(
                :CANCEL_SUBSCRIPTION,
                Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
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
