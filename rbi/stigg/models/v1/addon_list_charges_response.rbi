# typed: strong

module Stigg
  module Models
    module V1
      class AddonListChargesResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::AddonListChargesResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Unique identifier of the charge
        sig { returns(String) }
        attr_accessor :id

        # The billing cadence (RECURRING or ONE_OFF)
        sig do
          returns(
            Stigg::Models::V1::AddonListChargesResponse::BillingCadence::TaggedSymbol
          )
        end
        attr_accessor :billing_cadence

        # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED, MINIMUM_SPEND)
        sig do
          returns(
            Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol
          )
        end
        attr_accessor :billing_model

        # The billing period (MONTHLY or ANNUALLY)
        sig do
          returns(
            Stigg::Models::V1::AddonListChargesResponse::BillingPeriod::TaggedSymbol
          )
        end
        attr_accessor :billing_period

        # Timestamp when the charge was created
        sig { returns(Time) }
        attr_accessor :created_at

        # ISO country code for localized pricing, if any
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_country_code

        # Identifier in the external billing integration (e.g. Stripe price id), if any
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_id

        # Block size for usage-based pricing
        sig { returns(T.nilable(Float)) }
        attr_accessor :block_size

        # When credits are granted (for credit-based pricing)
        sig do
          returns(
            T.nilable(
              Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence::TaggedSymbol
            )
          )
        end
        attr_accessor :credit_grant_cadence

        # Credit rate configuration for credit-based pricing
        sig do
          returns(
            T.nilable(Stigg::Models::V1::AddonListChargesResponse::CreditRate)
          )
        end
        attr_reader :credit_rate

        sig do
          params(
            credit_rate:
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::CreditRate::OrHash
              )
          ).void
        end
        attr_writer :credit_rate

        # Identifier in the linked CRM, if any
        sig { returns(T.nilable(String)) }
        attr_accessor :crm_id

        # Deep link to the charge in the linked CRM, if any
        sig { returns(T.nilable(String)) }
        attr_accessor :crm_link_url

        # The feature this charge meters, if metered
        sig { returns(T.nilable(String)) }
        attr_accessor :feature_id

        # Maximum unit quantity that can be purchased
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_unit_quantity

        # Minimum unit quantity that can be purchased
        sig { returns(T.nilable(Float)) }
        attr_accessor :min_unit_quantity

        # The flat price amount and currency, when applicable
        sig do
          returns(T.nilable(Stigg::Models::V1::AddonListChargesResponse::Price))
        end
        attr_reader :price

        sig do
          params(
            price:
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::Price::OrHash
              )
          ).void
        end
        attr_writer :price

        # Tiered pricing rows when the charge is tiered
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::Models::V1::AddonListChargesResponse::Tier]
            )
          )
        end
        attr_accessor :tiers

        # Tiered pricing mode (VOLUME or GRADUATED) when the charge is tiered
        sig do
          returns(
            T.nilable(
              Stigg::Models::V1::AddonListChargesResponse::TiersMode::TaggedSymbol
            )
          )
        end
        attr_accessor :tiers_mode

        # Custom currency identifier for top-up pricing, if any
        sig { returns(T.nilable(String)) }
        attr_accessor :top_up_custom_currency_id

        # True if this charge is referenced by at least one subscription
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :used_in_subscriptions

        # A single pricing row on a plan or addon. Each charge encodes one (billingPeriod,
        # billingModel, billingCadence, billingCountryCode) combination. Plans and addons
        # own many of these — one per currency / billing period / feature.
        sig do
          params(
            id: String,
            billing_cadence:
              Stigg::Models::V1::AddonListChargesResponse::BillingCadence::OrSymbol,
            billing_model:
              Stigg::Models::V1::AddonListChargesResponse::BillingModel::OrSymbol,
            billing_period:
              Stigg::Models::V1::AddonListChargesResponse::BillingPeriod::OrSymbol,
            created_at: Time,
            billing_country_code: T.nilable(String),
            billing_id: T.nilable(String),
            block_size: T.nilable(Float),
            credit_grant_cadence:
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence::OrSymbol
              ),
            credit_rate:
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::CreditRate::OrHash
              ),
            crm_id: T.nilable(String),
            crm_link_url: T.nilable(String),
            feature_id: T.nilable(String),
            max_unit_quantity: T.nilable(Float),
            min_unit_quantity: T.nilable(Float),
            price:
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::Price::OrHash
              ),
            tiers:
              T.nilable(
                T::Array[
                  Stigg::Models::V1::AddonListChargesResponse::Tier::OrHash
                ]
              ),
            tiers_mode:
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::TiersMode::OrSymbol
              ),
            top_up_custom_currency_id: T.nilable(String),
            used_in_subscriptions: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier of the charge
          id:,
          # The billing cadence (RECURRING or ONE_OFF)
          billing_cadence:,
          # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED, MINIMUM_SPEND)
          billing_model:,
          # The billing period (MONTHLY or ANNUALLY)
          billing_period:,
          # Timestamp when the charge was created
          created_at:,
          # ISO country code for localized pricing, if any
          billing_country_code: nil,
          # Identifier in the external billing integration (e.g. Stripe price id), if any
          billing_id: nil,
          # Block size for usage-based pricing
          block_size: nil,
          # When credits are granted (for credit-based pricing)
          credit_grant_cadence: nil,
          # Credit rate configuration for credit-based pricing
          credit_rate: nil,
          # Identifier in the linked CRM, if any
          crm_id: nil,
          # Deep link to the charge in the linked CRM, if any
          crm_link_url: nil,
          # The feature this charge meters, if metered
          feature_id: nil,
          # Maximum unit quantity that can be purchased
          max_unit_quantity: nil,
          # Minimum unit quantity that can be purchased
          min_unit_quantity: nil,
          # The flat price amount and currency, when applicable
          price: nil,
          # Tiered pricing rows when the charge is tiered
          tiers: nil,
          # Tiered pricing mode (VOLUME or GRADUATED) when the charge is tiered
          tiers_mode: nil,
          # Custom currency identifier for top-up pricing, if any
          top_up_custom_currency_id: nil,
          # True if this charge is referenced by at least one subscription
          used_in_subscriptions: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_cadence:
                Stigg::Models::V1::AddonListChargesResponse::BillingCadence::TaggedSymbol,
              billing_model:
                Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol,
              billing_period:
                Stigg::Models::V1::AddonListChargesResponse::BillingPeriod::TaggedSymbol,
              created_at: Time,
              billing_country_code: T.nilable(String),
              billing_id: T.nilable(String),
              block_size: T.nilable(Float),
              credit_grant_cadence:
                T.nilable(
                  Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence::TaggedSymbol
                ),
              credit_rate:
                T.nilable(
                  Stigg::Models::V1::AddonListChargesResponse::CreditRate
                ),
              crm_id: T.nilable(String),
              crm_link_url: T.nilable(String),
              feature_id: T.nilable(String),
              max_unit_quantity: T.nilable(Float),
              min_unit_quantity: T.nilable(Float),
              price:
                T.nilable(Stigg::Models::V1::AddonListChargesResponse::Price),
              tiers:
                T.nilable(
                  T::Array[Stigg::Models::V1::AddonListChargesResponse::Tier]
                ),
              tiers_mode:
                T.nilable(
                  Stigg::Models::V1::AddonListChargesResponse::TiersMode::TaggedSymbol
                ),
              top_up_custom_currency_id: T.nilable(String),
              used_in_subscriptions: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        # The billing cadence (RECURRING or ONE_OFF)
        module BillingCadence
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::AddonListChargesResponse::BillingCadence
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECURRING =
            T.let(
              :RECURRING,
              Stigg::Models::V1::AddonListChargesResponse::BillingCadence::TaggedSymbol
            )
          ONE_OFF =
            T.let(
              :ONE_OFF,
              Stigg::Models::V1::AddonListChargesResponse::BillingCadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::AddonListChargesResponse::BillingCadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED, MINIMUM_SPEND)
        module BillingModel
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::AddonListChargesResponse::BillingModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FLAT_FEE =
            T.let(
              :FLAT_FEE,
              Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol
            )
          MINIMUM_SPEND =
            T.let(
              :MINIMUM_SPEND,
              Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol
            )
          PER_UNIT =
            T.let(
              :PER_UNIT,
              Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol
            )
          USAGE_BASED =
            T.let(
              :USAGE_BASED,
              Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol
            )
          CREDIT_BASED =
            T.let(
              :CREDIT_BASED,
              Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::AddonListChargesResponse::BillingModel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The billing period (MONTHLY or ANNUALLY)
        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::AddonListChargesResponse::BillingPeriod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::Models::V1::AddonListChargesResponse::BillingPeriod::TaggedSymbol
            )
          ANNUALLY =
            T.let(
              :ANNUALLY,
              Stigg::Models::V1::AddonListChargesResponse::BillingPeriod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::AddonListChargesResponse::BillingPeriod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # When credits are granted (for credit-based pricing)
        module CreditGrantCadence
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEGINNING_OF_BILLING_PERIOD =
            T.let(
              :BEGINNING_OF_BILLING_PERIOD,
              Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::AddonListChargesResponse::CreditGrantCadence::TaggedSymbol
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
                Stigg::Models::V1::AddonListChargesResponse::CreditRate,
                Stigg::Internal::AnyHash
              )
            end

          # Credit rate amount
          sig { returns(Float) }
          attr_accessor :amount

          # Custom currency identifier
          sig { returns(String) }
          attr_accessor :currency_id

          # Optional cost formula expression
          sig { returns(T.nilable(String)) }
          attr_accessor :cost_formula

          # Credit rate configuration for credit-based pricing
          sig do
            params(
              amount: Float,
              currency_id: String,
              cost_formula: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Credit rate amount
            amount:,
            # Custom currency identifier
            currency_id:,
            # Optional cost formula expression
            cost_formula: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                currency_id: String,
                cost_formula: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Price < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::AddonListChargesResponse::Price,
                Stigg::Internal::AnyHash
              )
            end

          # The price amount
          sig { returns(Float) }
          attr_accessor :amount

          # ISO 4217 currency code
          sig do
            returns(
              Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
            )
          end
          attr_accessor :currency

          # The flat price amount and currency, when applicable
          sig do
            params(
              amount: Float,
              currency:
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The price amount
            amount:,
            # ISO 4217 currency code
            currency:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                currency:
                  Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # ISO 4217 currency code
          module Currency
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::AddonListChargesResponse::Price::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            ANG =
              T.let(
                :ang,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            AWG =
              T.let(
                :awg,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            AZN =
              T.let(
                :azn,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BBD =
              T.let(
                :bbd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BDT =
              T.let(
                :bdt,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BIF =
              T.let(
                :bif,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BMD =
              T.let(
                :bmd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BND =
              T.let(
                :bnd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BWP =
              T.let(
                :bwp,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BYN =
              T.let(
                :byn,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BZD =
              T.let(
                :bzd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            CDF =
              T.let(
                :cdf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            CNY =
              T.let(
                :cny,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            FJD =
              T.let(
                :fjd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            GEL =
              T.let(
                :gel,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            GIP =
              T.let(
                :gip,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            HRK =
              T.let(
                :hrk,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            HTG =
              T.let(
                :htg,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            ISK =
              T.let(
                :isk,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            KGS =
              T.let(
                :kgs,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            KMF =
              T.let(
                :kmf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            KYD =
              T.let(
                :kyd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            KZT =
              T.let(
                :kzt,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            LBP =
              T.let(
                :lbp,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            LRD =
              T.let(
                :lrd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            LSL =
              T.let(
                :lsl,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MMK =
              T.let(
                :mmk,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MRO =
              T.let(
                :mro,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MVR =
              T.let(
                :mvr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MWK =
              T.let(
                :mwk,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            NPR =
              T.let(
                :npr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            PGK =
              T.let(
                :pgk,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SBD =
              T.let(
                :sbd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SCR =
              T.let(
                :scr,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SLE =
              T.let(
                :sle,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SLL =
              T.let(
                :sll,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SOS =
              T.let(
                :sos,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            SZL =
              T.let(
                :szl,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            TJS =
              T.let(
                :tjs,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            TOP =
              T.let(
                :top,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            UAH =
              T.let(
                :uah,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            VUV =
              T.let(
                :vuv,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            WST =
              T.let(
                :wst,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            XAF =
              T.let(
                :xaf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            YER =
              T.let(
                :yer,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            ZMW =
              T.let(
                :zmw,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            DJF =
              T.let(
                :djf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            GNF =
              T.let(
                :gnf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            UGX =
              T.let(
                :ugx,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )
            XPF =
              T.let(
                :xpf,
                Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::AddonListChargesResponse::Price::Currency::TaggedSymbol
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
                Stigg::Models::V1::AddonListChargesResponse::Tier,
                Stigg::Internal::AnyHash
              )
            end

          # Flat price for this tier
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice
              )
            )
          end
          attr_reader :flat_price

          sig do
            params(
              flat_price:
                T.nilable(
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::OrHash
                )
            ).void
          end
          attr_writer :flat_price

          # Per-unit price in this tier
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice
              )
            )
          end
          attr_reader :unit_price

          sig do
            params(
              unit_price:
                T.nilable(
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::OrHash
                )
            ).void
          end
          attr_writer :unit_price

          # Upper bound of this tier (null for unlimited)
          sig { returns(T.nilable(Float)) }
          attr_accessor :up_to

          # A single tier within a tiered charge
          sig do
            params(
              flat_price:
                T.nilable(
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::OrHash
                ),
              unit_price:
                T.nilable(
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::OrHash
                ),
              up_to: T.nilable(Float)
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
                  T.nilable(
                    Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice
                  ),
                unit_price:
                  T.nilable(
                    Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice
                  ),
                up_to: T.nilable(Float)
              }
            )
          end
          def to_hash
          end

          class FlatPrice < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice,
                  Stigg::Internal::AnyHash
                )
              end

            # The price amount
            sig { returns(Float) }
            attr_accessor :amount

            # ISO 4217 currency code
            sig do
              returns(
                Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
              )
            end
            attr_accessor :currency

            # Flat price for this tier
            sig do
              params(
                amount: Float,
                currency:
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price amount
              amount:,
              # ISO 4217 currency code
              currency:
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency:
                    Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # ISO 4217 currency code
            module Currency
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::AddonListChargesResponse::Tier::FlatPrice::Currency::TaggedSymbol
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
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice,
                  Stigg::Internal::AnyHash
                )
              end

            # The price amount
            sig { returns(Float) }
            attr_accessor :amount

            # ISO 4217 currency code
            sig do
              returns(
                Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
              )
            end
            attr_accessor :currency

            # Per-unit price in this tier
            sig do
              params(
                amount: Float,
                currency:
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price amount
              amount:,
              # ISO 4217 currency code
              currency:
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency:
                    Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # ISO 4217 currency code
            module Currency
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::AddonListChargesResponse::Tier::UnitPrice::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        # Tiered pricing mode (VOLUME or GRADUATED) when the charge is tiered
        module TiersMode
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::AddonListChargesResponse::TiersMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VOLUME =
            T.let(
              :VOLUME,
              Stigg::Models::V1::AddonListChargesResponse::TiersMode::TaggedSymbol
            )
          GRADUATED =
            T.let(
              :GRADUATED,
              Stigg::Models::V1::AddonListChargesResponse::TiersMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::AddonListChargesResponse::TiersMode::TaggedSymbol
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
