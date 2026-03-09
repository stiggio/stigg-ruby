# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#provision
      class SubscriptionProvisionParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   Customer ID to provision the subscription for
        #
        #   @return [String]
        required :customer_id, String, api_name: :customerId

        # @!attribute plan_id
        #   Plan ID to provision
        #
        #   @return [String]
        required :plan_id, String, api_name: :planId

        # @!attribute id
        #   Unique identifier for the subscription
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute addons
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionProvisionParams::Addon>, nil]
        optional :addons, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionProvisionParams::Addon] }

        # @!attribute applied_coupon
        #   Coupon configuration
        #
        #   @return [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon, nil]
        optional :applied_coupon,
                 -> { Stigg::V1::SubscriptionProvisionParams::AppliedCoupon },
                 api_name: :appliedCoupon

        # @!attribute await_payment_confirmation
        #   Whether to wait for payment confirmation before returning the subscription
        #
        #   @return [Boolean, nil]
        optional :await_payment_confirmation,
                 Stigg::Internal::Type::Boolean,
                 api_name: :awaitPaymentConfirmation

        # @!attribute billing_country_code
        #   The ISO 3166-1 alpha-2 country code for billing
        #
        #   @return [String, nil]
        optional :billing_country_code, String, api_name: :billingCountryCode, nil?: true

        # @!attribute billing_cycle_anchor
        #   Billing cycle anchor behavior for the subscription
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingCycleAnchor, nil]
        optional :billing_cycle_anchor,
                 enum: -> { Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor },
                 api_name: :billingCycleAnchor

        # @!attribute billing_id
        #   External billing system identifier
        #
        #   @return [String, nil]
        optional :billing_id, String, api_name: :billingId, nil?: true

        # @!attribute billing_information
        #
        #   @return [Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation, nil]
        optional :billing_information,
                 -> { Stigg::V1::SubscriptionProvisionParams::BillingInformation },
                 api_name: :billingInformation

        # @!attribute billing_period
        #   Billing period (MONTHLY or ANNUALLY)
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingPeriod, nil]
        optional :billing_period,
                 enum: -> { Stigg::V1::SubscriptionProvisionParams::BillingPeriod },
                 api_name: :billingPeriod

        # @!attribute budget
        #
        #   @return [Stigg::Models::V1::SubscriptionProvisionParams::Budget, nil]
        optional :budget, -> { Stigg::V1::SubscriptionProvisionParams::Budget }, nil?: true

        # @!attribute charges
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionProvisionParams::Charge>, nil]
        optional :charges, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionProvisionParams::Charge] }

        # @!attribute checkout_options
        #   Checkout page configuration for payment collection
        #
        #   @return [Stigg::Models::V1::SubscriptionProvisionParams::CheckoutOptions, nil]
        optional :checkout_options,
                 -> { Stigg::V1::SubscriptionProvisionParams::CheckoutOptions },
                 api_name: :checkoutOptions

        # @!attribute entitlements
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Credit>, nil]
        optional :entitlements,
                 -> { Stigg::Internal::Type::ArrayOf[union: Stigg::V1::SubscriptionProvisionParams::Entitlement] }

        # @!attribute metadata
        #   Additional metadata for the subscription
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute minimum_spend
        #   Minimum spend amount
        #
        #   @return [Stigg::Models::V1::SubscriptionProvisionParams::MinimumSpend, nil]
        optional :minimum_spend,
                 -> { Stigg::V1::SubscriptionProvisionParams::MinimumSpend },
                 api_name: :minimumSpend,
                 nil?: true

        # @!attribute paying_customer_id
        #   Optional paying customer ID for split billing scenarios
        #
        #   @return [String, nil]
        optional :paying_customer_id, String, api_name: :payingCustomerId, nil?: true

        # @!attribute payment_collection_method
        #   How payments should be collected for this subscription
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PaymentCollectionMethod, nil]
        optional :payment_collection_method,
                 enum: -> { Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod },
                 api_name: :paymentCollectionMethod

        # @!attribute price_overrides
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride>, nil]
        optional :price_overrides,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionProvisionParams::PriceOverride] },
                 api_name: :priceOverrides

        # @!attribute resource_id
        #   Optional resource ID for multi-instance subscriptions
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId, nil?: true

        # @!attribute salesforce_id
        #   Salesforce ID
        #
        #   @return [String, nil]
        optional :salesforce_id, String, api_name: :salesforceId, nil?: true

        # @!attribute schedule_strategy
        #   Strategy for scheduling subscription changes
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::ScheduleStrategy, nil]
        optional :schedule_strategy,
                 enum: -> { Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy },
                 api_name: :scheduleStrategy

        # @!attribute start_date
        #   Subscription start date
        #
        #   @return [Time, nil]
        optional :start_date, Time, api_name: :startDate

        # @!attribute trial_override_configuration
        #   Trial period override settings
        #
        #   @return [Stigg::Models::V1::SubscriptionProvisionParams::TrialOverrideConfiguration, nil]
        optional :trial_override_configuration,
                 -> { Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration },
                 api_name: :trialOverrideConfiguration

        # @!attribute unit_quantity
        #
        #   @return [Float, nil]
        optional :unit_quantity, Float, api_name: :unitQuantity

        # @!method initialize(customer_id:, plan_id:, id: nil, addons: nil, applied_coupon: nil, await_payment_confirmation: nil, billing_country_code: nil, billing_cycle_anchor: nil, billing_id: nil, billing_information: nil, billing_period: nil, budget: nil, charges: nil, checkout_options: nil, entitlements: nil, metadata: nil, minimum_spend: nil, paying_customer_id: nil, payment_collection_method: nil, price_overrides: nil, resource_id: nil, salesforce_id: nil, schedule_strategy: nil, start_date: nil, trial_override_configuration: nil, unit_quantity: nil, request_options: {})
        #   @param customer_id [String] Customer ID to provision the subscription for
        #
        #   @param plan_id [String] Plan ID to provision
        #
        #   @param id [String] Unique identifier for the subscription
        #
        #   @param addons [Array<Stigg::Models::V1::SubscriptionProvisionParams::Addon>]
        #
        #   @param applied_coupon [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon] Coupon configuration
        #
        #   @param await_payment_confirmation [Boolean] Whether to wait for payment confirmation before returning the subscription
        #
        #   @param billing_country_code [String, nil] The ISO 3166-1 alpha-2 country code for billing
        #
        #   @param billing_cycle_anchor [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingCycleAnchor] Billing cycle anchor behavior for the subscription
        #
        #   @param billing_id [String, nil] External billing system identifier
        #
        #   @param billing_information [Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation]
        #
        #   @param billing_period [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingPeriod] Billing period (MONTHLY or ANNUALLY)
        #
        #   @param budget [Stigg::Models::V1::SubscriptionProvisionParams::Budget, nil]
        #
        #   @param charges [Array<Stigg::Models::V1::SubscriptionProvisionParams::Charge>]
        #
        #   @param checkout_options [Stigg::Models::V1::SubscriptionProvisionParams::CheckoutOptions] Checkout page configuration for payment collection
        #
        #   @param entitlements [Array<Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Credit>]
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        #   @param minimum_spend [Stigg::Models::V1::SubscriptionProvisionParams::MinimumSpend, nil] Minimum spend amount
        #
        #   @param paying_customer_id [String, nil] Optional paying customer ID for split billing scenarios
        #
        #   @param payment_collection_method [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PaymentCollectionMethod] How payments should be collected for this subscription
        #
        #   @param price_overrides [Array<Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride>]
        #
        #   @param resource_id [String, nil] Optional resource ID for multi-instance subscriptions
        #
        #   @param salesforce_id [String, nil] Salesforce ID
        #
        #   @param schedule_strategy [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::ScheduleStrategy] Strategy for scheduling subscription changes
        #
        #   @param start_date [Time] Subscription start date
        #
        #   @param trial_override_configuration [Stigg::Models::V1::SubscriptionProvisionParams::TrialOverrideConfiguration] Trial period override settings
        #
        #   @param unit_quantity [Float]
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
          #   Billing provider coupon ID
          #
          #   @return [String, nil]
          optional :billing_coupon_id, String, api_name: :billingCouponId

          # @!attribute configuration
          #   Coupon timing configuration
          #
          #   @return [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration, nil]
          optional :configuration, -> { Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration }

          # @!attribute coupon_id
          #   Stigg coupon ID
          #
          #   @return [String, nil]
          optional :coupon_id, String, api_name: :couponId

          # @!attribute discount
          #   Ad-hoc discount configuration
          #
          #   @return [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Discount, nil]
          optional :discount, -> { Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount }

          # @!attribute promotion_code
          #   Promotion code to apply
          #
          #   @return [String, nil]
          optional :promotion_code, String, api_name: :promotionCode

          # @!method initialize(billing_coupon_id: nil, configuration: nil, coupon_id: nil, discount: nil, promotion_code: nil)
          #   Coupon configuration
          #
          #   @param billing_coupon_id [String] Billing provider coupon ID
          #
          #   @param configuration [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration] Coupon timing configuration
          #
          #   @param coupon_id [String] Stigg coupon ID
          #
          #   @param discount [Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Discount] Ad-hoc discount configuration
          #
          #   @param promotion_code [String] Promotion code to apply

          # @see Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon#configuration
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

          # @see Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon#discount
          class Discount < Stigg::Internal::Type::BaseModel
            # @!attribute amounts_off
            #   Fixed amounts off by currency
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff>, nil]
            optional :amounts_off,
                     -> {
                       Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff]
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
            #   @param amounts_off [Array<Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff>, nil] Fixed amounts off by currency
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
              #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency]
              required :currency,
                       enum: -> { Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency }

              # @!method initialize(amount:, currency:)
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency] The price currency

              # The price currency
              #
              # @see Stigg::Models::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff#currency
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

        # Billing cycle anchor behavior for the subscription
        module BillingCycleAnchor
          extend Stigg::Internal::Type::Enum

          UNCHANGED = :UNCHANGED
          NOW = :NOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class BillingInformation < Stigg::Internal::Type::BaseModel
          # @!attribute billing_address
          #   Billing address for the subscription
          #
          #   @return [Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress, nil]
          optional :billing_address,
                   -> { Stigg::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress },
                   api_name: :billingAddress

          # @!attribute charge_on_behalf_of_account
          #   Stripe Connect account to charge on behalf of
          #
          #   @return [String, nil]
          optional :charge_on_behalf_of_account, String, api_name: :chargeOnBehalfOfAccount, nil?: true

          # @!attribute integration_id
          #   Billing integration identifier
          #
          #   @return [String, nil]
          optional :integration_id, String, api_name: :integrationId, nil?: true

          # @!attribute invoice_days_until_due
          #   Number of days until invoice is due
          #
          #   @return [Float, nil]
          optional :invoice_days_until_due, Float, api_name: :invoiceDaysUntilDue

          # @!attribute is_backdated
          #   Whether the subscription is backdated
          #
          #   @return [Boolean, nil]
          optional :is_backdated, Stigg::Internal::Type::Boolean, api_name: :isBackdated

          # @!attribute is_invoice_paid
          #   Whether the invoice is marked as paid
          #
          #   @return [Boolean, nil]
          optional :is_invoice_paid, Stigg::Internal::Type::Boolean, api_name: :isInvoicePaid

          # @!attribute metadata
          #   Additional metadata for the subscription
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute proration_behavior
          #   How to handle proration for billing changes
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior, nil]
          optional :proration_behavior,
                   enum: -> { Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior },
                   api_name: :prorationBehavior

          # @!attribute tax_ids
          #   Customer tax identification numbers
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation::TaxID>, nil]
          optional :tax_ids,
                   -> {
                     Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionProvisionParams::BillingInformation::TaxID]
                   },
                   api_name: :taxIds

          # @!attribute tax_percentage
          #   Tax percentage (0-100)
          #
          #   @return [Float, nil]
          optional :tax_percentage, Float, api_name: :taxPercentage

          # @!attribute tax_rate_ids
          #   Tax rate identifiers to apply
          #
          #   @return [Array<String>, nil]
          optional :tax_rate_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :taxRateIds

          # @!method initialize(billing_address: nil, charge_on_behalf_of_account: nil, integration_id: nil, invoice_days_until_due: nil, is_backdated: nil, is_invoice_paid: nil, metadata: nil, proration_behavior: nil, tax_ids: nil, tax_percentage: nil, tax_rate_ids: nil)
          #   @param billing_address [Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress] Billing address for the subscription
          #
          #   @param charge_on_behalf_of_account [String, nil] Stripe Connect account to charge on behalf of
          #
          #   @param integration_id [String, nil] Billing integration identifier
          #
          #   @param invoice_days_until_due [Float] Number of days until invoice is due
          #
          #   @param is_backdated [Boolean] Whether the subscription is backdated
          #
          #   @param is_invoice_paid [Boolean] Whether the invoice is marked as paid
          #
          #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
          #
          #   @param proration_behavior [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior] How to handle proration for billing changes
          #
          #   @param tax_ids [Array<Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation::TaxID>] Customer tax identification numbers
          #
          #   @param tax_percentage [Float] Tax percentage (0-100)
          #
          #   @param tax_rate_ids [Array<String>] Tax rate identifiers to apply

          # @see Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation#billing_address
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
            #   Billing address for the subscription
            #
            #   @param city [String]
            #   @param country [String]
            #   @param line1 [String]
            #   @param line2 [String]
            #   @param postal_code [String]
            #   @param state [String]
          end

          # How to handle proration for billing changes
          #
          # @see Stigg::Models::V1::SubscriptionProvisionParams::BillingInformation#proration_behavior
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
            #   The type of tax exemption identifier, such as VAT.
            #
            #   @return [String]
            required :type, String

            # @!attribute value
            #   The actual tax identifier value
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   @param type [String] The type of tax exemption identifier, such as VAT.
            #
            #   @param value [String] The actual tax identifier value
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
          #   Charge quantity
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute type
          #   Charge type
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Charge::Type]
          required :type, enum: -> { Stigg::V1::SubscriptionProvisionParams::Charge::Type }

          # @!method initialize(id:, quantity:, type:)
          #   Charge item
          #
          #   @param id [String] Charge ID
          #
          #   @param quantity [Float] Charge quantity
          #
          #   @param type [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Charge::Type] Charge type

          # Charge type
          #
          # @see Stigg::Models::V1::SubscriptionProvisionParams::Charge#type
          module Type
            extend Stigg::Internal::Type::Enum

            FEATURE = :FEATURE
            CREDIT = :CREDIT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CheckoutOptions < Stigg::Internal::Type::BaseModel
          # @!attribute cancel_url
          #   URL to redirect to if checkout is canceled
          #
          #   @return [String]
          required :cancel_url, String, api_name: :cancelUrl

          # @!attribute success_url
          #   URL to redirect to after successful checkout
          #
          #   @return [String]
          required :success_url, String, api_name: :successUrl

          # @!attribute allow_promo_codes
          #   Allow promotional codes during checkout
          #
          #   @return [Boolean, nil]
          optional :allow_promo_codes, Stigg::Internal::Type::Boolean, api_name: :allowPromoCodes

          # @!attribute allow_tax_id_collection
          #   Allow tax ID collection during checkout
          #
          #   @return [Boolean, nil]
          optional :allow_tax_id_collection, Stigg::Internal::Type::Boolean, api_name: :allowTaxIdCollection

          # @!attribute collect_billing_address
          #   Collect billing address during checkout
          #
          #   @return [Boolean, nil]
          optional :collect_billing_address, Stigg::Internal::Type::Boolean, api_name: :collectBillingAddress

          # @!attribute collect_phone_number
          #   Collect phone number during checkout
          #
          #   @return [Boolean, nil]
          optional :collect_phone_number, Stigg::Internal::Type::Boolean, api_name: :collectPhoneNumber

          # @!attribute reference_id
          #   Optional reference ID for the checkout session
          #
          #   @return [String, nil]
          optional :reference_id, String, api_name: :referenceId, nil?: true

          # @!method initialize(cancel_url:, success_url:, allow_promo_codes: nil, allow_tax_id_collection: nil, collect_billing_address: nil, collect_phone_number: nil, reference_id: nil)
          #   Checkout page configuration for payment collection
          #
          #   @param cancel_url [String] URL to redirect to if checkout is canceled
          #
          #   @param success_url [String] URL to redirect to after successful checkout
          #
          #   @param allow_promo_codes [Boolean] Allow promotional codes during checkout
          #
          #   @param allow_tax_id_collection [Boolean] Allow tax ID collection during checkout
          #
          #   @param collect_billing_address [Boolean] Collect billing address during checkout
          #
          #   @param collect_phone_number [Boolean] Collect phone number during checkout
          #
          #   @param reference_id [String, nil] Optional reference ID for the checkout session
        end

        # Feature entitlement configuration for a subscription
        module Entitlement
          extend Stigg::Internal::Type::Union

          discriminator :type

          # Feature entitlement configuration for a subscription
          variant :FEATURE, -> { Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature }

          # Credit entitlement configuration for a subscription
          variant :CREDIT, -> { Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit }

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
            #   @return [Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration, nil]
            optional :monthly_reset_period_configuration,
                     -> {
                       Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration
                     },
                     api_name: :monthlyResetPeriodConfiguration,
                     nil?: true

            # @!attribute reset_period
            #   Period at which usage resets
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod, nil]
            optional :reset_period,
                     enum: -> { Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod },
                     api_name: :resetPeriod

            # @!attribute usage_limit
            #   Maximum allowed usage for the feature
            #
            #   @return [Integer, nil]
            optional :usage_limit, Integer, api_name: :usageLimit

            # @!attribute weekly_reset_period_configuration
            #   Configuration for weekly reset period
            #
            #   @return [Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration, nil]
            optional :weekly_reset_period_configuration,
                     -> {
                       Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration
                     },
                     api_name: :weeklyResetPeriodConfiguration,
                     nil?: true

            # @!attribute yearly_reset_period_configuration
            #   Configuration for yearly reset period
            #
            #   @return [Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration, nil]
            optional :yearly_reset_period_configuration,
                     -> {
                       Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration
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
            #   @param monthly_reset_period_configuration [Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration, nil] Configuration for monthly reset period
            #
            #   @param reset_period [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod] Period at which usage resets
            #
            #   @param usage_limit [Integer] Maximum allowed usage for the feature
            #
            #   @param weekly_reset_period_configuration [Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration, nil] Configuration for weekly reset period
            #
            #   @param yearly_reset_period_configuration [Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration, nil] Configuration for yearly reset period
            #
            #   @param type [Symbol, :FEATURE] SubscriptionFeatureEntitlementRequest

            # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature#monthly_reset_period_configuration
            class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Configuration for monthly reset period
              #
              #   @param according_to [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration#according_to
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
            # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature#reset_period
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

            # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature#weekly_reset_period_configuration
            class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or specific day)
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Configuration for weekly reset period
              #
              #   @param according_to [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or specific day)

              # Reset anchor (SubscriptionStart or specific day)
              #
              # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration#according_to
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

            # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature#yearly_reset_period_configuration
            class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart)
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   Configuration for yearly reset period
              #
              #   @param according_to [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart)

              # Reset anchor (SubscriptionStart)
              #
              # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration#according_to
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
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence]
            required :cadence, enum: -> { Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence }

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
            #   @param cadence [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence] Credit grant cadence (MONTH or YEAR)
            #
            #   @param type [Symbol, :CREDIT] SubscriptionCreditEntitlementRequest

            # Credit grant cadence (MONTH or YEAR)
            #
            # @see Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Credit#cadence
            module Cadence
              extend Stigg::Internal::Type::Enum

              MONTH = :MONTH
              YEAR = :YEAR

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Feature, Stigg::Models::V1::SubscriptionProvisionParams::Entitlement::Credit)]
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
          #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::MinimumSpend::Currency, nil]
          optional :currency, enum: -> { Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency }

          # @!method initialize(amount: nil, currency: nil)
          #   Minimum spend amount
          #
          #   @param amount [Float] The price amount
          #
          #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::MinimumSpend::Currency] The price currency

          # The price currency
          #
          # @see Stigg::Models::V1::SubscriptionProvisionParams::MinimumSpend#currency
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

        # How payments should be collected for this subscription
        module PaymentCollectionMethod
          extend Stigg::Internal::Type::Enum

          CHARGE = :CHARGE
          INVOICE = :INVOICE
          NONE = :NONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class PriceOverride < Stigg::Internal::Type::BaseModel
          # @!attribute addon_id
          #   Addon identifier for the price override
          #
          #   @return [String, nil]
          optional :addon_id, String, api_name: :addonId, nil?: true

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

          # @!attribute billing_country_code
          #   The billing country code of the price
          #
          #   @return [String, nil]
          optional :billing_country_code, String, api_name: :billingCountryCode

          # @!attribute block_size
          #   Block size for pricing
          #
          #   @return [Float, nil]
          optional :block_size, Float, api_name: :blockSize

          # @!attribute credit_grant_cadence
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence, nil]
          optional :credit_grant_cadence,
                   enum: -> { Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence },
                   api_name: :creditGrantCadence

          # @!attribute credit_rate
          #
          #   @return [Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::CreditRate, nil]
          optional :credit_rate,
                   -> { Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditRate },
                   api_name: :creditRate

          # @!attribute currency
          #   The price currency
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Currency, nil]
          optional :currency, enum: -> { Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency }

          # @!attribute feature_id
          #   Feature identifier for the price override
          #
          #   @return [String, nil]
          optional :feature_id, String, api_name: :featureId, nil?: true

          # @!attribute tiers
          #   Pricing tiers configuration
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier>, nil]
          optional :tiers,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier] }

          # @!method initialize(addon_id: nil, amount: nil, base_charge: nil, billing_country_code: nil, block_size: nil, credit_grant_cadence: nil, credit_rate: nil, currency: nil, feature_id: nil, tiers: nil)
          #   @param addon_id [String, nil] Addon identifier for the price override
          #
          #   @param amount [Float] The price amount
          #
          #   @param base_charge [Boolean] Whether this is a base charge override
          #
          #   @param billing_country_code [String] The billing country code of the price
          #
          #   @param block_size [Float] Block size for pricing
          #
          #   @param credit_grant_cadence [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence]
          #
          #   @param credit_rate [Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::CreditRate]
          #
          #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Currency] The price currency
          #
          #   @param feature_id [String, nil] Feature identifier for the price override
          #
          #   @param tiers [Array<Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier>] Pricing tiers configuration

          # @see Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride#credit_grant_cadence
          module CreditGrantCadence
            extend Stigg::Internal::Type::Enum

            BEGINNING_OF_BILLING_PERIOD = :BEGINNING_OF_BILLING_PERIOD
            MONTHLY = :MONTHLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride#credit_rate
          class CreditRate < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The credit rate amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute currency_id
            #   The custom currency refId for the credit rate
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute cost_formula
            #   A custom formula for calculating cost based on single event dimensions
            #
            #   @return [String, nil]
            optional :cost_formula, String, api_name: :costFormula, nil?: true

            # @!method initialize(amount:, currency_id:, cost_formula: nil)
            #   @param amount [Float] The credit rate amount
            #
            #   @param currency_id [String] The custom currency refId for the credit rate
            #
            #   @param cost_formula [String, nil] A custom formula for calculating cost based on single event dimensions
          end

          # The price currency
          #
          # @see Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride#currency
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

          class Tier < Stigg::Internal::Type::BaseModel
            # @!attribute flat_price
            #   The flat fee price of the price tier
            #
            #   @return [Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice, nil]
            optional :flat_price,
                     -> { Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice },
                     api_name: :flatPrice

            # @!attribute unit_price
            #   The unit price of the price tier
            #
            #   @return [Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice, nil]
            optional :unit_price,
                     -> { Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice },
                     api_name: :unitPrice

            # @!attribute up_to
            #   The up to quantity of the price tier
            #
            #   @return [Float, nil]
            optional :up_to, Float, api_name: :upTo

            # @!method initialize(flat_price: nil, unit_price: nil, up_to: nil)
            #   @param flat_price [Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice] The flat fee price of the price tier
            #
            #   @param unit_price [Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice] The unit price of the price tier
            #
            #   @param up_to [Float] The up to quantity of the price tier

            # @see Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier#flat_price
            class FlatPrice < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   The price currency
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency]
              required :currency,
                       enum: -> { Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency }

              # @!method initialize(amount:, currency:)
              #   The flat fee price of the price tier
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency] The price currency

              # The price currency
              #
              # @see Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice#currency
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

            # @see Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier#unit_price
            class UnitPrice < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   The price currency
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency]
              required :currency,
                       enum: -> { Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency }

              # @!method initialize(amount:, currency:)
              #   The unit price of the price tier
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency] The price currency

              # The price currency
              #
              # @see Stigg::Models::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice#currency
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

        # Strategy for scheduling subscription changes
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
          #   Whether the subscription should start with a trial period
          #
          #   @return [Boolean]
          required :is_trial, Stigg::Internal::Type::Boolean, api_name: :isTrial

          # @!attribute trial_end_behavior
          #   Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior, nil]
          optional :trial_end_behavior,
                   enum: -> {
                     Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior
                   },
                   api_name: :trialEndBehavior

          # @!attribute trial_end_date
          #   Custom trial end date
          #
          #   @return [Time, nil]
          optional :trial_end_date, Time, api_name: :trialEndDate

          # @!method initialize(is_trial:, trial_end_behavior: nil, trial_end_date: nil)
          #   Trial period override settings
          #
          #   @param is_trial [Boolean] Whether the subscription should start with a trial period
          #
          #   @param trial_end_behavior [Symbol, Stigg::Models::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior] Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          #
          #   @param trial_end_date [Time] Custom trial end date

          # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          #
          # @see Stigg::Models::V1::SubscriptionProvisionParams::TrialOverrideConfiguration#trial_end_behavior
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
