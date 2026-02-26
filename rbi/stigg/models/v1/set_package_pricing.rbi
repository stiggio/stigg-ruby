# typed: strong

module Stigg
  module Models
    module V1
      class SetPackagePricing < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SetPackagePricing, Stigg::Internal::AnyHash)
          end

        # The pricing type (FREE, PAID, or CUSTOM)
        sig { returns(Stigg::V1::SetPackagePricing::PricingType::OrSymbol) }
        attr_accessor :pricing_type

        # Deprecated: billing integration ID
        sig { returns(T.nilable(String)) }
        attr_reader :billing_id

        sig { params(billing_id: String).void }
        attr_writer :billing_id

        # Minimum spend configuration per billing period
        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SetPackagePricing::MinimumSpend])
          )
        end
        attr_accessor :minimum_spend

        # When overage charges are billed
        sig do
          returns(
            T.nilable(
              Stigg::V1::SetPackagePricing::OverageBillingPeriod::OrSymbol
            )
          )
        end
        attr_reader :overage_billing_period

        sig do
          params(
            overage_billing_period:
              Stigg::V1::SetPackagePricing::OverageBillingPeriod::OrSymbol
          ).void
        end
        attr_writer :overage_billing_period

        # Array of overage pricing model configurations
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::SetPackagePricing::OveragePricingModel]
            )
          )
        end
        attr_reader :overage_pricing_models

        sig do
          params(
            overage_pricing_models:
              T::Array[
                Stigg::V1::SetPackagePricing::OveragePricingModel::OrHash
              ]
          ).void
        end
        attr_writer :overage_pricing_models

        # Array of pricing model configurations
        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SetPackagePricing::PricingModel])
          )
        end
        attr_reader :pricing_models

        sig do
          params(
            pricing_models:
              T::Array[Stigg::V1::SetPackagePricing::PricingModel::OrHash]
          ).void
        end
        attr_writer :pricing_models

        # Request to set the pricing configuration for a plan or addon.
        sig do
          params(
            pricing_type: Stigg::V1::SetPackagePricing::PricingType::OrSymbol,
            billing_id: String,
            minimum_spend:
              T.nilable(
                T::Array[Stigg::V1::SetPackagePricing::MinimumSpend::OrHash]
              ),
            overage_billing_period:
              Stigg::V1::SetPackagePricing::OverageBillingPeriod::OrSymbol,
            overage_pricing_models:
              T::Array[
                Stigg::V1::SetPackagePricing::OveragePricingModel::OrHash
              ],
            pricing_models:
              T::Array[Stigg::V1::SetPackagePricing::PricingModel::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The pricing type (FREE, PAID, or CUSTOM)
          pricing_type:,
          # Deprecated: billing integration ID
          billing_id: nil,
          # Minimum spend configuration per billing period
          minimum_spend: nil,
          # When overage charges are billed
          overage_billing_period: nil,
          # Array of overage pricing model configurations
          overage_pricing_models: nil,
          # Array of pricing model configurations
          pricing_models: nil
        )
        end

        sig do
          override.returns(
            {
              pricing_type: Stigg::V1::SetPackagePricing::PricingType::OrSymbol,
              billing_id: String,
              minimum_spend:
                T.nilable(T::Array[Stigg::V1::SetPackagePricing::MinimumSpend]),
              overage_billing_period:
                Stigg::V1::SetPackagePricing::OverageBillingPeriod::OrSymbol,
              overage_pricing_models:
                T::Array[Stigg::V1::SetPackagePricing::OveragePricingModel],
              pricing_models:
                T::Array[Stigg::V1::SetPackagePricing::PricingModel]
            }
          )
        end
        def to_hash
        end

        # The pricing type (FREE, PAID, or CUSTOM)
        module PricingType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::SetPackagePricing::PricingType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FREE =
            T.let(
              :FREE,
              Stigg::V1::SetPackagePricing::PricingType::TaggedSymbol
            )
          PAID =
            T.let(
              :PAID,
              Stigg::V1::SetPackagePricing::PricingType::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :CUSTOM,
              Stigg::V1::SetPackagePricing::PricingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Stigg::V1::SetPackagePricing::PricingType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class MinimumSpend < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SetPackagePricing::MinimumSpend,
                Stigg::Internal::AnyHash
              )
            end

          # The billing period
          sig do
            returns(
              Stigg::V1::SetPackagePricing::MinimumSpend::BillingPeriod::OrSymbol
            )
          end
          attr_accessor :billing_period

          # The minimum spend amount
          sig { returns(Stigg::V1::SetPackagePricing::MinimumSpend::Minimum) }
          attr_reader :minimum

          sig do
            params(
              minimum:
                Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::OrHash
            ).void
          end
          attr_writer :minimum

          # Minimum spend configuration for a billing period.
          sig do
            params(
              billing_period:
                Stigg::V1::SetPackagePricing::MinimumSpend::BillingPeriod::OrSymbol,
              minimum:
                Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The billing period
            billing_period:,
            # The minimum spend amount
            minimum:
          )
          end

          sig do
            override.returns(
              {
                billing_period:
                  Stigg::V1::SetPackagePricing::MinimumSpend::BillingPeriod::OrSymbol,
                minimum: Stigg::V1::SetPackagePricing::MinimumSpend::Minimum
              }
            )
          end
          def to_hash
          end

          # The billing period
          module BillingPeriod
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SetPackagePricing::MinimumSpend::BillingPeriod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MONTHLY =
              T.let(
                :MONTHLY,
                Stigg::V1::SetPackagePricing::MinimumSpend::BillingPeriod::TaggedSymbol
              )
            ANNUALLY =
              T.let(
                :ANNUALLY,
                Stigg::V1::SetPackagePricing::MinimumSpend::BillingPeriod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SetPackagePricing::MinimumSpend::BillingPeriod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Minimum < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum,
                  Stigg::Internal::AnyHash
                )
              end

            # The price amount
            sig { returns(Float) }
            attr_accessor :amount

            # The price currency
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::OrSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::OrSymbol
              ).void
            end
            attr_writer :currency

            # The minimum spend amount
            sig do
              params(
                amount: Float,
                currency:
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price amount
              amount:,
              # The price currency
              currency: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency:
                    Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::OrSymbol
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
                    Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::MinimumSpend::Minimum::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        # When overage charges are billed
        module OverageBillingPeriod
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::SetPackagePricing::OverageBillingPeriod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ON_SUBSCRIPTION_RENEWAL =
            T.let(
              :ON_SUBSCRIPTION_RENEWAL,
              Stigg::V1::SetPackagePricing::OverageBillingPeriod::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::V1::SetPackagePricing::OverageBillingPeriod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SetPackagePricing::OverageBillingPeriod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class OveragePricingModel < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SetPackagePricing::OveragePricingModel,
                Stigg::Internal::AnyHash
              )
            end

          # The billing model for overages
          sig do
            returns(
              Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::OrSymbol
            )
          end
          attr_accessor :billing_model

          # Price periods for overage pricing
          sig do
            returns(
              T::Array[
                Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod
              ]
            )
          end
          attr_accessor :price_periods

          # The billing cadence for overages
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence::OrSymbol
              )
            )
          end
          attr_reader :billing_cadence

          sig do
            params(
              billing_cadence:
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence::OrSymbol
            ).void
          end
          attr_writer :billing_cadence

          # Entitlement configuration for the overage feature
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement
              )
            )
          end
          attr_reader :entitlement

          sig do
            params(
              entitlement:
                Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::OrHash
            ).void
          end
          attr_writer :entitlement

          # The feature ID for overage pricing
          sig { returns(T.nilable(String)) }
          attr_reader :feature_id

          sig { params(feature_id: String).void }
          attr_writer :feature_id

          # Custom currency ID for overage top-up
          sig { returns(T.nilable(String)) }
          attr_reader :top_up_custom_currency_id

          sig { params(top_up_custom_currency_id: String).void }
          attr_writer :top_up_custom_currency_id

          # Overage pricing model configuration.
          sig do
            params(
              billing_model:
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::OrSymbol,
              price_periods:
                T::Array[
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::OrHash
                ],
              billing_cadence:
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence::OrSymbol,
              entitlement:
                Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::OrHash,
              feature_id: String,
              top_up_custom_currency_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The billing model for overages
            billing_model:,
            # Price periods for overage pricing
            price_periods:,
            # The billing cadence for overages
            billing_cadence: nil,
            # Entitlement configuration for the overage feature
            entitlement: nil,
            # The feature ID for overage pricing
            feature_id: nil,
            # Custom currency ID for overage top-up
            top_up_custom_currency_id: nil
          )
          end

          sig do
            override.returns(
              {
                billing_model:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::OrSymbol,
                price_periods:
                  T::Array[
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod
                  ],
                billing_cadence:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence::OrSymbol,
                entitlement:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement,
                feature_id: String,
                top_up_custom_currency_id: String
              }
            )
          end
          def to_hash
          end

          # The billing model for overages
          module BillingModel
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FLAT_FEE =
              T.let(
                :FLAT_FEE,
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::TaggedSymbol
              )
            MINIMUM_SPEND =
              T.let(
                :MINIMUM_SPEND,
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::TaggedSymbol
              )
            PER_UNIT =
              T.let(
                :PER_UNIT,
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::TaggedSymbol
              )
            USAGE_BASED =
              T.let(
                :USAGE_BASED,
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::TaggedSymbol
              )
            CREDIT_BASED =
              T.let(
                :CREDIT_BASED,
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SetPackagePricing::OveragePricingModel::BillingModel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PricePeriod < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod,
                  Stigg::Internal::AnyHash
                )
              end

            # The billing period (MONTHLY or ANNUALLY)
            sig do
              returns(
                Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::BillingPeriod::OrSymbol
              )
            end
            attr_accessor :billing_period

            # ISO country code for localized pricing
            sig { returns(T.nilable(String)) }
            attr_reader :billing_country_code

            sig { params(billing_country_code: String).void }
            attr_writer :billing_country_code

            # Block size for usage-based pricing
            sig { returns(T.nilable(Float)) }
            attr_reader :block_size

            sig { params(block_size: Float).void }
            attr_writer :block_size

            # When credits are granted
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence::OrSymbol
                )
              )
            end
            attr_reader :credit_grant_cadence

            sig do
              params(
                credit_grant_cadence:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence::OrSymbol
              ).void
            end
            attr_writer :credit_grant_cadence

            # Credit rate configuration for credit-based pricing
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditRate
                )
              )
            end
            attr_reader :credit_rate

            sig do
              params(
                credit_rate:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditRate::OrHash
              ).void
            end
            attr_writer :credit_rate

            # The price amount and currency
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price
                )
              )
            end
            attr_reader :price

            sig do
              params(
                price:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::OrHash
              ).void
            end
            attr_writer :price

            # Tiered pricing configuration
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier
                  ]
                )
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::OrHash
                  ]
              ).void
            end
            attr_writer :tiers

            # Price configuration for a specific billing period.
            sig do
              params(
                billing_period:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::BillingPeriod::OrSymbol,
                billing_country_code: String,
                block_size: Float,
                credit_grant_cadence:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence::OrSymbol,
                credit_rate:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditRate::OrHash,
                price:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::OrHash,
                tiers:
                  T::Array[
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The billing period (MONTHLY or ANNUALLY)
              billing_period:,
              # ISO country code for localized pricing
              billing_country_code: nil,
              # Block size for usage-based pricing
              block_size: nil,
              # When credits are granted
              credit_grant_cadence: nil,
              # Credit rate configuration for credit-based pricing
              credit_rate: nil,
              # The price amount and currency
              price: nil,
              # Tiered pricing configuration
              tiers: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_period:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::BillingPeriod::OrSymbol,
                  billing_country_code: String,
                  block_size: Float,
                  credit_grant_cadence:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence::OrSymbol,
                  credit_rate:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditRate,
                  price:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price,
                  tiers:
                    T::Array[
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier
                    ]
                }
              )
            end
            def to_hash
            end

            # The billing period (MONTHLY or ANNUALLY)
            module BillingPeriod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::BillingPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::BillingPeriod::TaggedSymbol
                )
              ANNUALLY =
                T.let(
                  :ANNUALLY,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::BillingPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::BillingPeriod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # When credits are granted
            module CreditGrantCadence
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BEGINNING_OF_BILLING_PERIOD =
                T.let(
                  :BEGINNING_OF_BILLING_PERIOD,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :MONTHLY,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditGrantCadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class CreditRate < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::CreditRate,
                    Stigg::Internal::AnyHash
                  )
                end

              # The credit rate amount
              sig { returns(Float) }
              attr_accessor :amount

              # The custom currency ID
              sig { returns(String) }
              attr_accessor :currency_id

              # Optional cost formula expression
              sig { returns(T.nilable(String)) }
              attr_reader :cost_formula

              sig { params(cost_formula: String).void }
              attr_writer :cost_formula

              # Credit rate configuration for credit-based pricing
              sig do
                params(
                  amount: Float,
                  currency_id: String,
                  cost_formula: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The credit rate amount
                amount:,
                # The custom currency ID
                currency_id:,
                # Optional cost formula expression
                cost_formula: nil
              )
              end

              sig do
                override.returns(
                  { amount: Float, currency_id: String, cost_formula: String }
                )
              end
              def to_hash
              end
            end

            class Price < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # The price currency
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::OrSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              # The price amount and currency
              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The price amount
                amount:,
                # The price currency
                currency: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    currency:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::OrSymbol
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
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Price::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Tier < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier,
                    Stigg::Internal::AnyHash
                  )
                end

              # Flat price for this tier
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice
                  )
                )
              end
              attr_reader :flat_price

              sig do
                params(
                  flat_price:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::OrHash
                ).void
              end
              attr_writer :flat_price

              # Per-unit price in this tier
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice
                  )
                )
              end
              attr_reader :unit_price

              sig do
                params(
                  unit_price:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::OrHash
                ).void
              end
              attr_writer :unit_price

              # Upper bound of this tier (null for unlimited)
              sig { returns(T.nilable(Float)) }
              attr_reader :up_to

              sig { params(up_to: Float).void }
              attr_writer :up_to

              # A tier in tiered pricing.
              sig do
                params(
                  flat_price:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::OrHash,
                  unit_price:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::OrHash,
                  up_to: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Flat price for this tier
                flat_price: nil,
                # Per-unit price in this tier
                unit_price: nil,
                # Upper bound of this tier (null for unlimited)
                up_to: nil
              )
              end

              sig do
                override.returns(
                  {
                    flat_price:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice,
                    unit_price:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice,
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
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The price amount
                sig { returns(Float) }
                attr_accessor :amount

                # The price currency
                sig do
                  returns(
                    T.nilable(
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
                    )
                  )
                end
                attr_reader :currency

                sig do
                  params(
                    currency:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
                  ).void
                end
                attr_writer :currency

                # Flat price for this tier
                sig do
                  params(
                    amount: Float,
                    currency:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The price amount
                  amount:,
                  # The price currency
                  currency: nil
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      currency:
                        Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
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
                        Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USD =
                    T.let(
                      :usd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AED =
                    T.let(
                      :aed,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ALL =
                    T.let(
                      :all,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AMD =
                    T.let(
                      :amd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ANG =
                    T.let(
                      :ang,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AUD =
                    T.let(
                      :aud,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AWG =
                    T.let(
                      :awg,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AZN =
                    T.let(
                      :azn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BAM =
                    T.let(
                      :bam,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BBD =
                    T.let(
                      :bbd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BDT =
                    T.let(
                      :bdt,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BGN =
                    T.let(
                      :bgn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BIF =
                    T.let(
                      :bif,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BMD =
                    T.let(
                      :bmd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BND =
                    T.let(
                      :bnd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BSD =
                    T.let(
                      :bsd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BWP =
                    T.let(
                      :bwp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BYN =
                    T.let(
                      :byn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BZD =
                    T.let(
                      :bzd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BRL =
                    T.let(
                      :brl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CAD =
                    T.let(
                      :cad,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CDF =
                    T.let(
                      :cdf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CHF =
                    T.let(
                      :chf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CNY =
                    T.let(
                      :cny,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CZK =
                    T.let(
                      :czk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DKK =
                    T.let(
                      :dkk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DOP =
                    T.let(
                      :dop,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DZD =
                    T.let(
                      :dzd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  EGP =
                    T.let(
                      :egp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ETB =
                    T.let(
                      :etb,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  EUR =
                    T.let(
                      :eur,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  FJD =
                    T.let(
                      :fjd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GBP =
                    T.let(
                      :gbp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GEL =
                    T.let(
                      :gel,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GIP =
                    T.let(
                      :gip,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GMD =
                    T.let(
                      :gmd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GYD =
                    T.let(
                      :gyd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HKD =
                    T.let(
                      :hkd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HRK =
                    T.let(
                      :hrk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HTG =
                    T.let(
                      :htg,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  IDR =
                    T.let(
                      :idr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ILS =
                    T.let(
                      :ils,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  INR =
                    T.let(
                      :inr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ISK =
                    T.let(
                      :isk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  JMD =
                    T.let(
                      :jmd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  JPY =
                    T.let(
                      :jpy,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KES =
                    T.let(
                      :kes,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KGS =
                    T.let(
                      :kgs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KHR =
                    T.let(
                      :khr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KMF =
                    T.let(
                      :kmf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KRW =
                    T.let(
                      :krw,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KYD =
                    T.let(
                      :kyd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KZT =
                    T.let(
                      :kzt,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LBP =
                    T.let(
                      :lbp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LKR =
                    T.let(
                      :lkr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LRD =
                    T.let(
                      :lrd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LSL =
                    T.let(
                      :lsl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MAD =
                    T.let(
                      :mad,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MDL =
                    T.let(
                      :mdl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MGA =
                    T.let(
                      :mga,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MKD =
                    T.let(
                      :mkd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MMK =
                    T.let(
                      :mmk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MNT =
                    T.let(
                      :mnt,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MOP =
                    T.let(
                      :mop,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MRO =
                    T.let(
                      :mro,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MVR =
                    T.let(
                      :mvr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MWK =
                    T.let(
                      :mwk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MXN =
                    T.let(
                      :mxn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MYR =
                    T.let(
                      :myr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MZN =
                    T.let(
                      :mzn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NAD =
                    T.let(
                      :nad,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NGN =
                    T.let(
                      :ngn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NOK =
                    T.let(
                      :nok,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NPR =
                    T.let(
                      :npr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NZD =
                    T.let(
                      :nzd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PGK =
                    T.let(
                      :pgk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PHP =
                    T.let(
                      :php,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PKR =
                    T.let(
                      :pkr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PLN =
                    T.let(
                      :pln,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  QAR =
                    T.let(
                      :qar,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RON =
                    T.let(
                      :ron,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RSD =
                    T.let(
                      :rsd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RUB =
                    T.let(
                      :rub,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RWF =
                    T.let(
                      :rwf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SAR =
                    T.let(
                      :sar,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SBD =
                    T.let(
                      :sbd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SCR =
                    T.let(
                      :scr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SEK =
                    T.let(
                      :sek,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SGD =
                    T.let(
                      :sgd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SLE =
                    T.let(
                      :sle,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SLL =
                    T.let(
                      :sll,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SOS =
                    T.let(
                      :sos,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SZL =
                    T.let(
                      :szl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  THB =
                    T.let(
                      :thb,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TJS =
                    T.let(
                      :tjs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TOP =
                    T.let(
                      :top,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TRY =
                    T.let(
                      :try,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TTD =
                    T.let(
                      :ttd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TZS =
                    T.let(
                      :tzs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UAH =
                    T.let(
                      :uah,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UZS =
                    T.let(
                      :uzs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  VND =
                    T.let(
                      :vnd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  VUV =
                    T.let(
                      :vuv,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  WST =
                    T.let(
                      :wst,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XAF =
                    T.let(
                      :xaf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XCD =
                    T.let(
                      :xcd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  YER =
                    T.let(
                      :yer,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ZAR =
                    T.let(
                      :zar,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ZMW =
                    T.let(
                      :zmw,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CLP =
                    T.let(
                      :clp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DJF =
                    T.let(
                      :djf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GNF =
                    T.let(
                      :gnf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UGX =
                    T.let(
                      :ugx,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PYG =
                    T.let(
                      :pyg,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XOF =
                    T.let(
                      :xof,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XPF =
                    T.let(
                      :xpf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
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
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The price amount
                sig { returns(Float) }
                attr_accessor :amount

                # The price currency
                sig do
                  returns(
                    T.nilable(
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
                    )
                  )
                end
                attr_reader :currency

                sig do
                  params(
                    currency:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
                  ).void
                end
                attr_writer :currency

                # Per-unit price in this tier
                sig do
                  params(
                    amount: Float,
                    currency:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The price amount
                  amount:,
                  # The price currency
                  currency: nil
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      currency:
                        Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
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
                        Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USD =
                    T.let(
                      :usd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AED =
                    T.let(
                      :aed,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ALL =
                    T.let(
                      :all,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AMD =
                    T.let(
                      :amd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ANG =
                    T.let(
                      :ang,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AUD =
                    T.let(
                      :aud,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AWG =
                    T.let(
                      :awg,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AZN =
                    T.let(
                      :azn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BAM =
                    T.let(
                      :bam,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BBD =
                    T.let(
                      :bbd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BDT =
                    T.let(
                      :bdt,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BGN =
                    T.let(
                      :bgn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BIF =
                    T.let(
                      :bif,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BMD =
                    T.let(
                      :bmd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BND =
                    T.let(
                      :bnd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BSD =
                    T.let(
                      :bsd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BWP =
                    T.let(
                      :bwp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BYN =
                    T.let(
                      :byn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BZD =
                    T.let(
                      :bzd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BRL =
                    T.let(
                      :brl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CAD =
                    T.let(
                      :cad,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CDF =
                    T.let(
                      :cdf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CHF =
                    T.let(
                      :chf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CNY =
                    T.let(
                      :cny,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CZK =
                    T.let(
                      :czk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DKK =
                    T.let(
                      :dkk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DOP =
                    T.let(
                      :dop,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DZD =
                    T.let(
                      :dzd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  EGP =
                    T.let(
                      :egp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ETB =
                    T.let(
                      :etb,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  EUR =
                    T.let(
                      :eur,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  FJD =
                    T.let(
                      :fjd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GBP =
                    T.let(
                      :gbp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GEL =
                    T.let(
                      :gel,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GIP =
                    T.let(
                      :gip,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GMD =
                    T.let(
                      :gmd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GYD =
                    T.let(
                      :gyd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HKD =
                    T.let(
                      :hkd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HRK =
                    T.let(
                      :hrk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HTG =
                    T.let(
                      :htg,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  IDR =
                    T.let(
                      :idr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ILS =
                    T.let(
                      :ils,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  INR =
                    T.let(
                      :inr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ISK =
                    T.let(
                      :isk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  JMD =
                    T.let(
                      :jmd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  JPY =
                    T.let(
                      :jpy,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KES =
                    T.let(
                      :kes,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KGS =
                    T.let(
                      :kgs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KHR =
                    T.let(
                      :khr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KMF =
                    T.let(
                      :kmf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KRW =
                    T.let(
                      :krw,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KYD =
                    T.let(
                      :kyd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KZT =
                    T.let(
                      :kzt,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LBP =
                    T.let(
                      :lbp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LKR =
                    T.let(
                      :lkr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LRD =
                    T.let(
                      :lrd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LSL =
                    T.let(
                      :lsl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MAD =
                    T.let(
                      :mad,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MDL =
                    T.let(
                      :mdl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MGA =
                    T.let(
                      :mga,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MKD =
                    T.let(
                      :mkd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MMK =
                    T.let(
                      :mmk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MNT =
                    T.let(
                      :mnt,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MOP =
                    T.let(
                      :mop,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MRO =
                    T.let(
                      :mro,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MVR =
                    T.let(
                      :mvr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MWK =
                    T.let(
                      :mwk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MXN =
                    T.let(
                      :mxn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MYR =
                    T.let(
                      :myr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MZN =
                    T.let(
                      :mzn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NAD =
                    T.let(
                      :nad,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NGN =
                    T.let(
                      :ngn,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NOK =
                    T.let(
                      :nok,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NPR =
                    T.let(
                      :npr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NZD =
                    T.let(
                      :nzd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PGK =
                    T.let(
                      :pgk,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PHP =
                    T.let(
                      :php,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PKR =
                    T.let(
                      :pkr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PLN =
                    T.let(
                      :pln,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  QAR =
                    T.let(
                      :qar,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RON =
                    T.let(
                      :ron,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RSD =
                    T.let(
                      :rsd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RUB =
                    T.let(
                      :rub,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RWF =
                    T.let(
                      :rwf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SAR =
                    T.let(
                      :sar,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SBD =
                    T.let(
                      :sbd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SCR =
                    T.let(
                      :scr,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SEK =
                    T.let(
                      :sek,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SGD =
                    T.let(
                      :sgd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SLE =
                    T.let(
                      :sle,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SLL =
                    T.let(
                      :sll,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SOS =
                    T.let(
                      :sos,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SZL =
                    T.let(
                      :szl,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  THB =
                    T.let(
                      :thb,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TJS =
                    T.let(
                      :tjs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TOP =
                    T.let(
                      :top,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TRY =
                    T.let(
                      :try,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TTD =
                    T.let(
                      :ttd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TZS =
                    T.let(
                      :tzs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UAH =
                    T.let(
                      :uah,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UZS =
                    T.let(
                      :uzs,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  VND =
                    T.let(
                      :vnd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  VUV =
                    T.let(
                      :vuv,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  WST =
                    T.let(
                      :wst,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XAF =
                    T.let(
                      :xaf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XCD =
                    T.let(
                      :xcd,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  YER =
                    T.let(
                      :yer,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ZAR =
                    T.let(
                      :zar,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ZMW =
                    T.let(
                      :zmw,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CLP =
                    T.let(
                      :clp,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DJF =
                    T.let(
                      :djf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GNF =
                    T.let(
                      :gnf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UGX =
                    T.let(
                      :ugx,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PYG =
                    T.let(
                      :pyg,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XOF =
                    T.let(
                      :xof,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XPF =
                    T.let(
                      :xpf,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::SetPackagePricing::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          # The billing cadence for overages
          module BillingCadence
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RECURRING =
              T.let(
                :RECURRING,
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence::TaggedSymbol
              )
            ONE_OFF =
              T.let(
                :ONE_OFF,
                Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SetPackagePricing::OveragePricingModel::BillingCadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Entitlement < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement,
                  Stigg::Internal::AnyHash
                )
              end

            # The feature ID for the entitlement
            sig { returns(String) }
            attr_accessor :feature_id

            # Whether the limit is soft (allows overage)
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_soft_limit

            sig { params(has_soft_limit: T::Boolean).void }
            attr_writer :has_soft_limit

            # Whether usage is unlimited
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_unlimited_usage

            sig { params(has_unlimited_usage: T::Boolean).void }
            attr_writer :has_unlimited_usage

            # Monthly reset configuration
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration
                )
              )
            end
            attr_reader :monthly_reset_period_configuration

            sig do
              params(
                monthly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::OrHash
              ).void
            end
            attr_writer :monthly_reset_period_configuration

            # The usage reset period
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::OrSymbol
                )
              )
            end
            attr_reader :reset_period

            sig do
              params(
                reset_period:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::OrSymbol
              ).void
            end
            attr_writer :reset_period

            # The usage limit before overage kicks in
            sig { returns(T.nilable(Float)) }
            attr_reader :usage_limit

            sig { params(usage_limit: Float).void }
            attr_writer :usage_limit

            # Weekly reset configuration
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration
                )
              )
            end
            attr_reader :weekly_reset_period_configuration

            sig do
              params(
                weekly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::OrHash
              ).void
            end
            attr_writer :weekly_reset_period_configuration

            # Yearly reset configuration
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration
                )
              )
            end
            attr_reader :yearly_reset_period_configuration

            sig do
              params(
                yearly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::OrHash
              ).void
            end
            attr_writer :yearly_reset_period_configuration

            # Entitlement configuration for the overage feature
            sig do
              params(
                feature_id: String,
                has_soft_limit: T::Boolean,
                has_unlimited_usage: T::Boolean,
                monthly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::OrHash,
                reset_period:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::OrSymbol,
                usage_limit: Float,
                weekly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::OrHash,
                yearly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The feature ID for the entitlement
              feature_id:,
              # Whether the limit is soft (allows overage)
              has_soft_limit: nil,
              # Whether usage is unlimited
              has_unlimited_usage: nil,
              # Monthly reset configuration
              monthly_reset_period_configuration: nil,
              # The usage reset period
              reset_period: nil,
              # The usage limit before overage kicks in
              usage_limit: nil,
              # Weekly reset configuration
              weekly_reset_period_configuration: nil,
              # Yearly reset configuration
              yearly_reset_period_configuration: nil
            )
            end

            sig do
              override.returns(
                {
                  feature_id: String,
                  has_soft_limit: T::Boolean,
                  has_unlimited_usage: T::Boolean,
                  monthly_reset_period_configuration:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration,
                  reset_period:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::OrSymbol,
                  usage_limit: Float,
                  weekly_reset_period_configuration:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration,
                  yearly_reset_period_configuration:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration
                }
              )
            end
            def to_hash
            end

            class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              sig do
                returns(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # Monthly reset configuration
              sig do
                params(
                  according_to:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                START_OF_THE_MONTH =
                  T.let(
                    :StartOfTheMonth,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The usage reset period
            module ResetPeriod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :YEAR,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::TaggedSymbol
                )
              MONTH =
                T.let(
                  :MONTH,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::TaggedSymbol
                )
              WEEK =
                T.let(
                  :WEEK,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::TaggedSymbol
                )
              DAY =
                T.let(
                  :DAY,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::TaggedSymbol
                )
              HOUR =
                T.let(
                  :HOUR,
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::ResetPeriod::TaggedSymbol
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
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Reset anchor (SubscriptionStart or specific day)
              sig do
                returns(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # Weekly reset configuration
              sig do
                params(
                  according_to:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Reset anchor (SubscriptionStart or specific day)
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Reset anchor (SubscriptionStart or specific day)
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_SUNDAY =
                  T.let(
                    :EverySunday,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_MONDAY =
                  T.let(
                    :EveryMonday,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_TUESDAY =
                  T.let(
                    :EveryTuesday,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_WEDNESDAY =
                  T.let(
                    :EveryWednesday,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_THURSDAY =
                  T.let(
                    :EveryThursday,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_FRIDAY =
                  T.let(
                    :EveryFriday,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_SATURDAY =
                  T.let(
                    :EverySaturday,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Reset anchor (SubscriptionStart)
              sig do
                returns(
                  Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # Yearly reset configuration
              sig do
                params(
                  according_to:
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Reset anchor (SubscriptionStart)
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Reset anchor (SubscriptionStart)
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SetPackagePricing::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class PricingModel < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SetPackagePricing::PricingModel,
                Stigg::Internal::AnyHash
              )
            end

          # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED)
          sig do
            returns(
              Stigg::V1::SetPackagePricing::PricingModel::BillingModel::OrSymbol
            )
          end
          attr_accessor :billing_model

          # Array of price period configurations (at least one required)
          sig do
            returns(
              T::Array[Stigg::V1::SetPackagePricing::PricingModel::PricePeriod]
            )
          end
          attr_accessor :price_periods

          # The billing cadence (RECURRING or ONE_OFF)
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::PricingModel::BillingCadence::OrSymbol
              )
            )
          end
          attr_reader :billing_cadence

          sig do
            params(
              billing_cadence:
                Stigg::V1::SetPackagePricing::PricingModel::BillingCadence::OrSymbol
            ).void
          end
          attr_writer :billing_cadence

          # The feature ID this pricing model is associated with
          sig { returns(T.nilable(String)) }
          attr_reader :feature_id

          sig { params(feature_id: String).void }
          attr_writer :feature_id

          # Maximum number of units (max 999999)
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_unit_quantity

          sig { params(max_unit_quantity: Integer).void }
          attr_writer :max_unit_quantity

          # Minimum number of units
          sig { returns(T.nilable(Integer)) }
          attr_reader :min_unit_quantity

          sig { params(min_unit_quantity: Integer).void }
          attr_writer :min_unit_quantity

          # Monthly reset period configuration
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration
              )
            )
          end
          attr_reader :monthly_reset_period_configuration

          sig do
            params(
              monthly_reset_period_configuration:
                Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::OrHash
            ).void
          end
          attr_writer :monthly_reset_period_configuration

          # The usage reset period
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::OrSymbol
              )
            )
          end
          attr_reader :reset_period

          sig do
            params(
              reset_period:
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::OrSymbol
            ).void
          end
          attr_writer :reset_period

          # The tiered pricing mode (VOLUME or GRADUATED)
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::PricingModel::TiersMode::OrSymbol
              )
            )
          end
          attr_reader :tiers_mode

          sig do
            params(
              tiers_mode:
                Stigg::V1::SetPackagePricing::PricingModel::TiersMode::OrSymbol
            ).void
          end
          attr_writer :tiers_mode

          # The custom currency ID for top-up pricing
          sig { returns(T.nilable(String)) }
          attr_reader :top_up_custom_currency_id

          sig { params(top_up_custom_currency_id: String).void }
          attr_writer :top_up_custom_currency_id

          # Weekly reset period configuration
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration
              )
            )
          end
          attr_reader :weekly_reset_period_configuration

          sig do
            params(
              weekly_reset_period_configuration:
                Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::OrHash
            ).void
          end
          attr_writer :weekly_reset_period_configuration

          # Yearly reset period configuration
          sig do
            returns(
              T.nilable(
                Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration
              )
            )
          end
          attr_reader :yearly_reset_period_configuration

          sig do
            params(
              yearly_reset_period_configuration:
                Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::OrHash
            ).void
          end
          attr_writer :yearly_reset_period_configuration

          # A pricing model configuration with billing details and price periods.
          sig do
            params(
              billing_model:
                Stigg::V1::SetPackagePricing::PricingModel::BillingModel::OrSymbol,
              price_periods:
                T::Array[
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::OrHash
                ],
              billing_cadence:
                Stigg::V1::SetPackagePricing::PricingModel::BillingCadence::OrSymbol,
              feature_id: String,
              max_unit_quantity: Integer,
              min_unit_quantity: Integer,
              monthly_reset_period_configuration:
                Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::OrHash,
              reset_period:
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::OrSymbol,
              tiers_mode:
                Stigg::V1::SetPackagePricing::PricingModel::TiersMode::OrSymbol,
              top_up_custom_currency_id: String,
              weekly_reset_period_configuration:
                Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::OrHash,
              yearly_reset_period_configuration:
                Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED)
            billing_model:,
            # Array of price period configurations (at least one required)
            price_periods:,
            # The billing cadence (RECURRING or ONE_OFF)
            billing_cadence: nil,
            # The feature ID this pricing model is associated with
            feature_id: nil,
            # Maximum number of units (max 999999)
            max_unit_quantity: nil,
            # Minimum number of units
            min_unit_quantity: nil,
            # Monthly reset period configuration
            monthly_reset_period_configuration: nil,
            # The usage reset period
            reset_period: nil,
            # The tiered pricing mode (VOLUME or GRADUATED)
            tiers_mode: nil,
            # The custom currency ID for top-up pricing
            top_up_custom_currency_id: nil,
            # Weekly reset period configuration
            weekly_reset_period_configuration: nil,
            # Yearly reset period configuration
            yearly_reset_period_configuration: nil
          )
          end

          sig do
            override.returns(
              {
                billing_model:
                  Stigg::V1::SetPackagePricing::PricingModel::BillingModel::OrSymbol,
                price_periods:
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod
                  ],
                billing_cadence:
                  Stigg::V1::SetPackagePricing::PricingModel::BillingCadence::OrSymbol,
                feature_id: String,
                max_unit_quantity: Integer,
                min_unit_quantity: Integer,
                monthly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration,
                reset_period:
                  Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::OrSymbol,
                tiers_mode:
                  Stigg::V1::SetPackagePricing::PricingModel::TiersMode::OrSymbol,
                top_up_custom_currency_id: String,
                weekly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration,
                yearly_reset_period_configuration:
                  Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration
              }
            )
          end
          def to_hash
          end

          # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED)
          module BillingModel
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SetPackagePricing::PricingModel::BillingModel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FLAT_FEE =
              T.let(
                :FLAT_FEE,
                Stigg::V1::SetPackagePricing::PricingModel::BillingModel::TaggedSymbol
              )
            MINIMUM_SPEND =
              T.let(
                :MINIMUM_SPEND,
                Stigg::V1::SetPackagePricing::PricingModel::BillingModel::TaggedSymbol
              )
            PER_UNIT =
              T.let(
                :PER_UNIT,
                Stigg::V1::SetPackagePricing::PricingModel::BillingModel::TaggedSymbol
              )
            USAGE_BASED =
              T.let(
                :USAGE_BASED,
                Stigg::V1::SetPackagePricing::PricingModel::BillingModel::TaggedSymbol
              )
            CREDIT_BASED =
              T.let(
                :CREDIT_BASED,
                Stigg::V1::SetPackagePricing::PricingModel::BillingModel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SetPackagePricing::PricingModel::BillingModel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PricePeriod < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod,
                  Stigg::Internal::AnyHash
                )
              end

            # The billing period (MONTHLY or ANNUALLY)
            sig do
              returns(
                Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::BillingPeriod::OrSymbol
              )
            end
            attr_accessor :billing_period

            # ISO country code for localized pricing
            sig { returns(T.nilable(String)) }
            attr_reader :billing_country_code

            sig { params(billing_country_code: String).void }
            attr_writer :billing_country_code

            # Block size for usage-based pricing
            sig { returns(T.nilable(Float)) }
            attr_reader :block_size

            sig { params(block_size: Float).void }
            attr_writer :block_size

            # When credits are granted
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence::OrSymbol
                )
              )
            end
            attr_reader :credit_grant_cadence

            sig do
              params(
                credit_grant_cadence:
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence::OrSymbol
              ).void
            end
            attr_writer :credit_grant_cadence

            # Credit rate configuration for credit-based pricing
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditRate
                )
              )
            end
            attr_reader :credit_rate

            sig do
              params(
                credit_rate:
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditRate::OrHash
              ).void
            end
            attr_writer :credit_rate

            # The price amount and currency
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price
                )
              )
            end
            attr_reader :price

            sig do
              params(
                price:
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::OrHash
              ).void
            end
            attr_writer :price

            # Tiered pricing configuration
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier
                  ]
                )
              )
            end
            attr_reader :tiers

            sig do
              params(
                tiers:
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::OrHash
                  ]
              ).void
            end
            attr_writer :tiers

            # Price configuration for a specific billing period.
            sig do
              params(
                billing_period:
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::BillingPeriod::OrSymbol,
                billing_country_code: String,
                block_size: Float,
                credit_grant_cadence:
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence::OrSymbol,
                credit_rate:
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditRate::OrHash,
                price:
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::OrHash,
                tiers:
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The billing period (MONTHLY or ANNUALLY)
              billing_period:,
              # ISO country code for localized pricing
              billing_country_code: nil,
              # Block size for usage-based pricing
              block_size: nil,
              # When credits are granted
              credit_grant_cadence: nil,
              # Credit rate configuration for credit-based pricing
              credit_rate: nil,
              # The price amount and currency
              price: nil,
              # Tiered pricing configuration
              tiers: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_period:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::BillingPeriod::OrSymbol,
                  billing_country_code: String,
                  block_size: Float,
                  credit_grant_cadence:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence::OrSymbol,
                  credit_rate:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditRate,
                  price:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price,
                  tiers:
                    T::Array[
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier
                    ]
                }
              )
            end
            def to_hash
            end

            # The billing period (MONTHLY or ANNUALLY)
            module BillingPeriod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::BillingPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTHLY =
                T.let(
                  :MONTHLY,
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::BillingPeriod::TaggedSymbol
                )
              ANNUALLY =
                T.let(
                  :ANNUALLY,
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::BillingPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::BillingPeriod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # When credits are granted
            module CreditGrantCadence
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BEGINNING_OF_BILLING_PERIOD =
                T.let(
                  :BEGINNING_OF_BILLING_PERIOD,
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :MONTHLY,
                  Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditGrantCadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class CreditRate < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::CreditRate,
                    Stigg::Internal::AnyHash
                  )
                end

              # The credit rate amount
              sig { returns(Float) }
              attr_accessor :amount

              # The custom currency ID
              sig { returns(String) }
              attr_accessor :currency_id

              # Optional cost formula expression
              sig { returns(T.nilable(String)) }
              attr_reader :cost_formula

              sig { params(cost_formula: String).void }
              attr_writer :cost_formula

              # Credit rate configuration for credit-based pricing
              sig do
                params(
                  amount: Float,
                  currency_id: String,
                  cost_formula: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The credit rate amount
                amount:,
                # The custom currency ID
                currency_id:,
                # Optional cost formula expression
                cost_formula: nil
              )
              end

              sig do
                override.returns(
                  { amount: Float, currency_id: String, cost_formula: String }
                )
              end
              def to_hash
              end
            end

            class Price < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # The price currency
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::OrSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              # The price amount and currency
              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The price amount
                amount:,
                # The price currency
                currency: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    currency:
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::OrSymbol
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
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Price::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Tier < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier,
                    Stigg::Internal::AnyHash
                  )
                end

              # Flat price for this tier
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice
                  )
                )
              end
              attr_reader :flat_price

              sig do
                params(
                  flat_price:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::OrHash
                ).void
              end
              attr_writer :flat_price

              # Per-unit price in this tier
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice
                  )
                )
              end
              attr_reader :unit_price

              sig do
                params(
                  unit_price:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::OrHash
                ).void
              end
              attr_writer :unit_price

              # Upper bound of this tier (null for unlimited)
              sig { returns(T.nilable(Float)) }
              attr_reader :up_to

              sig { params(up_to: Float).void }
              attr_writer :up_to

              # A tier in tiered pricing.
              sig do
                params(
                  flat_price:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::OrHash,
                  unit_price:
                    Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::OrHash,
                  up_to: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Flat price for this tier
                flat_price: nil,
                # Per-unit price in this tier
                unit_price: nil,
                # Upper bound of this tier (null for unlimited)
                up_to: nil
              )
              end

              sig do
                override.returns(
                  {
                    flat_price:
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice,
                    unit_price:
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice,
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
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The price amount
                sig { returns(Float) }
                attr_accessor :amount

                # The price currency
                sig do
                  returns(
                    T.nilable(
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
                    )
                  )
                end
                attr_reader :currency

                sig do
                  params(
                    currency:
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
                  ).void
                end
                attr_writer :currency

                # Flat price for this tier
                sig do
                  params(
                    amount: Float,
                    currency:
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The price amount
                  amount:,
                  # The price currency
                  currency: nil
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      currency:
                        Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::OrSymbol
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
                        Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USD =
                    T.let(
                      :usd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AED =
                    T.let(
                      :aed,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ALL =
                    T.let(
                      :all,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AMD =
                    T.let(
                      :amd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ANG =
                    T.let(
                      :ang,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AUD =
                    T.let(
                      :aud,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AWG =
                    T.let(
                      :awg,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  AZN =
                    T.let(
                      :azn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BAM =
                    T.let(
                      :bam,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BBD =
                    T.let(
                      :bbd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BDT =
                    T.let(
                      :bdt,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BGN =
                    T.let(
                      :bgn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BIF =
                    T.let(
                      :bif,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BMD =
                    T.let(
                      :bmd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BND =
                    T.let(
                      :bnd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BSD =
                    T.let(
                      :bsd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BWP =
                    T.let(
                      :bwp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BYN =
                    T.let(
                      :byn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BZD =
                    T.let(
                      :bzd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  BRL =
                    T.let(
                      :brl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CAD =
                    T.let(
                      :cad,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CDF =
                    T.let(
                      :cdf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CHF =
                    T.let(
                      :chf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CNY =
                    T.let(
                      :cny,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CZK =
                    T.let(
                      :czk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DKK =
                    T.let(
                      :dkk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DOP =
                    T.let(
                      :dop,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DZD =
                    T.let(
                      :dzd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  EGP =
                    T.let(
                      :egp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ETB =
                    T.let(
                      :etb,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  EUR =
                    T.let(
                      :eur,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  FJD =
                    T.let(
                      :fjd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GBP =
                    T.let(
                      :gbp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GEL =
                    T.let(
                      :gel,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GIP =
                    T.let(
                      :gip,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GMD =
                    T.let(
                      :gmd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GYD =
                    T.let(
                      :gyd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HKD =
                    T.let(
                      :hkd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HRK =
                    T.let(
                      :hrk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  HTG =
                    T.let(
                      :htg,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  IDR =
                    T.let(
                      :idr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ILS =
                    T.let(
                      :ils,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  INR =
                    T.let(
                      :inr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ISK =
                    T.let(
                      :isk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  JMD =
                    T.let(
                      :jmd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  JPY =
                    T.let(
                      :jpy,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KES =
                    T.let(
                      :kes,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KGS =
                    T.let(
                      :kgs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KHR =
                    T.let(
                      :khr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KMF =
                    T.let(
                      :kmf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KRW =
                    T.let(
                      :krw,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KYD =
                    T.let(
                      :kyd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  KZT =
                    T.let(
                      :kzt,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LBP =
                    T.let(
                      :lbp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LKR =
                    T.let(
                      :lkr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LRD =
                    T.let(
                      :lrd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  LSL =
                    T.let(
                      :lsl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MAD =
                    T.let(
                      :mad,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MDL =
                    T.let(
                      :mdl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MGA =
                    T.let(
                      :mga,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MKD =
                    T.let(
                      :mkd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MMK =
                    T.let(
                      :mmk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MNT =
                    T.let(
                      :mnt,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MOP =
                    T.let(
                      :mop,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MRO =
                    T.let(
                      :mro,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MVR =
                    T.let(
                      :mvr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MWK =
                    T.let(
                      :mwk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MXN =
                    T.let(
                      :mxn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MYR =
                    T.let(
                      :myr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  MZN =
                    T.let(
                      :mzn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NAD =
                    T.let(
                      :nad,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NGN =
                    T.let(
                      :ngn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NOK =
                    T.let(
                      :nok,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NPR =
                    T.let(
                      :npr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  NZD =
                    T.let(
                      :nzd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PGK =
                    T.let(
                      :pgk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PHP =
                    T.let(
                      :php,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PKR =
                    T.let(
                      :pkr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PLN =
                    T.let(
                      :pln,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  QAR =
                    T.let(
                      :qar,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RON =
                    T.let(
                      :ron,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RSD =
                    T.let(
                      :rsd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RUB =
                    T.let(
                      :rub,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  RWF =
                    T.let(
                      :rwf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SAR =
                    T.let(
                      :sar,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SBD =
                    T.let(
                      :sbd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SCR =
                    T.let(
                      :scr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SEK =
                    T.let(
                      :sek,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SGD =
                    T.let(
                      :sgd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SLE =
                    T.let(
                      :sle,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SLL =
                    T.let(
                      :sll,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SOS =
                    T.let(
                      :sos,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  SZL =
                    T.let(
                      :szl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  THB =
                    T.let(
                      :thb,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TJS =
                    T.let(
                      :tjs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TOP =
                    T.let(
                      :top,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TRY =
                    T.let(
                      :try,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TTD =
                    T.let(
                      :ttd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  TZS =
                    T.let(
                      :tzs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UAH =
                    T.let(
                      :uah,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UZS =
                    T.let(
                      :uzs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  VND =
                    T.let(
                      :vnd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  VUV =
                    T.let(
                      :vuv,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  WST =
                    T.let(
                      :wst,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XAF =
                    T.let(
                      :xaf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XCD =
                    T.let(
                      :xcd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  YER =
                    T.let(
                      :yer,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ZAR =
                    T.let(
                      :zar,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  ZMW =
                    T.let(
                      :zmw,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  CLP =
                    T.let(
                      :clp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  DJF =
                    T.let(
                      :djf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  GNF =
                    T.let(
                      :gnf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  UGX =
                    T.let(
                      :ugx,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  PYG =
                    T.let(
                      :pyg,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XOF =
                    T.let(
                      :xof,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )
                  XPF =
                    T.let(
                      :xpf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::FlatPrice::Currency::TaggedSymbol
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
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The price amount
                sig { returns(Float) }
                attr_accessor :amount

                # The price currency
                sig do
                  returns(
                    T.nilable(
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
                    )
                  )
                end
                attr_reader :currency

                sig do
                  params(
                    currency:
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
                  ).void
                end
                attr_writer :currency

                # Per-unit price in this tier
                sig do
                  params(
                    amount: Float,
                    currency:
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The price amount
                  amount:,
                  # The price currency
                  currency: nil
                )
                end

                sig do
                  override.returns(
                    {
                      amount: Float,
                      currency:
                        Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::OrSymbol
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
                        Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USD =
                    T.let(
                      :usd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AED =
                    T.let(
                      :aed,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ALL =
                    T.let(
                      :all,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AMD =
                    T.let(
                      :amd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ANG =
                    T.let(
                      :ang,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AUD =
                    T.let(
                      :aud,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AWG =
                    T.let(
                      :awg,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  AZN =
                    T.let(
                      :azn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BAM =
                    T.let(
                      :bam,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BBD =
                    T.let(
                      :bbd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BDT =
                    T.let(
                      :bdt,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BGN =
                    T.let(
                      :bgn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BIF =
                    T.let(
                      :bif,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BMD =
                    T.let(
                      :bmd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BND =
                    T.let(
                      :bnd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BSD =
                    T.let(
                      :bsd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BWP =
                    T.let(
                      :bwp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BYN =
                    T.let(
                      :byn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BZD =
                    T.let(
                      :bzd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  BRL =
                    T.let(
                      :brl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CAD =
                    T.let(
                      :cad,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CDF =
                    T.let(
                      :cdf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CHF =
                    T.let(
                      :chf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CNY =
                    T.let(
                      :cny,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CZK =
                    T.let(
                      :czk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DKK =
                    T.let(
                      :dkk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DOP =
                    T.let(
                      :dop,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DZD =
                    T.let(
                      :dzd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  EGP =
                    T.let(
                      :egp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ETB =
                    T.let(
                      :etb,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  EUR =
                    T.let(
                      :eur,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  FJD =
                    T.let(
                      :fjd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GBP =
                    T.let(
                      :gbp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GEL =
                    T.let(
                      :gel,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GIP =
                    T.let(
                      :gip,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GMD =
                    T.let(
                      :gmd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GYD =
                    T.let(
                      :gyd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HKD =
                    T.let(
                      :hkd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HRK =
                    T.let(
                      :hrk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  HTG =
                    T.let(
                      :htg,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  IDR =
                    T.let(
                      :idr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ILS =
                    T.let(
                      :ils,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  INR =
                    T.let(
                      :inr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ISK =
                    T.let(
                      :isk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  JMD =
                    T.let(
                      :jmd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  JPY =
                    T.let(
                      :jpy,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KES =
                    T.let(
                      :kes,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KGS =
                    T.let(
                      :kgs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KHR =
                    T.let(
                      :khr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KMF =
                    T.let(
                      :kmf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KRW =
                    T.let(
                      :krw,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KYD =
                    T.let(
                      :kyd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  KZT =
                    T.let(
                      :kzt,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LBP =
                    T.let(
                      :lbp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LKR =
                    T.let(
                      :lkr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LRD =
                    T.let(
                      :lrd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  LSL =
                    T.let(
                      :lsl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MAD =
                    T.let(
                      :mad,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MDL =
                    T.let(
                      :mdl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MGA =
                    T.let(
                      :mga,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MKD =
                    T.let(
                      :mkd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MMK =
                    T.let(
                      :mmk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MNT =
                    T.let(
                      :mnt,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MOP =
                    T.let(
                      :mop,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MRO =
                    T.let(
                      :mro,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MVR =
                    T.let(
                      :mvr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MWK =
                    T.let(
                      :mwk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MXN =
                    T.let(
                      :mxn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MYR =
                    T.let(
                      :myr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  MZN =
                    T.let(
                      :mzn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NAD =
                    T.let(
                      :nad,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NGN =
                    T.let(
                      :ngn,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NOK =
                    T.let(
                      :nok,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NPR =
                    T.let(
                      :npr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  NZD =
                    T.let(
                      :nzd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PGK =
                    T.let(
                      :pgk,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PHP =
                    T.let(
                      :php,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PKR =
                    T.let(
                      :pkr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PLN =
                    T.let(
                      :pln,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  QAR =
                    T.let(
                      :qar,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RON =
                    T.let(
                      :ron,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RSD =
                    T.let(
                      :rsd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RUB =
                    T.let(
                      :rub,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  RWF =
                    T.let(
                      :rwf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SAR =
                    T.let(
                      :sar,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SBD =
                    T.let(
                      :sbd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SCR =
                    T.let(
                      :scr,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SEK =
                    T.let(
                      :sek,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SGD =
                    T.let(
                      :sgd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SLE =
                    T.let(
                      :sle,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SLL =
                    T.let(
                      :sll,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SOS =
                    T.let(
                      :sos,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  SZL =
                    T.let(
                      :szl,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  THB =
                    T.let(
                      :thb,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TJS =
                    T.let(
                      :tjs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TOP =
                    T.let(
                      :top,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TRY =
                    T.let(
                      :try,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TTD =
                    T.let(
                      :ttd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  TZS =
                    T.let(
                      :tzs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UAH =
                    T.let(
                      :uah,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UZS =
                    T.let(
                      :uzs,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  VND =
                    T.let(
                      :vnd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  VUV =
                    T.let(
                      :vuv,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  WST =
                    T.let(
                      :wst,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XAF =
                    T.let(
                      :xaf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XCD =
                    T.let(
                      :xcd,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  YER =
                    T.let(
                      :yer,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ZAR =
                    T.let(
                      :zar,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  ZMW =
                    T.let(
                      :zmw,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  CLP =
                    T.let(
                      :clp,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  DJF =
                    T.let(
                      :djf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  GNF =
                    T.let(
                      :gnf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  UGX =
                    T.let(
                      :ugx,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  PYG =
                    T.let(
                      :pyg,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XOF =
                    T.let(
                      :xof,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )
                  XPF =
                    T.let(
                      :xpf,
                      Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::SetPackagePricing::PricingModel::PricePeriod::Tier::UnitPrice::Currency::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          # The billing cadence (RECURRING or ONE_OFF)
          module BillingCadence
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SetPackagePricing::PricingModel::BillingCadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RECURRING =
              T.let(
                :RECURRING,
                Stigg::V1::SetPackagePricing::PricingModel::BillingCadence::TaggedSymbol
              )
            ONE_OFF =
              T.let(
                :ONE_OFF,
                Stigg::V1::SetPackagePricing::PricingModel::BillingCadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SetPackagePricing::PricingModel::BillingCadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration,
                  Stigg::Internal::AnyHash
                )
              end

            # Reset anchor (SubscriptionStart or StartOfTheMonth)
            sig do
              returns(
                Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
              )
            end
            attr_accessor :according_to

            # Monthly reset period configuration
            sig do
              params(
                according_to:
                  Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              according_to:
            )
            end

            sig do
              override.returns(
                {
                  according_to:
                    Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Reset anchor (SubscriptionStart or StartOfTheMonth)
            module AccordingTo
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIPTION_START =
                T.let(
                  :SubscriptionStart,
                  Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              START_OF_THE_MONTH =
                T.let(
                  :StartOfTheMonth,
                  Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # The usage reset period
          module ResetPeriod
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            YEAR =
              T.let(
                :YEAR,
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::TaggedSymbol
              )
            MONTH =
              T.let(
                :MONTH,
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::TaggedSymbol
              )
            WEEK =
              T.let(
                :WEEK,
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::TaggedSymbol
              )
            DAY =
              T.let(
                :DAY,
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::TaggedSymbol
              )
            HOUR =
              T.let(
                :HOUR,
                Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SetPackagePricing::PricingModel::ResetPeriod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The tiered pricing mode (VOLUME or GRADUATED)
          module TiersMode
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SetPackagePricing::PricingModel::TiersMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VOLUME =
              T.let(
                :VOLUME,
                Stigg::V1::SetPackagePricing::PricingModel::TiersMode::TaggedSymbol
              )
            GRADUATED =
              T.let(
                :GRADUATED,
                Stigg::V1::SetPackagePricing::PricingModel::TiersMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SetPackagePricing::PricingModel::TiersMode::TaggedSymbol
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
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration,
                  Stigg::Internal::AnyHash
                )
              end

            # Reset anchor (SubscriptionStart or specific day)
            sig do
              returns(
                Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
              )
            end
            attr_accessor :according_to

            # Weekly reset period configuration
            sig do
              params(
                according_to:
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Reset anchor (SubscriptionStart or specific day)
              according_to:
            )
            end

            sig do
              override.returns(
                {
                  according_to:
                    Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Reset anchor (SubscriptionStart or specific day)
            module AccordingTo
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIPTION_START =
                T.let(
                  :SubscriptionStart,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_SUNDAY =
                T.let(
                  :EverySunday,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_MONDAY =
                T.let(
                  :EveryMonday,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_TUESDAY =
                T.let(
                  :EveryTuesday,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_WEDNESDAY =
                T.let(
                  :EveryWednesday,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_THURSDAY =
                T.let(
                  :EveryThursday,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_FRIDAY =
                T.let(
                  :EveryFriday,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )
              EVERY_SATURDAY =
                T.let(
                  :EverySaturday,
                  Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
                  Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration,
                  Stigg::Internal::AnyHash
                )
              end

            # Reset anchor (SubscriptionStart)
            sig do
              returns(
                Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
              )
            end
            attr_accessor :according_to

            # Yearly reset period configuration
            sig do
              params(
                according_to:
                  Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Reset anchor (SubscriptionStart)
              according_to:
            )
            end

            sig do
              override.returns(
                {
                  according_to:
                    Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Reset anchor (SubscriptionStart)
            module AccordingTo
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::AccordingTo
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIPTION_START =
                T.let(
                  :SubscriptionStart,
                  Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SetPackagePricing::PricingModel::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
