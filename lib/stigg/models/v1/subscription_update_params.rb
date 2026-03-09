# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#update
      class SubscriptionUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute addons
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionUpdateParams::Addon>, nil]
        optional :addons, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionUpdateParams::Addon] }

        # @!attribute applied_coupon
        #
        #   @return [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon, nil]
        optional :applied_coupon,
                 -> { Stigg::V1::SubscriptionUpdateParams::AppliedCoupon },
                 api_name: :appliedCoupon

        # @!attribute await_payment_confirmation
        #
        #   @return [Boolean, nil]
        optional :await_payment_confirmation,
                 Stigg::Internal::Type::Boolean,
                 api_name: :awaitPaymentConfirmation

        # @!attribute billing_cycle_anchor
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingCycleAnchor, nil]
        optional :billing_cycle_anchor,
                 enum: -> { Stigg::V1::SubscriptionUpdateParams::BillingCycleAnchor },
                 api_name: :billingCycleAnchor

        # @!attribute billing_information
        #
        #   @return [Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation, nil]
        optional :billing_information,
                 -> { Stigg::V1::SubscriptionUpdateParams::BillingInformation },
                 api_name: :billingInformation

        # @!attribute billing_period
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingPeriod, nil]
        optional :billing_period,
                 enum: -> { Stigg::V1::SubscriptionUpdateParams::BillingPeriod },
                 api_name: :billingPeriod

        # @!attribute budget
        #
        #   @return [Stigg::Models::V1::SubscriptionUpdateParams::Budget, nil]
        optional :budget, -> { Stigg::V1::SubscriptionUpdateParams::Budget }, nil?: true

        # @!attribute charges
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionUpdateParams::Charge>, nil]
        optional :charges, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionUpdateParams::Charge] }

        # @!attribute entitlements
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Credit>, nil]
        optional :entitlements,
                 -> { Stigg::Internal::Type::ArrayOf[union: Stigg::V1::SubscriptionUpdateParams::Entitlement] }

        # @!attribute metadata
        #   Additional metadata for the subscription
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute minimum_spend
        #   Minimum spend amount
        #
        #   @return [Stigg::Models::V1::SubscriptionUpdateParams::MinimumSpend, nil]
        optional :minimum_spend,
                 -> { Stigg::V1::SubscriptionUpdateParams::MinimumSpend },
                 api_name: :minimumSpend,
                 nil?: true

        # @!attribute price_overrides
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionUpdateParams::PriceOverride>, nil]
        optional :price_overrides,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionUpdateParams::PriceOverride] },
                 api_name: :priceOverrides

        # @!attribute promotion_code
        #
        #   @return [String, nil]
        optional :promotion_code, String, api_name: :promotionCode

        # @!attribute schedule_strategy
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::ScheduleStrategy, nil]
        optional :schedule_strategy,
                 enum: -> { Stigg::V1::SubscriptionUpdateParams::ScheduleStrategy },
                 api_name: :scheduleStrategy

        # @!attribute trial_end_date
        #   Subscription trial end date
        #
        #   @return [Time, nil]
        optional :trial_end_date, Time, api_name: :trialEndDate

        # @!method initialize(id:, addons: nil, applied_coupon: nil, await_payment_confirmation: nil, billing_cycle_anchor: nil, billing_information: nil, billing_period: nil, budget: nil, charges: nil, entitlements: nil, metadata: nil, minimum_spend: nil, price_overrides: nil, promotion_code: nil, schedule_strategy: nil, trial_end_date: nil, request_options: {})
        #   @param id [String]
        #
        #   @param addons [Array<Stigg::Models::V1::SubscriptionUpdateParams::Addon>]
        #
        #   @param applied_coupon [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon]
        #
        #   @param await_payment_confirmation [Boolean]
        #
        #   @param billing_cycle_anchor [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingCycleAnchor]
        #
        #   @param billing_information [Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation]
        #
        #   @param billing_period [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingPeriod]
        #
        #   @param budget [Stigg::Models::V1::SubscriptionUpdateParams::Budget, nil]
        #
        #   @param charges [Array<Stigg::Models::V1::SubscriptionUpdateParams::Charge>]
        #
        #   @param entitlements [Array<Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Credit>]
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        #   @param minimum_spend [Stigg::Models::V1::SubscriptionUpdateParams::MinimumSpend, nil] Minimum spend amount
        #
        #   @param price_overrides [Array<Stigg::Models::V1::SubscriptionUpdateParams::PriceOverride>]
        #
        #   @param promotion_code [String]
        #
        #   @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::ScheduleStrategy]
        #
        #   @param trial_end_date [Time] Subscription trial end date
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Addon < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Addon ID
          #
          #   @return [String]
          required :id, String

          # @!attribute quantity
          #   Number of addon instances
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!method initialize(id:, quantity:)
          #   Addon configuration
          #
          #   @param id [String] Addon ID
          #
          #   @param quantity [Integer] Number of addon instances
        end

        class AppliedCoupon < Stigg::Internal::Type::BaseModel
          # @!attribute billing_coupon_id
          #
          #   @return [String, nil]
          optional :billing_coupon_id, String, api_name: :billingCouponId

          # @!attribute configuration
          #
          #   @return [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration, nil]
          optional :configuration, -> { Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration }

          # @!attribute coupon_id
          #
          #   @return [String, nil]
          optional :coupon_id, String, api_name: :couponId

          # @!attribute discount
          #
          #   @return [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Discount, nil]
          optional :discount, -> { Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount }

          # @!attribute promotion_code
          #
          #   @return [String, nil]
          optional :promotion_code, String, api_name: :promotionCode, nil?: true

          # @!method initialize(billing_coupon_id: nil, configuration: nil, coupon_id: nil, discount: nil, promotion_code: nil)
          #   @param billing_coupon_id [String]
          #   @param configuration [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Configuration]
          #   @param coupon_id [String]
          #   @param discount [Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Discount]
          #   @param promotion_code [String, nil]

          # @see Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon#configuration
          class Configuration < Stigg::Internal::Type::BaseModel
            # @!attribute start_date
            #   Coupon start date
            #
            #   @return [Time, nil]
            optional :start_date, Time, api_name: :startDate

            # @!method initialize(start_date: nil)
            #   @param start_date [Time] Coupon start date
          end

          # @see Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon#discount
          class Discount < Stigg::Internal::Type::BaseModel
            # @!attribute amounts_off
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff>, nil]
            optional :amounts_off,
                     -> {
                       Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff]
                     },
                     api_name: :amountsOff,
                     nil?: true

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute duration_in_months
            #
            #   @return [Float, nil]
            optional :duration_in_months, Float, api_name: :durationInMonths

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute percent_off
            #
            #   @return [Float, nil]
            optional :percent_off, Float, api_name: :percentOff

            # @!method initialize(amounts_off: nil, description: nil, duration_in_months: nil, name: nil, percent_off: nil)
            #   @param amounts_off [Array<Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff>, nil]
            #   @param description [String]
            #   @param duration_in_months [Float]
            #   @param name [String]
            #   @param percent_off [Float]

            class AmountsOff < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   The price currency
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency]
              required :currency,
                       enum: -> { Stigg::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency }

              # @!method initialize(amount:, currency:)
              #   Monetary amount with currency
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff::Currency] The price currency

              # The price currency
              #
              # @see Stigg::Models::V1::SubscriptionUpdateParams::AppliedCoupon::Discount::AmountsOff#currency
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

        module BillingCycleAnchor
          extend Stigg::Internal::Type::Enum

          UNCHANGED = :UNCHANGED
          NOW = :NOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class BillingInformation < Stigg::Internal::Type::BaseModel
          # @!attribute billing_address
          #   Physical address
          #
          #   @return [Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress, nil]
          optional :billing_address,
                   -> { Stigg::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress },
                   api_name: :billingAddress

          # @!attribute charge_on_behalf_of_account
          #
          #   @return [String, nil]
          optional :charge_on_behalf_of_account, String, api_name: :chargeOnBehalfOfAccount

          # @!attribute coupon_id
          #
          #   @return [String, nil]
          optional :coupon_id, String, api_name: :couponId

          # @!attribute integration_id
          #
          #   @return [String, nil]
          optional :integration_id, String, api_name: :integrationId

          # @!attribute invoice_days_until_due
          #
          #   @return [Float, nil]
          optional :invoice_days_until_due, Float, api_name: :invoiceDaysUntilDue

          # @!attribute is_backdated
          #
          #   @return [Boolean, nil]
          optional :is_backdated, Stigg::Internal::Type::Boolean, api_name: :isBackdated

          # @!attribute is_invoice_paid
          #
          #   @return [Boolean, nil]
          optional :is_invoice_paid, Stigg::Internal::Type::Boolean, api_name: :isInvoicePaid

          # @!attribute metadata
          #   Additional metadata for the subscription
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[Stigg::Internal::Type::Unknown]

          # @!attribute proration_behavior
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior, nil]
          optional :proration_behavior,
                   enum: -> { Stigg::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior },
                   api_name: :prorationBehavior

          # @!attribute tax_ids
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation::TaxID>, nil]
          optional :tax_ids,
                   -> {
                     Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionUpdateParams::BillingInformation::TaxID]
                   },
                   api_name: :taxIds

          # @!attribute tax_percentage
          #
          #   @return [Float, nil]
          optional :tax_percentage, Float, api_name: :taxPercentage

          # @!attribute tax_rate_ids
          #
          #   @return [Array<String>, nil]
          optional :tax_rate_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :taxRateIds

          # @!method initialize(billing_address: nil, charge_on_behalf_of_account: nil, coupon_id: nil, integration_id: nil, invoice_days_until_due: nil, is_backdated: nil, is_invoice_paid: nil, metadata: nil, proration_behavior: nil, tax_ids: nil, tax_percentage: nil, tax_rate_ids: nil)
          #   @param billing_address [Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation::BillingAddress] Physical address
          #
          #   @param charge_on_behalf_of_account [String]
          #
          #   @param coupon_id [String]
          #
          #   @param integration_id [String]
          #
          #   @param invoice_days_until_due [Float]
          #
          #   @param is_backdated [Boolean]
          #
          #   @param is_invoice_paid [Boolean]
          #
          #   @param metadata [Hash{Symbol=>Object}] Additional metadata for the subscription
          #
          #   @param proration_behavior [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation::ProrationBehavior]
          #
          #   @param tax_ids [Array<Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation::TaxID>]
          #
          #   @param tax_percentage [Float]
          #
          #   @param tax_rate_ids [Array<String>]

          # @see Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation#billing_address
          class BillingAddress < Stigg::Internal::Type::BaseModel
            # @!attribute city
            #   City name
            #
            #   @return [String, nil]
            optional :city, String

            # @!attribute country
            #   Country code or name
            #
            #   @return [String, nil]
            optional :country, String

            # @!attribute line1
            #   Street address line 1
            #
            #   @return [String, nil]
            optional :line1, String

            # @!attribute line2
            #   Street address line 2
            #
            #   @return [String, nil]
            optional :line2, String

            # @!attribute postal_code
            #   Postal or ZIP code
            #
            #   @return [String, nil]
            optional :postal_code, String, api_name: :postalCode

            # @!attribute state
            #   State or province
            #
            #   @return [String, nil]
            optional :state, String

            # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
            #   Physical address
            #
            #   @param city [String] City name
            #
            #   @param country [String] Country code or name
            #
            #   @param line1 [String] Street address line 1
            #
            #   @param line2 [String] Street address line 2
            #
            #   @param postal_code [String] Postal or ZIP code
            #
            #   @param state [String] State or province
          end

          # @see Stigg::Models::V1::SubscriptionUpdateParams::BillingInformation#proration_behavior
          module ProrationBehavior
            extend Stigg::Internal::Type::Enum

            INVOICE_IMMEDIATELY = :INVOICE_IMMEDIATELY
            CREATE_PRORATIONS = :CREATE_PRORATIONS
            NONE = :NONE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class TaxID < Stigg::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [String]
            required :type, String

            # @!attribute value
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   @param type [String]
            #   @param value [String]
          end
        end

        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          MONTHLY = :MONTHLY
          ANNUALLY = :ANNUALLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Budget < Stigg::Internal::Type::BaseModel
          # @!attribute has_soft_limit
          #   Whether the budget is a soft limit
          #
          #   @return [Boolean]
          required :has_soft_limit, Stigg::Internal::Type::Boolean, api_name: :hasSoftLimit

          # @!attribute limit
          #   Maximum spending limit
          #
          #   @return [Float]
          required :limit, Float

          # @!method initialize(has_soft_limit:, limit:)
          #   @param has_soft_limit [Boolean] Whether the budget is a soft limit
          #
          #   @param limit [Float] Maximum spending limit
        end

        class Charge < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Charge ID
          #
          #   @return [String]
          required :id, String

          # @!attribute quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute type
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Charge::Type]
          required :type, enum: -> { Stigg::V1::SubscriptionUpdateParams::Charge::Type }

          # @!method initialize(id:, quantity:, type:)
          #   @param id [String] Charge ID
          #
          #   @param quantity [Float]
          #
          #   @param type [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Charge::Type]

          # @see Stigg::Models::V1::SubscriptionUpdateParams::Charge#type
          module Type
            extend Stigg::Internal::Type::Enum

            FEATURE = :FEATURE
            CREDIT = :CREDIT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Feature entitlement configuration for a subscription
        module Entitlement
          extend Stigg::Internal::Type::Union

          discriminator :type

          # Feature entitlement configuration for a subscription
          variant :FEATURE, -> { Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature }

          # Credit entitlement configuration for a subscription
          variant :CREDIT, -> { Stigg::V1::SubscriptionUpdateParams::Entitlement::Credit }

          class Feature < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The feature ID to attach the entitlement to
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #   SubscriptionFeatureEntitlementRequest
            #
            #   @return [Symbol, :FEATURE]
            required :type, const: :FEATURE

            # @!attribute has_soft_limit
            #   Whether the usage limit is a soft limit
            #
            #   @return [Boolean, nil]
            optional :has_soft_limit, Stigg::Internal::Type::Boolean, api_name: :hasSoftLimit

            # @!attribute has_unlimited_usage
            #   Whether usage is unlimited
            #
            #   @return [Boolean, nil]
            optional :has_unlimited_usage, Stigg::Internal::Type::Boolean, api_name: :hasUnlimitedUsage

            # @!attribute monthly_reset_period_configuration
            #   Configuration for monthly reset period
            #
            #   @return [Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration, nil]
            optional :monthly_reset_period_configuration,
                     -> {
                       Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration
                     },
                     api_name: :monthlyResetPeriodConfiguration,
                     nil?: true

            # @!attribute reset_period
            #   Period at which usage resets
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::ResetPeriod, nil]
            optional :reset_period,
                     enum: -> { Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature::ResetPeriod },
                     api_name: :resetPeriod

            # @!attribute usage_limit
            #   Maximum allowed usage for the feature
            #
            #   @return [Integer, nil]
            optional :usage_limit, Integer, api_name: :usageLimit

            # @!attribute weekly_reset_period_configuration
            #   Configuration for weekly reset period
            #
            #   @return [Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration, nil]
            optional :weekly_reset_period_configuration,
                     -> {
                       Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration
                     },
                     api_name: :weeklyResetPeriodConfiguration,
                     nil?: true

            # @!attribute yearly_reset_period_configuration
            #   Configuration for yearly reset period
            #
            #   @return [Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::YearlyResetPeriodConfiguration, nil]
            optional :yearly_reset_period_configuration,
                     -> {
                       Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature::YearlyResetPeriodConfiguration
                     },
                     api_name: :yearlyResetPeriodConfiguration,
                     nil?: true

            # @!method initialize(id:, has_soft_limit: nil, has_unlimited_usage: nil, monthly_reset_period_configuration: nil, reset_period: nil, usage_limit: nil, weekly_reset_period_configuration: nil, yearly_reset_period_configuration: nil, type: :FEATURE)
            #   Feature entitlement configuration for a subscription
            #
            #   @param id [String] The feature ID to attach the entitlement to
            #
            #   @param has_soft_limit [Boolean] Whether the usage limit is a soft limit
            #
            #   @param has_unlimited_usage [Boolean] Whether usage is unlimited
            #
            #   @param monthly_reset_period_configuration [Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration, nil] Configuration for monthly reset period
            #
            #   @param reset_period [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::ResetPeriod] Period at which usage resets
            #
            #   @param usage_limit [Integer] Maximum allowed usage for the feature
            #
            #   @param weekly_reset_period_configuration [Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration, nil] Configuration for weekly reset period
            #
            #   @param yearly_reset_period_configuration [Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::YearlyResetPeriodConfiguration, nil] Configuration for yearly reset period
            #
            #   @param type [Symbol, :FEATURE] SubscriptionFeatureEntitlementRequest

            # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature#monthly_reset_period_configuration
            class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Configuration for monthly reset period
              #
              #   @param according_to [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration#according_to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                SUBSCRIPTION_START = :SubscriptionStart
                START_OF_THE_MONTH = :StartOfTheMonth

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Period at which usage resets
            #
            # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature#reset_period
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

            # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature#weekly_reset_period_configuration
            class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or specific day)
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Configuration for weekly reset period
              #
              #   @param according_to [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or specific day)

              # Reset anchor (SubscriptionStart or specific day)
              #
              # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration#according_to
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

            # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature#yearly_reset_period_configuration
            class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart)
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::SubscriptionUpdateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Configuration for yearly reset period
              #
              #   @param according_to [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart)

              # Reset anchor (SubscriptionStart)
              #
              # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature::YearlyResetPeriodConfiguration#according_to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                SUBSCRIPTION_START = :SubscriptionStart

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Credit < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The custom currency ID for the credit entitlement
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #   Credit grant amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute cadence
            #   Credit grant cadence (MONTH or YEAR)
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Credit::Cadence]
            required :cadence, enum: -> { Stigg::V1::SubscriptionUpdateParams::Entitlement::Credit::Cadence }

            # @!attribute type
            #   SubscriptionCreditEntitlementRequest
            #
            #   @return [Symbol, :CREDIT]
            required :type, const: :CREDIT

            # @!method initialize(id:, amount:, cadence:, type: :CREDIT)
            #   Credit entitlement configuration for a subscription
            #
            #   @param id [String] The custom currency ID for the credit entitlement
            #
            #   @param amount [Float] Credit grant amount
            #
            #   @param cadence [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Credit::Cadence] Credit grant cadence (MONTH or YEAR)
            #
            #   @param type [Symbol, :CREDIT] SubscriptionCreditEntitlementRequest

            # Credit grant cadence (MONTH or YEAR)
            #
            # @see Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Credit#cadence
            module Cadence
              extend Stigg::Internal::Type::Enum

              MONTH = :MONTH
              YEAR = :YEAR

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionUpdateParams::Entitlement::Credit)]
        end

        class MinimumSpend < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   The price amount
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute currency
          #   The price currency
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::MinimumSpend::Currency, nil]
          optional :currency, enum: -> { Stigg::V1::SubscriptionUpdateParams::MinimumSpend::Currency }

          # @!method initialize(amount: nil, currency: nil)
          #   Minimum spend amount
          #
          #   @param amount [Float] The price amount
          #
          #   @param currency [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::MinimumSpend::Currency] The price currency

          # The price currency
          #
          # @see Stigg::Models::V1::SubscriptionUpdateParams::MinimumSpend#currency
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

        class PriceOverride < Stigg::Internal::Type::BaseModel
          # @!attribute addon_id
          #   Addon ID
          #
          #   @return [String, nil]
          optional :addon_id, String, api_name: :addonId

          # @!attribute amount
          #   The price amount
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute base_charge
          #   Whether this is a base charge override
          #
          #   @return [Boolean, nil]
          optional :base_charge, Stigg::Internal::Type::Boolean, api_name: :baseCharge

          # @!attribute currency
          #   The price currency
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::PriceOverride::Currency, nil]
          optional :currency, enum: -> { Stigg::V1::SubscriptionUpdateParams::PriceOverride::Currency }

          # @!attribute currency_id
          #   The corresponding custom currency id of the recurring credits price
          #
          #   @return [String, nil]
          optional :currency_id, String, api_name: :currencyId

          # @!attribute feature_id
          #   Feature ID
          #
          #   @return [String, nil]
          optional :feature_id, String, api_name: :featureId

          # @!method initialize(addon_id: nil, amount: nil, base_charge: nil, currency: nil, currency_id: nil, feature_id: nil)
          #   @param addon_id [String] Addon ID
          #
          #   @param amount [Float] The price amount
          #
          #   @param base_charge [Boolean] Whether this is a base charge override
          #
          #   @param currency [Symbol, Stigg::Models::V1::SubscriptionUpdateParams::PriceOverride::Currency] The price currency
          #
          #   @param currency_id [String] The corresponding custom currency id of the recurring credits price
          #
          #   @param feature_id [String] Feature ID

          # The price currency
          #
          # @see Stigg::Models::V1::SubscriptionUpdateParams::PriceOverride#currency
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

        module ScheduleStrategy
          extend Stigg::Internal::Type::Enum

          END_OF_BILLING_PERIOD = :END_OF_BILLING_PERIOD
          END_OF_BILLING_MONTH = :END_OF_BILLING_MONTH
          IMMEDIATE = :IMMEDIATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
