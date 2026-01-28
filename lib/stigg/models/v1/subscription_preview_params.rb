# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#preview
      class SubscriptionPreviewParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   Customer ID
        #
        #   @return [String]
        required :customer_id, String, api_name: :customerId

        # @!attribute plan_id
        #   Plan ID
        #
        #   @return [String]
        required :plan_id, String, api_name: :planId

        # @!attribute addons
        #   Addons to include
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionPreviewParams::Addon>, nil]
        optional :addons, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionPreviewParams::Addon] }

        # @!attribute applied_coupon
        #   Coupon or discount to apply
        #
        #   @return [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon, nil]
        optional :applied_coupon,
                 -> { Stigg::V1::SubscriptionPreviewParams::AppliedCoupon },
                 api_name: :appliedCoupon

        # @!attribute billable_features
        #   Billable features with quantities
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionPreviewParams::BillableFeature>, nil]
        optional :billable_features,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionPreviewParams::BillableFeature] },
                 api_name: :billableFeatures

        # @!attribute billing_country_code
        #   ISO 3166-1 country code for localization
        #
        #   @return [String, nil]
        optional :billing_country_code, String, api_name: :billingCountryCode

        # @!attribute billing_information
        #   Billing and tax configuration
        #
        #   @return [Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation, nil]
        optional :billing_information,
                 -> { Stigg::V1::SubscriptionPreviewParams::BillingInformation },
                 api_name: :billingInformation

        # @!attribute billing_period
        #   Billing period (MONTHLY or ANNUALLY)
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingPeriod, nil]
        optional :billing_period,
                 enum: -> { Stigg::V1::SubscriptionPreviewParams::BillingPeriod },
                 api_name: :billingPeriod

        # @!attribute charges
        #   One-time or recurring charges
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionPreviewParams::Charge>, nil]
        optional :charges, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionPreviewParams::Charge] }

        # @!attribute paying_customer_id
        #   Paying customer ID for delegated billing
        #
        #   @return [String, nil]
        optional :paying_customer_id, String, api_name: :payingCustomerId

        # @!attribute resource_id
        #   Resource ID for multi-instance subscriptions
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId

        # @!attribute schedule_strategy
        #   When to apply subscription changes
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::ScheduleStrategy, nil]
        optional :schedule_strategy,
                 enum: -> { Stigg::V1::SubscriptionPreviewParams::ScheduleStrategy },
                 api_name: :scheduleStrategy

        # @!attribute start_date
        #   Subscription start date
        #
        #   @return [Time, nil]
        optional :start_date, Time, api_name: :startDate

        # @!attribute trial_override_configuration
        #   Trial period override settings
        #
        #   @return [Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration, nil]
        optional :trial_override_configuration,
                 -> { Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration },
                 api_name: :trialOverrideConfiguration

        # @!attribute unit_quantity
        #   Unit quantity for per-unit pricing
        #
        #   @return [Float, nil]
        optional :unit_quantity, Float, api_name: :unitQuantity

        # @!method initialize(customer_id:, plan_id:, addons: nil, applied_coupon: nil, billable_features: nil, billing_country_code: nil, billing_information: nil, billing_period: nil, charges: nil, paying_customer_id: nil, resource_id: nil, schedule_strategy: nil, start_date: nil, trial_override_configuration: nil, unit_quantity: nil, request_options: {})
        #   @param customer_id [String] Customer ID
        #
        #   @param plan_id [String] Plan ID
        #
        #   @param addons [Array<Stigg::Models::V1::SubscriptionPreviewParams::Addon>] Addons to include
        #
        #   @param applied_coupon [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon] Coupon or discount to apply
        #
        #   @param billable_features [Array<Stigg::Models::V1::SubscriptionPreviewParams::BillableFeature>] Billable features with quantities
        #
        #   @param billing_country_code [String] ISO 3166-1 country code for localization
        #
        #   @param billing_information [Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation] Billing and tax configuration
        #
        #   @param billing_period [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingPeriod] Billing period (MONTHLY or ANNUALLY)
        #
        #   @param charges [Array<Stigg::Models::V1::SubscriptionPreviewParams::Charge>] One-time or recurring charges
        #
        #   @param paying_customer_id [String] Paying customer ID for delegated billing
        #
        #   @param resource_id [String] Resource ID for multi-instance subscriptions
        #
        #   @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::ScheduleStrategy] When to apply subscription changes
        #
        #   @param start_date [Time] Subscription start date
        #
        #   @param trial_override_configuration [Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration] Trial period override settings
        #
        #   @param unit_quantity [Float] Unit quantity for per-unit pricing
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Addon < Stigg::Internal::Type::BaseModel
          # @!attribute addon_id
          #   Addon ID
          #
          #   @return [String]
          required :addon_id, String, api_name: :addonId

          # @!attribute quantity
          #   Number of addon instances
          #
          #   @return [Integer, nil]
          optional :quantity, Integer

          # @!method initialize(addon_id:, quantity: nil)
          #   Addon configuration
          #
          #   @param addon_id [String] Addon ID
          #
          #   @param quantity [Integer] Number of addon instances
        end

        class AppliedCoupon < Stigg::Internal::Type::BaseModel
          # @!attribute billing_coupon_id
          #   Billing provider coupon ID
          #
          #   @return [String, nil]
          optional :billing_coupon_id, String, api_name: :billingCouponId

          # @!attribute configuration
          #   Coupon timing configuration
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration, nil]
          optional :configuration, -> { Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration }

          # @!attribute coupon_id
          #   Stigg coupon ID
          #
          #   @return [String, nil]
          optional :coupon_id, String, api_name: :couponId

          # @!attribute discount
          #   Ad-hoc discount configuration
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Discount, nil]
          optional :discount, -> { Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount }

          # @!attribute promotion_code
          #   Promotion code to apply
          #
          #   @return [String, nil]
          optional :promotion_code, String, api_name: :promotionCode

          # @!method initialize(billing_coupon_id: nil, configuration: nil, coupon_id: nil, discount: nil, promotion_code: nil)
          #   Coupon or discount to apply
          #
          #   @param billing_coupon_id [String] Billing provider coupon ID
          #
          #   @param configuration [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Configuration] Coupon timing configuration
          #
          #   @param coupon_id [String] Stigg coupon ID
          #
          #   @param discount [Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Discount] Ad-hoc discount configuration
          #
          #   @param promotion_code [String] Promotion code to apply

          # @see Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon#configuration
          class Configuration < Stigg::Internal::Type::BaseModel
            # @!attribute start_date
            #   Coupon start date
            #
            #   @return [Time, nil]
            optional :start_date, Time, api_name: :startDate

            # @!method initialize(start_date: nil)
            #   Coupon timing configuration
            #
            #   @param start_date [Time] Coupon start date
          end

          # @see Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon#discount
          class Discount < Stigg::Internal::Type::BaseModel
            # @!attribute amounts_off
            #   Fixed amounts off by currency
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff>, nil]
            optional :amounts_off,
                     -> {
                       Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff]
                     },
                     api_name: :amountsOff,
                     nil?: true

            # @!attribute description
            #   Ad-hoc discount
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute duration_in_months
            #   Duration in months
            #
            #   @return [Float, nil]
            optional :duration_in_months, Float, api_name: :durationInMonths

            # @!attribute name
            #   Discount name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute percent_off
            #   Percentage discount
            #
            #   @return [Float, nil]
            optional :percent_off, Float, api_name: :percentOff

            # @!method initialize(amounts_off: nil, description: nil, duration_in_months: nil, name: nil, percent_off: nil)
            #   Ad-hoc discount configuration
            #
            #   @param amounts_off [Array<Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff>, nil] Fixed amounts off by currency
            #
            #   @param description [String] Ad-hoc discount
            #
            #   @param duration_in_months [Float] Duration in months
            #
            #   @param name [String] Discount name
            #
            #   @param percent_off [Float] Percentage discount

            class AmountsOff < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   The price currency
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency]
              required :currency,
                       enum: -> { Stigg::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency }

              # @!method initialize(amount:, currency:)
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff::Currency] The price currency

              # The price currency
              #
              # @see Stigg::Models::V1::SubscriptionPreviewParams::AppliedCoupon::Discount::AmountsOff#currency
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

        class BillableFeature < Stigg::Internal::Type::BaseModel
          # @!attribute feature_id
          #   Feature ID
          #
          #   @return [String]
          required :feature_id, String, api_name: :featureId

          # @!attribute quantity
          #   Quantity of feature units
          #
          #   @return [Float]
          required :quantity, Float

          # @!method initialize(feature_id:, quantity:)
          #   Feature with quantity
          #
          #   @param feature_id [String] Feature ID
          #
          #   @param quantity [Float] Quantity of feature units
        end

        class BillingInformation < Stigg::Internal::Type::BaseModel
          # @!attribute billing_address
          #   Billing address
          #
          #   @return [Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress, nil]
          optional :billing_address,
                   -> { Stigg::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress },
                   api_name: :billingAddress

          # @!attribute charge_on_behalf_of_account
          #   Connected account ID for platform billing
          #
          #   @return [String, nil]
          optional :charge_on_behalf_of_account, String, api_name: :chargeOnBehalfOfAccount

          # @!attribute integration_id
          #   Billing integration ID
          #
          #   @return [String, nil]
          optional :integration_id, String, api_name: :integrationId

          # @!attribute invoice_days_until_due
          #   Days until invoice is due
          #
          #   @return [Float, nil]
          optional :invoice_days_until_due, Float, api_name: :invoiceDaysUntilDue

          # @!attribute is_backdated
          #   Whether subscription is backdated
          #
          #   @return [Boolean, nil]
          optional :is_backdated, Stigg::Internal::Type::Boolean, api_name: :isBackdated

          # @!attribute is_invoice_paid
          #   Whether invoice is already paid
          #
          #   @return [Boolean, nil]
          optional :is_invoice_paid, Stigg::Internal::Type::Boolean, api_name: :isInvoicePaid

          # @!attribute metadata
          #   Additional billing metadata
          #
          #   @return [Object, nil]
          optional :metadata, Stigg::Internal::Type::Unknown

          # @!attribute proration_behavior
          #   Proration behavior
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior, nil]
          optional :proration_behavior,
                   enum: -> { Stigg::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior },
                   api_name: :prorationBehavior

          # @!attribute tax_ids
          #   Customer tax IDs
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation::TaxID>, nil]
          optional :tax_ids,
                   -> {
                     Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionPreviewParams::BillingInformation::TaxID]
                   },
                   api_name: :taxIds

          # @!attribute tax_percentage
          #   Tax percentage to apply
          #
          #   @return [Float, nil]
          optional :tax_percentage, Float, api_name: :taxPercentage

          # @!attribute tax_rate_ids
          #   Tax rate IDs from billing provider
          #
          #   @return [Array<String>, nil]
          optional :tax_rate_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :taxRateIds

          # @!method initialize(billing_address: nil, charge_on_behalf_of_account: nil, integration_id: nil, invoice_days_until_due: nil, is_backdated: nil, is_invoice_paid: nil, metadata: nil, proration_behavior: nil, tax_ids: nil, tax_percentage: nil, tax_rate_ids: nil)
          #   Billing and tax configuration
          #
          #   @param billing_address [Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation::BillingAddress] Billing address
          #
          #   @param charge_on_behalf_of_account [String] Connected account ID for platform billing
          #
          #   @param integration_id [String] Billing integration ID
          #
          #   @param invoice_days_until_due [Float] Days until invoice is due
          #
          #   @param is_backdated [Boolean] Whether subscription is backdated
          #
          #   @param is_invoice_paid [Boolean] Whether invoice is already paid
          #
          #   @param metadata [Object] Additional billing metadata
          #
          #   @param proration_behavior [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation::ProrationBehavior] Proration behavior
          #
          #   @param tax_ids [Array<Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation::TaxID>] Customer tax IDs
          #
          #   @param tax_percentage [Float] Tax percentage to apply
          #
          #   @param tax_rate_ids [Array<String>] Tax rate IDs from billing provider

          # @see Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation#billing_address
          class BillingAddress < Stigg::Internal::Type::BaseModel
            # @!attribute city
            #
            #   @return [String, nil]
            optional :city, String

            # @!attribute country
            #
            #   @return [String, nil]
            optional :country, String

            # @!attribute line1
            #
            #   @return [String, nil]
            optional :line1, String

            # @!attribute line2
            #
            #   @return [String, nil]
            optional :line2, String

            # @!attribute postal_code
            #
            #   @return [String, nil]
            optional :postal_code, String, api_name: :postalCode

            # @!attribute state
            #
            #   @return [String, nil]
            optional :state, String

            # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
            #   Billing address
            #
            #   @param city [String]
            #   @param country [String]
            #   @param line1 [String]
            #   @param line2 [String]
            #   @param postal_code [String]
            #   @param state [String]
          end

          # Proration behavior
          #
          # @see Stigg::Models::V1::SubscriptionPreviewParams::BillingInformation#proration_behavior
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
            #   Tax exemption type (e.g., vat, gst)
            #
            #   @return [String]
            required :type, String

            # @!attribute value
            #   Tax exemption identifier value
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   Tax exemption identifier
            #
            #   @param type [String] Tax exemption type (e.g., vat, gst)
            #
            #   @param value [String] Tax exemption identifier value
          end
        end

        # Billing period (MONTHLY or ANNUALLY)
        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          MONTHLY = :MONTHLY
          ANNUALLY = :ANNUALLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Charge < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Charge ID
          #
          #   @return [String]
          required :id, String

          # @!attribute quantity
          #   Charge quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute type
          #   Charge type
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::Charge::Type]
          required :type, enum: -> { Stigg::V1::SubscriptionPreviewParams::Charge::Type }

          # @!method initialize(id:, quantity:, type:)
          #   Charge item
          #
          #   @param id [String] Charge ID
          #
          #   @param quantity [Float] Charge quantity
          #
          #   @param type [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::Charge::Type] Charge type

          # Charge type
          #
          # @see Stigg::Models::V1::SubscriptionPreviewParams::Charge#type
          module Type
            extend Stigg::Internal::Type::Enum

            FEATURE = :FEATURE
            CREDIT = :CREDIT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # When to apply subscription changes
        module ScheduleStrategy
          extend Stigg::Internal::Type::Enum

          END_OF_BILLING_PERIOD = :END_OF_BILLING_PERIOD
          END_OF_BILLING_MONTH = :END_OF_BILLING_MONTH
          IMMEDIATE = :IMMEDIATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class TrialOverrideConfiguration < Stigg::Internal::Type::BaseModel
          # @!attribute is_trial
          #   Whether to start as trial
          #
          #   @return [Boolean]
          required :is_trial, Stigg::Internal::Type::Boolean, api_name: :isTrial

          # @!attribute trial_end_behavior
          #   Behavior when trial ends
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior, nil]
          optional :trial_end_behavior,
                   enum: -> {
                     Stigg::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior
                   },
                   api_name: :trialEndBehavior

          # @!attribute trial_end_date
          #   Trial end date
          #
          #   @return [Time, nil]
          optional :trial_end_date, Time, api_name: :trialEndDate

          # @!method initialize(is_trial:, trial_end_behavior: nil, trial_end_date: nil)
          #   Trial period override settings
          #
          #   @param is_trial [Boolean] Whether to start as trial
          #
          #   @param trial_end_behavior [Symbol, Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration::TrialEndBehavior] Behavior when trial ends
          #
          #   @param trial_end_date [Time] Trial end date

          # Behavior when trial ends
          #
          # @see Stigg::Models::V1::SubscriptionPreviewParams::TrialOverrideConfiguration#trial_end_behavior
          module TrialEndBehavior
            extend Stigg::Internal::Type::Enum

            CONVERT_TO_PAID = :CONVERT_TO_PAID
            CANCEL_SUBSCRIPTION = :CANCEL_SUBSCRIPTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
