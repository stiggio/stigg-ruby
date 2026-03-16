# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Addons#update
      class AddonUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_id
        #   The unique identifier for the entity in the billing provider
        #
        #   @return [String, nil]
        optional :billing_id, String, api_name: :billingId, nil?: true

        # @!attribute charges
        #   Pricing configuration to set on the addon draft
        #
        #   @return [Stigg::Models::V1::AddonUpdateParams::Charges, nil]
        optional :charges, -> { Stigg::V1::AddonUpdateParams::Charges }

        # @!attribute dependencies
        #   List of addons the addon is dependant on
        #
        #   @return [Array<String>, nil]
        optional :dependencies, Stigg::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute description
        #   The description of the package
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute display_name
        #   The display name of the package
        #
        #   @return [String, nil]
        optional :display_name, String, api_name: :displayName

        # @!attribute max_quantity
        #   The maximum quantity of this addon that can be added to a subscription
        #
        #   @return [Integer, nil]
        optional :max_quantity, Integer, api_name: :maxQuantity, nil?: true

        # @!attribute metadata
        #   Metadata associated with the entity
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute status
        #   The status of the package
        #
        #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Status, nil]
        optional :status, enum: -> { Stigg::V1::AddonUpdateParams::Status }

        # @!method initialize(id:, billing_id: nil, charges: nil, dependencies: nil, description: nil, display_name: nil, max_quantity: nil, metadata: nil, status: nil, request_options: {})
        #   @param id [String]
        #
        #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
        #
        #   @param charges [Stigg::Models::V1::AddonUpdateParams::Charges] Pricing configuration to set on the addon draft
        #
        #   @param dependencies [Array<String>, nil] List of addons the addon is dependant on
        #
        #   @param description [String, nil] The description of the package
        #
        #   @param display_name [String] The display name of the package
        #
        #   @param max_quantity [Integer, nil] The maximum quantity of this addon that can be added to a subscription
        #
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
        #
        #   @param status [Symbol, Stigg::Models::V1::AddonUpdateParams::Status] The status of the package
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Charges < Stigg::Internal::Type::BaseModel
          # @!attribute pricing_type
          #   The pricing type (FREE, PAID, or CUSTOM)
          #
          #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingType]
          required :pricing_type,
                   enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingType },
                   api_name: :pricingType

          # @!attribute billing_id
          #   Deprecated: billing integration ID
          #
          #   @return [String, nil]
          optional :billing_id, String, api_name: :billingId

          # @!attribute minimum_spend
          #   Minimum spend configuration per billing period
          #
          #   @return [Array<Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend>, nil]
          optional :minimum_spend,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::AddonUpdateParams::Charges::MinimumSpend] },
                   api_name: :minimumSpend,
                   nil?: true

          # @!attribute overage_billing_period
          #   When overage charges are billed
          #
          #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OverageBillingPeriod, nil]
          optional :overage_billing_period,
                   enum: -> { Stigg::V1::AddonUpdateParams::Charges::OverageBillingPeriod },
                   api_name: :overageBillingPeriod

          # @!attribute overage_pricing_models
          #   Array of overage pricing model configurations
          #
          #   @return [Array<Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel>, nil]
          optional :overage_pricing_models,
                   -> {
                     Stigg::Internal::Type::ArrayOf[Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel]
                   },
                   api_name: :overagePricingModels

          # @!attribute pricing_models
          #   Array of pricing model configurations
          #
          #   @return [Array<Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel>, nil]
          optional :pricing_models,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::AddonUpdateParams::Charges::PricingModel] },
                   api_name: :pricingModels

          # @!method initialize(pricing_type:, billing_id: nil, minimum_spend: nil, overage_billing_period: nil, overage_pricing_models: nil, pricing_models: nil)
          #   Pricing configuration to set on the addon draft
          #
          #   @param pricing_type [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingType] The pricing type (FREE, PAID, or CUSTOM)
          #
          #   @param billing_id [String] Deprecated: billing integration ID
          #
          #   @param minimum_spend [Array<Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend>, nil] Minimum spend configuration per billing period
          #
          #   @param overage_billing_period [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OverageBillingPeriod] When overage charges are billed
          #
          #   @param overage_pricing_models [Array<Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel>] Array of overage pricing model configurations
          #
          #   @param pricing_models [Array<Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel>] Array of pricing model configurations

          # The pricing type (FREE, PAID, or CUSTOM)
          #
          # @see Stigg::Models::V1::AddonUpdateParams::Charges#pricing_type
          module PricingType
            extend Stigg::Internal::Type::Enum

            FREE = :FREE
            PAID = :PAID
            CUSTOM = :CUSTOM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class MinimumSpend < Stigg::Internal::Type::BaseModel
            # @!attribute billing_period
            #   The billing period
            #
            #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend::BillingPeriod]
            required :billing_period,
                     enum: -> { Stigg::V1::AddonUpdateParams::Charges::MinimumSpend::BillingPeriod },
                     api_name: :billingPeriod

            # @!attribute minimum
            #   The minimum spend amount
            #
            #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend::Minimum]
            required :minimum, -> { Stigg::V1::AddonUpdateParams::Charges::MinimumSpend::Minimum }

            # @!method initialize(billing_period:, minimum:)
            #   Minimum spend configuration for a billing period.
            #
            #   @param billing_period [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend::BillingPeriod] The billing period
            #
            #   @param minimum [Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend::Minimum] The minimum spend amount

            # The billing period
            #
            # @see Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend#billing_period
            module BillingPeriod
              extend Stigg::Internal::Type::Enum

              MONTHLY = :MONTHLY
              ANNUALLY = :ANNUALLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend#minimum
            class Minimum < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   The price currency
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend::Minimum::Currency, nil]
              optional :currency, enum: -> { Stigg::V1::AddonUpdateParams::Charges::MinimumSpend::Minimum::Currency }

              # @!method initialize(amount:, currency: nil)
              #   The minimum spend amount
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend::Minimum::Currency] The price currency

              # The price currency
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::MinimumSpend::Minimum#currency
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

          # When overage charges are billed
          #
          # @see Stigg::Models::V1::AddonUpdateParams::Charges#overage_billing_period
          module OverageBillingPeriod
            extend Stigg::Internal::Type::Enum

            ON_SUBSCRIPTION_RENEWAL = :ON_SUBSCRIPTION_RENEWAL
            MONTHLY = :MONTHLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class OveragePricingModel < Stigg::Internal::Type::BaseModel
            # @!attribute billing_model
            #   The billing model for overages
            #
            #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::BillingModel]
            required :billing_model,
                     enum: -> { Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::BillingModel },
                     api_name: :billingModel

            # @!attribute price_periods
            #   Price periods for overage pricing
            #
            #   @return [Array<Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod>]
            required :price_periods,
                     -> {
                       Stigg::Internal::Type::ArrayOf[Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod]
                     },
                     api_name: :pricePeriods

            # @!attribute billing_cadence
            #   The billing cadence for overages
            #
            #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::BillingCadence, nil]
            optional :billing_cadence,
                     enum: -> { Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::BillingCadence },
                     api_name: :billingCadence

            # @!attribute entitlement
            #   Entitlement configuration for the overage feature
            #
            #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement, nil]
            optional :entitlement, -> { Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement }

            # @!attribute feature_id
            #   The feature ID for overage pricing
            #
            #   @return [String, nil]
            optional :feature_id, String, api_name: :featureId

            # @!attribute top_up_custom_currency_id
            #   Custom currency ID for overage top-up
            #
            #   @return [String, nil]
            optional :top_up_custom_currency_id, String, api_name: :topUpCustomCurrencyId

            # @!method initialize(billing_model:, price_periods:, billing_cadence: nil, entitlement: nil, feature_id: nil, top_up_custom_currency_id: nil)
            #   Overage pricing model configuration.
            #
            #   @param billing_model [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::BillingModel] The billing model for overages
            #
            #   @param price_periods [Array<Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod>] Price periods for overage pricing
            #
            #   @param billing_cadence [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::BillingCadence] The billing cadence for overages
            #
            #   @param entitlement [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement] Entitlement configuration for the overage feature
            #
            #   @param feature_id [String] The feature ID for overage pricing
            #
            #   @param top_up_custom_currency_id [String] Custom currency ID for overage top-up

            # The billing model for overages
            #
            # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel#billing_model
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

            class PricePeriod < Stigg::Internal::Type::BaseModel
              # @!attribute billing_period
              #   The billing period (MONTHLY or ANNUALLY)
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::BillingPeriod]
              required :billing_period,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::BillingPeriod
                       },
                       api_name: :billingPeriod

              # @!attribute billing_country_code
              #   ISO country code for localized pricing
              #
              #   @return [String, nil]
              optional :billing_country_code, String, api_name: :billingCountryCode

              # @!attribute block_size
              #   Block size for usage-based pricing
              #
              #   @return [Float, nil]
              optional :block_size, Float, api_name: :blockSize

              # @!attribute credit_grant_cadence
              #   When credits are granted
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::CreditGrantCadence, nil]
              optional :credit_grant_cadence,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::CreditGrantCadence
                       },
                       api_name: :creditGrantCadence

              # @!attribute credit_rate
              #   Credit rate configuration for credit-based pricing
              #
              #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::CreditRate, nil]
              optional :credit_rate,
                       -> {
                         Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::CreditRate
                       },
                       api_name: :creditRate

              # @!attribute price
              #   The price amount and currency
              #
              #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Price, nil]
              optional :price, -> { Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Price }

              # @!attribute tiers
              #   Tiered pricing configuration
              #
              #   @return [Array<Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier>, nil]
              optional :tiers,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier] }

              # @!method initialize(billing_period:, billing_country_code: nil, block_size: nil, credit_grant_cadence: nil, credit_rate: nil, price: nil, tiers: nil)
              #   Price configuration for a specific billing period.
              #
              #   @param billing_period [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::BillingPeriod] The billing period (MONTHLY or ANNUALLY)
              #
              #   @param billing_country_code [String] ISO country code for localized pricing
              #
              #   @param block_size [Float] Block size for usage-based pricing
              #
              #   @param credit_grant_cadence [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::CreditGrantCadence] When credits are granted
              #
              #   @param credit_rate [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::CreditRate] Credit rate configuration for credit-based pricing
              #
              #   @param price [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Price] The price amount and currency
              #
              #   @param tiers [Array<Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier>] Tiered pricing configuration

              # The billing period (MONTHLY or ANNUALLY)
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod#billing_period
              module BillingPeriod
                extend Stigg::Internal::Type::Enum

                MONTHLY = :MONTHLY
                ANNUALLY = :ANNUALLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # When credits are granted
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod#credit_grant_cadence
              module CreditGrantCadence
                extend Stigg::Internal::Type::Enum

                BEGINNING_OF_BILLING_PERIOD = :BEGINNING_OF_BILLING_PERIOD
                MONTHLY = :MONTHLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod#credit_rate
              class CreditRate < Stigg::Internal::Type::BaseModel
                # @!attribute amount
                #   The credit rate amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute currency_id
                #   The custom currency ID
                #
                #   @return [String]
                required :currency_id, String, api_name: :currencyId

                # @!attribute cost_formula
                #   Optional cost formula expression
                #
                #   @return [String, nil]
                optional :cost_formula, String, api_name: :costFormula

                # @!method initialize(amount:, currency_id:, cost_formula: nil)
                #   Credit rate configuration for credit-based pricing
                #
                #   @param amount [Float] The credit rate amount
                #
                #   @param currency_id [String] The custom currency ID
                #
                #   @param cost_formula [String] Optional cost formula expression
              end

              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod#price
              class Price < Stigg::Internal::Type::BaseModel
                # @!attribute amount
                #   The price amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute currency
                #   The price currency
                #
                #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Price::Currency, nil]
                optional :currency,
                         enum: -> { Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Price::Currency }

                # @!method initialize(amount:, currency: nil)
                #   The price amount and currency
                #
                #   @param amount [Float] The price amount
                #
                #   @param currency [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Price::Currency] The price currency

                # The price currency
                #
                # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Price#currency
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
                #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::FlatPrice, nil]
                optional :flat_price,
                         -> {
                           Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::FlatPrice
                         },
                         api_name: :flatPrice

                # @!attribute unit_price
                #   Per-unit price in this tier
                #
                #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::UnitPrice, nil]
                optional :unit_price,
                         -> {
                           Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::UnitPrice
                         },
                         api_name: :unitPrice

                # @!attribute up_to
                #   Upper bound of this tier (null for unlimited)
                #
                #   @return [Float, nil]
                optional :up_to, Float, api_name: :upTo

                # @!method initialize(flat_price: nil, unit_price: nil, up_to: nil)
                #   A tier in tiered pricing.
                #
                #   @param flat_price [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::FlatPrice] Flat price for this tier
                #
                #   @param unit_price [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::UnitPrice] Per-unit price in this tier
                #
                #   @param up_to [Float] Upper bound of this tier (null for unlimited)

                # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier#flat_price
                class FlatPrice < Stigg::Internal::Type::BaseModel
                  # @!attribute amount
                  #   The price amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute currency
                  #   The price currency
                  #
                  #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency, nil]
                  optional :currency,
                           enum: -> { Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency }

                  # @!method initialize(amount:, currency: nil)
                  #   Flat price for this tier
                  #
                  #   @param amount [Float] The price amount
                  #
                  #   @param currency [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::FlatPrice::Currency] The price currency

                  # The price currency
                  #
                  # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::FlatPrice#currency
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

                # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier#unit_price
                class UnitPrice < Stigg::Internal::Type::BaseModel
                  # @!attribute amount
                  #   The price amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute currency
                  #   The price currency
                  #
                  #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency, nil]
                  optional :currency,
                           enum: -> { Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency }

                  # @!method initialize(amount:, currency: nil)
                  #   Per-unit price in this tier
                  #
                  #   @param amount [Float] The price amount
                  #
                  #   @param currency [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::UnitPrice::Currency] The price currency

                  # The price currency
                  #
                  # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::PricePeriod::Tier::UnitPrice#currency
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
            end

            # The billing cadence for overages
            #
            # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel#billing_cadence
            module BillingCadence
              extend Stigg::Internal::Type::Enum

              RECURRING = :RECURRING
              ONE_OFF = :ONE_OFF

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel#entitlement
            class Entitlement < Stigg::Internal::Type::BaseModel
              # @!attribute feature_id
              #   The feature ID for the entitlement
              #
              #   @return [String]
              required :feature_id, String, api_name: :featureId

              # @!attribute has_soft_limit
              #   Whether the limit is soft (allows overage)
              #
              #   @return [Boolean, nil]
              optional :has_soft_limit, Stigg::Internal::Type::Boolean, api_name: :hasSoftLimit

              # @!attribute has_unlimited_usage
              #   Whether usage is unlimited
              #
              #   @return [Boolean, nil]
              optional :has_unlimited_usage, Stigg::Internal::Type::Boolean, api_name: :hasUnlimitedUsage

              # @!attribute monthly_reset_period_configuration
              #   Monthly reset configuration
              #
              #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration, nil]
              optional :monthly_reset_period_configuration,
                       -> {
                         Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration
                       },
                       api_name: :monthlyResetPeriodConfiguration

              # @!attribute reset_period
              #   The usage reset period
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::ResetPeriod, nil]
              optional :reset_period,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::ResetPeriod
                       },
                       api_name: :resetPeriod

              # @!attribute usage_limit
              #   The usage limit before overage kicks in
              #
              #   @return [Float, nil]
              optional :usage_limit, Float, api_name: :usageLimit

              # @!attribute weekly_reset_period_configuration
              #   Weekly reset configuration
              #
              #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration, nil]
              optional :weekly_reset_period_configuration,
                       -> {
                         Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration
                       },
                       api_name: :weeklyResetPeriodConfiguration

              # @!attribute yearly_reset_period_configuration
              #   Yearly reset configuration
              #
              #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration, nil]
              optional :yearly_reset_period_configuration,
                       -> {
                         Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration
                       },
                       api_name: :yearlyResetPeriodConfiguration

              # @!method initialize(feature_id:, has_soft_limit: nil, has_unlimited_usage: nil, monthly_reset_period_configuration: nil, reset_period: nil, usage_limit: nil, weekly_reset_period_configuration: nil, yearly_reset_period_configuration: nil)
              #   Entitlement configuration for the overage feature
              #
              #   @param feature_id [String] The feature ID for the entitlement
              #
              #   @param has_soft_limit [Boolean] Whether the limit is soft (allows overage)
              #
              #   @param has_unlimited_usage [Boolean] Whether usage is unlimited
              #
              #   @param monthly_reset_period_configuration [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration] Monthly reset configuration
              #
              #   @param reset_period [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::ResetPeriod] The usage reset period
              #
              #   @param usage_limit [Float] The usage limit before overage kicks in
              #
              #   @param weekly_reset_period_configuration [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration] Weekly reset configuration
              #
              #   @param yearly_reset_period_configuration [Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration] Yearly reset configuration

              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement#monthly_reset_period_configuration
              class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
                # @!attribute according_to
                #   Reset anchor (SubscriptionStart or StartOfTheMonth)
                #
                #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo]
                required :according_to,
                         enum: -> {
                           Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo
                         },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Monthly reset configuration
                #
                #   @param according_to [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                #
                # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::MonthlyResetPeriodConfiguration#according_to
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  SUBSCRIPTION_START = :SubscriptionStart
                  START_OF_THE_MONTH = :StartOfTheMonth

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # The usage reset period
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement#reset_period
              module ResetPeriod
                extend Stigg::Internal::Type::Enum

                YEAR = :YEAR
                MONTH = :MONTH
                WEEK = :WEEK
                DAY = :DAY
                HOUR = :HOUR

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement#weekly_reset_period_configuration
              class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
                # @!attribute according_to
                #   Reset anchor (SubscriptionStart or specific day)
                #
                #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo]
                required :according_to,
                         enum: -> {
                           Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo
                         },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Weekly reset configuration
                #
                #   @param according_to [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or specific day)

                # Reset anchor (SubscriptionStart or specific day)
                #
                # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::WeeklyResetPeriodConfiguration#according_to
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  SUBSCRIPTION_START = :SubscriptionStart
                  EVERY_SUNDAY = :EverySunday
                  EVERY_MONDAY = :EveryMonday
                  EVERY_TUESDAY = :EveryTuesday
                  EVERY_WEDNESDAY = :EveryWednesday
                  EVERY_THURSDAY = :EveryThursday
                  EVERY_FRIDAY = :EveryFriday
                  EVERY_SATURDAY = :EverySaturday

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement#yearly_reset_period_configuration
              class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
                # @!attribute according_to
                #   Reset anchor (SubscriptionStart)
                #
                #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo]
                required :according_to,
                         enum: -> {
                           Stigg::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo
                         },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Yearly reset configuration
                #
                #   @param according_to [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart)

                # Reset anchor (SubscriptionStart)
                #
                # @see Stigg::Models::V1::AddonUpdateParams::Charges::OveragePricingModel::Entitlement::YearlyResetPeriodConfiguration#according_to
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  SUBSCRIPTION_START = :SubscriptionStart

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end

          class PricingModel < Stigg::Internal::Type::BaseModel
            # @!attribute billing_model
            #   The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED)
            #
            #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::BillingModel]
            required :billing_model,
                     enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::BillingModel },
                     api_name: :billingModel

            # @!attribute price_periods
            #   Array of price period configurations (at least one required)
            #
            #   @return [Array<Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod>]
            required :price_periods,
                     -> {
                       Stigg::Internal::Type::ArrayOf[Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod]
                     },
                     api_name: :pricePeriods

            # @!attribute billing_cadence
            #   The billing cadence (RECURRING or ONE_OFF)
            #
            #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::BillingCadence, nil]
            optional :billing_cadence,
                     enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::BillingCadence },
                     api_name: :billingCadence

            # @!attribute feature_id
            #   The feature ID this pricing model is associated with
            #
            #   @return [String, nil]
            optional :feature_id, String, api_name: :featureId

            # @!attribute max_unit_quantity
            #   Maximum number of units (max 999999)
            #
            #   @return [Integer, nil]
            optional :max_unit_quantity, Integer, api_name: :maxUnitQuantity

            # @!attribute min_unit_quantity
            #   Minimum number of units
            #
            #   @return [Integer, nil]
            optional :min_unit_quantity, Integer, api_name: :minUnitQuantity

            # @!attribute monthly_reset_period_configuration
            #   Monthly reset period configuration
            #
            #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::MonthlyResetPeriodConfiguration, nil]
            optional :monthly_reset_period_configuration,
                     -> {
                       Stigg::V1::AddonUpdateParams::Charges::PricingModel::MonthlyResetPeriodConfiguration
                     },
                     api_name: :monthlyResetPeriodConfiguration

            # @!attribute reset_period
            #   The usage reset period
            #
            #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::ResetPeriod, nil]
            optional :reset_period,
                     enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::ResetPeriod },
                     api_name: :resetPeriod

            # @!attribute tiers_mode
            #   The tiered pricing mode (VOLUME or GRADUATED)
            #
            #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::TiersMode, nil]
            optional :tiers_mode,
                     enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::TiersMode },
                     api_name: :tiersMode

            # @!attribute top_up_custom_currency_id
            #   The custom currency ID for top-up pricing
            #
            #   @return [String, nil]
            optional :top_up_custom_currency_id, String, api_name: :topUpCustomCurrencyId

            # @!attribute weekly_reset_period_configuration
            #   Weekly reset period configuration
            #
            #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::WeeklyResetPeriodConfiguration, nil]
            optional :weekly_reset_period_configuration,
                     -> {
                       Stigg::V1::AddonUpdateParams::Charges::PricingModel::WeeklyResetPeriodConfiguration
                     },
                     api_name: :weeklyResetPeriodConfiguration

            # @!attribute yearly_reset_period_configuration
            #   Yearly reset period configuration
            #
            #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::YearlyResetPeriodConfiguration, nil]
            optional :yearly_reset_period_configuration,
                     -> {
                       Stigg::V1::AddonUpdateParams::Charges::PricingModel::YearlyResetPeriodConfiguration
                     },
                     api_name: :yearlyResetPeriodConfiguration

            # @!method initialize(billing_model:, price_periods:, billing_cadence: nil, feature_id: nil, max_unit_quantity: nil, min_unit_quantity: nil, monthly_reset_period_configuration: nil, reset_period: nil, tiers_mode: nil, top_up_custom_currency_id: nil, weekly_reset_period_configuration: nil, yearly_reset_period_configuration: nil)
            #   A pricing model configuration with billing details and price periods.
            #
            #   @param billing_model [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::BillingModel] The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED)
            #
            #   @param price_periods [Array<Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod>] Array of price period configurations (at least one required)
            #
            #   @param billing_cadence [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::BillingCadence] The billing cadence (RECURRING or ONE_OFF)
            #
            #   @param feature_id [String] The feature ID this pricing model is associated with
            #
            #   @param max_unit_quantity [Integer] Maximum number of units (max 999999)
            #
            #   @param min_unit_quantity [Integer] Minimum number of units
            #
            #   @param monthly_reset_period_configuration [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::MonthlyResetPeriodConfiguration] Monthly reset period configuration
            #
            #   @param reset_period [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::ResetPeriod] The usage reset period
            #
            #   @param tiers_mode [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::TiersMode] The tiered pricing mode (VOLUME or GRADUATED)
            #
            #   @param top_up_custom_currency_id [String] The custom currency ID for top-up pricing
            #
            #   @param weekly_reset_period_configuration [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::WeeklyResetPeriodConfiguration] Weekly reset period configuration
            #
            #   @param yearly_reset_period_configuration [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::YearlyResetPeriodConfiguration] Yearly reset period configuration

            # The billing model (FLAT_FEE, PER_UNIT, USAGE_BASED, CREDIT_BASED)
            #
            # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel#billing_model
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

            class PricePeriod < Stigg::Internal::Type::BaseModel
              # @!attribute billing_period
              #   The billing period (MONTHLY or ANNUALLY)
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::BillingPeriod]
              required :billing_period,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::BillingPeriod
                       },
                       api_name: :billingPeriod

              # @!attribute billing_country_code
              #   ISO country code for localized pricing
              #
              #   @return [String, nil]
              optional :billing_country_code, String, api_name: :billingCountryCode

              # @!attribute block_size
              #   Block size for usage-based pricing
              #
              #   @return [Float, nil]
              optional :block_size, Float, api_name: :blockSize

              # @!attribute credit_grant_cadence
              #   When credits are granted
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::CreditGrantCadence, nil]
              optional :credit_grant_cadence,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::CreditGrantCadence
                       },
                       api_name: :creditGrantCadence

              # @!attribute credit_rate
              #   Credit rate configuration for credit-based pricing
              #
              #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::CreditRate, nil]
              optional :credit_rate,
                       -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::CreditRate },
                       api_name: :creditRate

              # @!attribute price
              #   The price amount and currency
              #
              #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Price, nil]
              optional :price, -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Price }

              # @!attribute tiers
              #   Tiered pricing configuration
              #
              #   @return [Array<Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier>, nil]
              optional :tiers,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier] }

              # @!method initialize(billing_period:, billing_country_code: nil, block_size: nil, credit_grant_cadence: nil, credit_rate: nil, price: nil, tiers: nil)
              #   Price configuration for a specific billing period.
              #
              #   @param billing_period [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::BillingPeriod] The billing period (MONTHLY or ANNUALLY)
              #
              #   @param billing_country_code [String] ISO country code for localized pricing
              #
              #   @param block_size [Float] Block size for usage-based pricing
              #
              #   @param credit_grant_cadence [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::CreditGrantCadence] When credits are granted
              #
              #   @param credit_rate [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::CreditRate] Credit rate configuration for credit-based pricing
              #
              #   @param price [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Price] The price amount and currency
              #
              #   @param tiers [Array<Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier>] Tiered pricing configuration

              # The billing period (MONTHLY or ANNUALLY)
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod#billing_period
              module BillingPeriod
                extend Stigg::Internal::Type::Enum

                MONTHLY = :MONTHLY
                ANNUALLY = :ANNUALLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # When credits are granted
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod#credit_grant_cadence
              module CreditGrantCadence
                extend Stigg::Internal::Type::Enum

                BEGINNING_OF_BILLING_PERIOD = :BEGINNING_OF_BILLING_PERIOD
                MONTHLY = :MONTHLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod#credit_rate
              class CreditRate < Stigg::Internal::Type::BaseModel
                # @!attribute amount
                #   The credit rate amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute currency_id
                #   The custom currency ID
                #
                #   @return [String]
                required :currency_id, String, api_name: :currencyId

                # @!attribute cost_formula
                #   Optional cost formula expression
                #
                #   @return [String, nil]
                optional :cost_formula, String, api_name: :costFormula

                # @!method initialize(amount:, currency_id:, cost_formula: nil)
                #   Credit rate configuration for credit-based pricing
                #
                #   @param amount [Float] The credit rate amount
                #
                #   @param currency_id [String] The custom currency ID
                #
                #   @param cost_formula [String] Optional cost formula expression
              end

              # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod#price
              class Price < Stigg::Internal::Type::BaseModel
                # @!attribute amount
                #   The price amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute currency
                #   The price currency
                #
                #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Price::Currency, nil]
                optional :currency,
                         enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Price::Currency }

                # @!method initialize(amount:, currency: nil)
                #   The price amount and currency
                #
                #   @param amount [Float] The price amount
                #
                #   @param currency [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Price::Currency] The price currency

                # The price currency
                #
                # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Price#currency
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
                #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::FlatPrice, nil]
                optional :flat_price,
                         -> {
                           Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::FlatPrice
                         },
                         api_name: :flatPrice

                # @!attribute unit_price
                #   Per-unit price in this tier
                #
                #   @return [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::UnitPrice, nil]
                optional :unit_price,
                         -> {
                           Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::UnitPrice
                         },
                         api_name: :unitPrice

                # @!attribute up_to
                #   Upper bound of this tier (null for unlimited)
                #
                #   @return [Float, nil]
                optional :up_to, Float, api_name: :upTo

                # @!method initialize(flat_price: nil, unit_price: nil, up_to: nil)
                #   A tier in tiered pricing.
                #
                #   @param flat_price [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::FlatPrice] Flat price for this tier
                #
                #   @param unit_price [Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::UnitPrice] Per-unit price in this tier
                #
                #   @param up_to [Float] Upper bound of this tier (null for unlimited)

                # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier#flat_price
                class FlatPrice < Stigg::Internal::Type::BaseModel
                  # @!attribute amount
                  #   The price amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute currency
                  #   The price currency
                  #
                  #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::FlatPrice::Currency, nil]
                  optional :currency,
                           enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::FlatPrice::Currency }

                  # @!method initialize(amount:, currency: nil)
                  #   Flat price for this tier
                  #
                  #   @param amount [Float] The price amount
                  #
                  #   @param currency [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::FlatPrice::Currency] The price currency

                  # The price currency
                  #
                  # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::FlatPrice#currency
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

                # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier#unit_price
                class UnitPrice < Stigg::Internal::Type::BaseModel
                  # @!attribute amount
                  #   The price amount
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute currency
                  #   The price currency
                  #
                  #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::UnitPrice::Currency, nil]
                  optional :currency,
                           enum: -> { Stigg::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::UnitPrice::Currency }

                  # @!method initialize(amount:, currency: nil)
                  #   Per-unit price in this tier
                  #
                  #   @param amount [Float] The price amount
                  #
                  #   @param currency [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::UnitPrice::Currency] The price currency

                  # The price currency
                  #
                  # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::PricePeriod::Tier::UnitPrice#currency
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
            end

            # The billing cadence (RECURRING or ONE_OFF)
            #
            # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel#billing_cadence
            module BillingCadence
              extend Stigg::Internal::Type::Enum

              RECURRING = :RECURRING
              ONE_OFF = :ONE_OFF

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel#monthly_reset_period_configuration
            class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Monthly reset period configuration
              #
              #   @param according_to [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::MonthlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::MonthlyResetPeriodConfiguration#according_to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                SUBSCRIPTION_START = :SubscriptionStart
                START_OF_THE_MONTH = :StartOfTheMonth

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The usage reset period
            #
            # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel#reset_period
            module ResetPeriod
              extend Stigg::Internal::Type::Enum

              YEAR = :YEAR
              MONTH = :MONTH
              WEEK = :WEEK
              DAY = :DAY
              HOUR = :HOUR

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The tiered pricing mode (VOLUME or GRADUATED)
            #
            # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel#tiers_mode
            module TiersMode
              extend Stigg::Internal::Type::Enum

              VOLUME = :VOLUME
              GRADUATED = :GRADUATED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel#weekly_reset_period_configuration
            class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or specific day)
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Weekly reset period configuration
              #
              #   @param according_to [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::WeeklyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or specific day)

              # Reset anchor (SubscriptionStart or specific day)
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::WeeklyResetPeriodConfiguration#according_to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                SUBSCRIPTION_START = :SubscriptionStart
                EVERY_SUNDAY = :EverySunday
                EVERY_MONDAY = :EveryMonday
                EVERY_TUESDAY = :EveryTuesday
                EVERY_WEDNESDAY = :EveryWednesday
                EVERY_THURSDAY = :EveryThursday
                EVERY_FRIDAY = :EveryFriday
                EVERY_SATURDAY = :EverySaturday

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel#yearly_reset_period_configuration
            class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart)
              #
              #   @return [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::YearlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::AddonUpdateParams::Charges::PricingModel::YearlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Yearly reset period configuration
              #
              #   @param according_to [Symbol, Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::YearlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart)

              # Reset anchor (SubscriptionStart)
              #
              # @see Stigg::Models::V1::AddonUpdateParams::Charges::PricingModel::YearlyResetPeriodConfiguration#according_to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                SUBSCRIPTION_START = :SubscriptionStart

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end

        # The status of the package
        module Status
          extend Stigg::Internal::Type::Enum

          DRAFT = :DRAFT
          PUBLISHED = :PUBLISHED
          ARCHIVED = :ARCHIVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
