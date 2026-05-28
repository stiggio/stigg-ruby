# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Plans#list_overage_charges
      class PlanListOverageChargesResponse < Stigg::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier of the charge
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_cadence
        #   The billing cadence (RECURRING or ONE_OFF)
        #
        #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::BillingCadence]
        required :billing_cadence,
                 enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::BillingCadence },
                 api_name: :billingCadence

        # @!attribute billing_model
        #   The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED, MINIMUM_SPEND)
        #
        #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::BillingModel]
        required :billing_model,
                 enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::BillingModel },
                 api_name: :billingModel

        # @!attribute billing_period
        #   The billing period (MONTHLY or ANNUALLY)
        #
        #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::BillingPeriod]
        required :billing_period,
                 enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::BillingPeriod },
                 api_name: :billingPeriod

        # @!attribute created_at
        #   Timestamp when the charge was created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute billing_country_code
        #   ISO country code for localized pricing, if any
        #
        #   @return [String, nil]
        optional :billing_country_code, String, api_name: :billingCountryCode, nil?: true

        # @!attribute billing_id
        #   Identifier in the external billing integration (e.g. Stripe price id), if any
        #
        #   @return [String, nil]
        optional :billing_id, String, api_name: :billingId, nil?: true

        # @!attribute block_size
        #   Block size for usage-based pricing
        #
        #   @return [Float, nil]
        optional :block_size, Float, api_name: :blockSize, nil?: true

        # @!attribute credit_grant_cadence
        #   When credits are granted (for credit-based pricing)
        #
        #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::CreditGrantCadence, nil]
        optional :credit_grant_cadence,
                 enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::CreditGrantCadence },
                 api_name: :creditGrantCadence,
                 nil?: true

        # @!attribute credit_rate
        #   Credit rate configuration for credit-based pricing
        #
        #   @return [Stigg::Models::V1::PlanListOverageChargesResponse::CreditRate, nil]
        optional :credit_rate,
                 -> { Stigg::Models::V1::PlanListOverageChargesResponse::CreditRate },
                 api_name: :creditRate,
                 nil?: true

        # @!attribute crm_id
        #   Identifier in the linked CRM, if any
        #
        #   @return [String, nil]
        optional :crm_id, String, api_name: :crmId, nil?: true

        # @!attribute crm_link_url
        #   Deep link to the charge in the linked CRM, if any
        #
        #   @return [String, nil]
        optional :crm_link_url, String, api_name: :crmLinkUrl, nil?: true

        # @!attribute feature_id
        #   The feature this charge meters, if metered
        #
        #   @return [String, nil]
        optional :feature_id, String, api_name: :featureId, nil?: true

        # @!attribute max_unit_quantity
        #   Maximum unit quantity that can be purchased
        #
        #   @return [Float, nil]
        optional :max_unit_quantity, Float, api_name: :maxUnitQuantity, nil?: true

        # @!attribute min_unit_quantity
        #   Minimum unit quantity that can be purchased
        #
        #   @return [Float, nil]
        optional :min_unit_quantity, Float, api_name: :minUnitQuantity, nil?: true

        # @!attribute price
        #   The flat price amount and currency, when applicable
        #
        #   @return [Stigg::Models::V1::PlanListOverageChargesResponse::Price, nil]
        optional :price, -> { Stigg::Models::V1::PlanListOverageChargesResponse::Price }, nil?: true

        # @!attribute tiers
        #   Tiered pricing rows when the charge is tiered
        #
        #   @return [Array<Stigg::Models::V1::PlanListOverageChargesResponse::Tier>, nil]
        optional :tiers,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::PlanListOverageChargesResponse::Tier] },
                 nil?: true

        # @!attribute tiers_mode
        #   Tiered pricing mode (VOLUME or GRADUATED) when the charge is tiered
        #
        #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::TiersMode, nil]
        optional :tiers_mode,
                 enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::TiersMode },
                 api_name: :tiersMode,
                 nil?: true

        # @!attribute top_up_custom_currency_id
        #   Custom currency identifier for top-up pricing, if any
        #
        #   @return [String, nil]
        optional :top_up_custom_currency_id, String, api_name: :topUpCustomCurrencyId, nil?: true

        # @!attribute used_in_subscriptions
        #   True if this charge is referenced by at least one subscription
        #
        #   @return [Boolean, nil]
        optional :used_in_subscriptions,
                 Stigg::Internal::Type::Boolean,
                 api_name: :usedInSubscriptions,
                 nil?: true

        # @!method initialize(id:, billing_cadence:, billing_model:, billing_period:, created_at:, billing_country_code: nil, billing_id: nil, block_size: nil, credit_grant_cadence: nil, credit_rate: nil, crm_id: nil, crm_link_url: nil, feature_id: nil, max_unit_quantity: nil, min_unit_quantity: nil, price: nil, tiers: nil, tiers_mode: nil, top_up_custom_currency_id: nil, used_in_subscriptions: nil)
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::PlanListOverageChargesResponse} for more details.
        #
        #   A single pricing row on a plan or addon. Each charge encodes one (billingPeriod,
        #   billingModel, billingCadence, billingCountryCode) combination. Plans and addons
        #   own many of these — one per currency / billing period / feature.
        #
        #   @param id [String] Unique identifier of the charge
        #
        #   @param billing_cadence [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::BillingCadence] The billing cadence (RECURRING or ONE_OFF)
        #
        #   @param billing_model [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::BillingModel] The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED, MINIMUM_SPEND)
        #
        #   @param billing_period [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::BillingPeriod] The billing period (MONTHLY or ANNUALLY)
        #
        #   @param created_at [Time] Timestamp when the charge was created
        #
        #   @param billing_country_code [String, nil] ISO country code for localized pricing, if any
        #
        #   @param billing_id [String, nil] Identifier in the external billing integration (e.g. Stripe price id), if any
        #
        #   @param block_size [Float, nil] Block size for usage-based pricing
        #
        #   @param credit_grant_cadence [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::CreditGrantCadence, nil] When credits are granted (for credit-based pricing)
        #
        #   @param credit_rate [Stigg::Models::V1::PlanListOverageChargesResponse::CreditRate, nil] Credit rate configuration for credit-based pricing
        #
        #   @param crm_id [String, nil] Identifier in the linked CRM, if any
        #
        #   @param crm_link_url [String, nil] Deep link to the charge in the linked CRM, if any
        #
        #   @param feature_id [String, nil] The feature this charge meters, if metered
        #
        #   @param max_unit_quantity [Float, nil] Maximum unit quantity that can be purchased
        #
        #   @param min_unit_quantity [Float, nil] Minimum unit quantity that can be purchased
        #
        #   @param price [Stigg::Models::V1::PlanListOverageChargesResponse::Price, nil] The flat price amount and currency, when applicable
        #
        #   @param tiers [Array<Stigg::Models::V1::PlanListOverageChargesResponse::Tier>, nil] Tiered pricing rows when the charge is tiered
        #
        #   @param tiers_mode [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::TiersMode, nil] Tiered pricing mode (VOLUME or GRADUATED) when the charge is tiered
        #
        #   @param top_up_custom_currency_id [String, nil] Custom currency identifier for top-up pricing, if any
        #
        #   @param used_in_subscriptions [Boolean, nil] True if this charge is referenced by at least one subscription

        # The billing cadence (RECURRING or ONE_OFF)
        #
        # @see Stigg::Models::V1::PlanListOverageChargesResponse#billing_cadence
        module BillingCadence
          extend Stigg::Internal::Type::Enum

          RECURRING = :RECURRING
          ONE_OFF = :ONE_OFF

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED, MINIMUM_SPEND)
        #
        # @see Stigg::Models::V1::PlanListOverageChargesResponse#billing_model
        module BillingModel
          extend Stigg::Internal::Type::Enum

          FLAT_FEE = :FLAT_FEE
          MINIMUM_SPEND = :MINIMUM_SPEND
          PER_UNIT = :PER_UNIT
          USAGE_BASED = :USAGE_BASED
          CREDIT_BASED = :CREDIT_BASED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The billing period (MONTHLY or ANNUALLY)
        #
        # @see Stigg::Models::V1::PlanListOverageChargesResponse#billing_period
        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          MONTHLY = :MONTHLY
          ANNUALLY = :ANNUALLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When credits are granted (for credit-based pricing)
        #
        # @see Stigg::Models::V1::PlanListOverageChargesResponse#credit_grant_cadence
        module CreditGrantCadence
          extend Stigg::Internal::Type::Enum

          BEGINNING_OF_BILLING_PERIOD = :BEGINNING_OF_BILLING_PERIOD
          MONTHLY = :MONTHLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Stigg::Models::V1::PlanListOverageChargesResponse#credit_rate
        class CreditRate < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   Credit rate amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute currency_id
          #   Custom currency identifier
          #
          #   @return [String]
          required :currency_id, String, api_name: :currencyId

          # @!attribute cost_formula
          #   Optional cost formula expression
          #
          #   @return [String, nil]
          optional :cost_formula, String, api_name: :costFormula, nil?: true

          # @!method initialize(amount:, currency_id:, cost_formula: nil)
          #   Credit rate configuration for credit-based pricing
          #
          #   @param amount [Float] Credit rate amount
          #
          #   @param currency_id [String] Custom currency identifier
          #
          #   @param cost_formula [String, nil] Optional cost formula expression
        end

        # @see Stigg::Models::V1::PlanListOverageChargesResponse#price
        class Price < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   The price amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute currency
          #   ISO 4217 currency code
          #
          #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::Price::Currency]
          required :currency, enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::Price::Currency }

          # @!method initialize(amount:, currency:)
          #   The flat price amount and currency, when applicable
          #
          #   @param amount [Float] The price amount
          #
          #   @param currency [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::Price::Currency] ISO 4217 currency code

          # ISO 4217 currency code
          #
          # @see Stigg::Models::V1::PlanListOverageChargesResponse::Price#currency
          module Currency
            extend Stigg::Internal::Type::Enum

            USD = :usd
            AED = :aed
            ALL = :all
            AMD = :amd
            ANG = :ang
            AUD = :aud
            AWG = :awg
            AZN = :azn
            BAM = :bam
            BBD = :bbd
            BDT = :bdt
            BGN = :bgn
            BIF = :bif
            BMD = :bmd
            BND = :bnd
            BSD = :bsd
            BWP = :bwp
            BYN = :byn
            BZD = :bzd
            BRL = :brl
            CAD = :cad
            CDF = :cdf
            CHF = :chf
            CNY = :cny
            CZK = :czk
            DKK = :dkk
            DOP = :dop
            DZD = :dzd
            EGP = :egp
            ETB = :etb
            EUR = :eur
            FJD = :fjd
            GBP = :gbp
            GEL = :gel
            GIP = :gip
            GMD = :gmd
            GYD = :gyd
            HKD = :hkd
            HRK = :hrk
            HTG = :htg
            IDR = :idr
            ILS = :ils
            INR = :inr
            ISK = :isk
            JMD = :jmd
            JPY = :jpy
            KES = :kes
            KGS = :kgs
            KHR = :khr
            KMF = :kmf
            KRW = :krw
            KYD = :kyd
            KZT = :kzt
            LBP = :lbp
            LKR = :lkr
            LRD = :lrd
            LSL = :lsl
            MAD = :mad
            MDL = :mdl
            MGA = :mga
            MKD = :mkd
            MMK = :mmk
            MNT = :mnt
            MOP = :mop
            MRO = :mro
            MVR = :mvr
            MWK = :mwk
            MXN = :mxn
            MYR = :myr
            MZN = :mzn
            NAD = :nad
            NGN = :ngn
            NOK = :nok
            NPR = :npr
            NZD = :nzd
            PGK = :pgk
            PHP = :php
            PKR = :pkr
            PLN = :pln
            QAR = :qar
            RON = :ron
            RSD = :rsd
            RUB = :rub
            RWF = :rwf
            SAR = :sar
            SBD = :sbd
            SCR = :scr
            SEK = :sek
            SGD = :sgd
            SLE = :sle
            SLL = :sll
            SOS = :sos
            SZL = :szl
            THB = :thb
            TJS = :tjs
            TOP = :top
            TRY = :try
            TTD = :ttd
            TZS = :tzs
            UAH = :uah
            UZS = :uzs
            VND = :vnd
            VUV = :vuv
            WST = :wst
            XAF = :xaf
            XCD = :xcd
            YER = :yer
            ZAR = :zar
            ZMW = :zmw
            CLP = :clp
            DJF = :djf
            GNF = :gnf
            UGX = :ugx
            PYG = :pyg
            XOF = :xof
            XPF = :xpf

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Tier < Stigg::Internal::Type::BaseModel
          # @!attribute flat_price
          #   Flat price for this tier
          #
          #   @return [Stigg::Models::V1::PlanListOverageChargesResponse::Tier::FlatPrice, nil]
          optional :flat_price,
                   -> { Stigg::Models::V1::PlanListOverageChargesResponse::Tier::FlatPrice },
                   api_name: :flatPrice,
                   nil?: true

          # @!attribute unit_price
          #   Per-unit price in this tier
          #
          #   @return [Stigg::Models::V1::PlanListOverageChargesResponse::Tier::UnitPrice, nil]
          optional :unit_price,
                   -> { Stigg::Models::V1::PlanListOverageChargesResponse::Tier::UnitPrice },
                   api_name: :unitPrice,
                   nil?: true

          # @!attribute up_to
          #   Upper bound of this tier (null for unlimited)
          #
          #   @return [Float, nil]
          optional :up_to, Float, api_name: :upTo, nil?: true

          # @!method initialize(flat_price: nil, unit_price: nil, up_to: nil)
          #   A single tier within a tiered charge
          #
          #   @param flat_price [Stigg::Models::V1::PlanListOverageChargesResponse::Tier::FlatPrice, nil] Flat price for this tier
          #
          #   @param unit_price [Stigg::Models::V1::PlanListOverageChargesResponse::Tier::UnitPrice, nil] Per-unit price in this tier
          #
          #   @param up_to [Float, nil] Upper bound of this tier (null for unlimited)

          # @see Stigg::Models::V1::PlanListOverageChargesResponse::Tier#flat_price
          class FlatPrice < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The price amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute currency
            #   ISO 4217 currency code
            #
            #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::Tier::FlatPrice::Currency]
            required :currency,
                     enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::Tier::FlatPrice::Currency }

            # @!method initialize(amount:, currency:)
            #   Flat price for this tier
            #
            #   @param amount [Float] The price amount
            #
            #   @param currency [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::Tier::FlatPrice::Currency] ISO 4217 currency code

            # ISO 4217 currency code
            #
            # @see Stigg::Models::V1::PlanListOverageChargesResponse::Tier::FlatPrice#currency
            module Currency
              extend Stigg::Internal::Type::Enum

              USD = :usd
              AED = :aed
              ALL = :all
              AMD = :amd
              ANG = :ang
              AUD = :aud
              AWG = :awg
              AZN = :azn
              BAM = :bam
              BBD = :bbd
              BDT = :bdt
              BGN = :bgn
              BIF = :bif
              BMD = :bmd
              BND = :bnd
              BSD = :bsd
              BWP = :bwp
              BYN = :byn
              BZD = :bzd
              BRL = :brl
              CAD = :cad
              CDF = :cdf
              CHF = :chf
              CNY = :cny
              CZK = :czk
              DKK = :dkk
              DOP = :dop
              DZD = :dzd
              EGP = :egp
              ETB = :etb
              EUR = :eur
              FJD = :fjd
              GBP = :gbp
              GEL = :gel
              GIP = :gip
              GMD = :gmd
              GYD = :gyd
              HKD = :hkd
              HRK = :hrk
              HTG = :htg
              IDR = :idr
              ILS = :ils
              INR = :inr
              ISK = :isk
              JMD = :jmd
              JPY = :jpy
              KES = :kes
              KGS = :kgs
              KHR = :khr
              KMF = :kmf
              KRW = :krw
              KYD = :kyd
              KZT = :kzt
              LBP = :lbp
              LKR = :lkr
              LRD = :lrd
              LSL = :lsl
              MAD = :mad
              MDL = :mdl
              MGA = :mga
              MKD = :mkd
              MMK = :mmk
              MNT = :mnt
              MOP = :mop
              MRO = :mro
              MVR = :mvr
              MWK = :mwk
              MXN = :mxn
              MYR = :myr
              MZN = :mzn
              NAD = :nad
              NGN = :ngn
              NOK = :nok
              NPR = :npr
              NZD = :nzd
              PGK = :pgk
              PHP = :php
              PKR = :pkr
              PLN = :pln
              QAR = :qar
              RON = :ron
              RSD = :rsd
              RUB = :rub
              RWF = :rwf
              SAR = :sar
              SBD = :sbd
              SCR = :scr
              SEK = :sek
              SGD = :sgd
              SLE = :sle
              SLL = :sll
              SOS = :sos
              SZL = :szl
              THB = :thb
              TJS = :tjs
              TOP = :top
              TRY = :try
              TTD = :ttd
              TZS = :tzs
              UAH = :uah
              UZS = :uzs
              VND = :vnd
              VUV = :vuv
              WST = :wst
              XAF = :xaf
              XCD = :xcd
              YER = :yer
              ZAR = :zar
              ZMW = :zmw
              CLP = :clp
              DJF = :djf
              GNF = :gnf
              UGX = :ugx
              PYG = :pyg
              XOF = :xof
              XPF = :xpf

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Stigg::Models::V1::PlanListOverageChargesResponse::Tier#unit_price
          class UnitPrice < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The price amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute currency
            #   ISO 4217 currency code
            #
            #   @return [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::Tier::UnitPrice::Currency]
            required :currency,
                     enum: -> { Stigg::Models::V1::PlanListOverageChargesResponse::Tier::UnitPrice::Currency }

            # @!method initialize(amount:, currency:)
            #   Per-unit price in this tier
            #
            #   @param amount [Float] The price amount
            #
            #   @param currency [Symbol, Stigg::Models::V1::PlanListOverageChargesResponse::Tier::UnitPrice::Currency] ISO 4217 currency code

            # ISO 4217 currency code
            #
            # @see Stigg::Models::V1::PlanListOverageChargesResponse::Tier::UnitPrice#currency
            module Currency
              extend Stigg::Internal::Type::Enum

              USD = :usd
              AED = :aed
              ALL = :all
              AMD = :amd
              ANG = :ang
              AUD = :aud
              AWG = :awg
              AZN = :azn
              BAM = :bam
              BBD = :bbd
              BDT = :bdt
              BGN = :bgn
              BIF = :bif
              BMD = :bmd
              BND = :bnd
              BSD = :bsd
              BWP = :bwp
              BYN = :byn
              BZD = :bzd
              BRL = :brl
              CAD = :cad
              CDF = :cdf
              CHF = :chf
              CNY = :cny
              CZK = :czk
              DKK = :dkk
              DOP = :dop
              DZD = :dzd
              EGP = :egp
              ETB = :etb
              EUR = :eur
              FJD = :fjd
              GBP = :gbp
              GEL = :gel
              GIP = :gip
              GMD = :gmd
              GYD = :gyd
              HKD = :hkd
              HRK = :hrk
              HTG = :htg
              IDR = :idr
              ILS = :ils
              INR = :inr
              ISK = :isk
              JMD = :jmd
              JPY = :jpy
              KES = :kes
              KGS = :kgs
              KHR = :khr
              KMF = :kmf
              KRW = :krw
              KYD = :kyd
              KZT = :kzt
              LBP = :lbp
              LKR = :lkr
              LRD = :lrd
              LSL = :lsl
              MAD = :mad
              MDL = :mdl
              MGA = :mga
              MKD = :mkd
              MMK = :mmk
              MNT = :mnt
              MOP = :mop
              MRO = :mro
              MVR = :mvr
              MWK = :mwk
              MXN = :mxn
              MYR = :myr
              MZN = :mzn
              NAD = :nad
              NGN = :ngn
              NOK = :nok
              NPR = :npr
              NZD = :nzd
              PGK = :pgk
              PHP = :php
              PKR = :pkr
              PLN = :pln
              QAR = :qar
              RON = :ron
              RSD = :rsd
              RUB = :rub
              RWF = :rwf
              SAR = :sar
              SBD = :sbd
              SCR = :scr
              SEK = :sek
              SGD = :sgd
              SLE = :sle
              SLL = :sll
              SOS = :sos
              SZL = :szl
              THB = :thb
              TJS = :tjs
              TOP = :top
              TRY = :try
              TTD = :ttd
              TZS = :tzs
              UAH = :uah
              UZS = :uzs
              VND = :vnd
              VUV = :vuv
              WST = :wst
              XAF = :xaf
              XCD = :xcd
              YER = :yer
              ZAR = :zar
              ZMW = :zmw
              CLP = :clp
              DJF = :djf
              GNF = :gnf
              UGX = :ugx
              PYG = :pyg
              XOF = :xof
              XPF = :xpf

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # Tiered pricing mode (VOLUME or GRADUATED) when the charge is tiered
        #
        # @see Stigg::Models::V1::PlanListOverageChargesResponse#tiers_mode
        module TiersMode
          extend Stigg::Internal::Type::Enum

          VOLUME = :VOLUME
          GRADUATED = :GRADUATED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
