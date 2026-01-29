# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#provision
      class SubscriptionProvisionResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Provisioning result with status and subscription or checkout URL.
        #
        #   @return [Stigg::Models::V1::SubscriptionProvisionResponse::Data]
        required :data, -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::SubscriptionProvisionResponse::Data] Provisioning result with status and subscription or checkout URL.

        # @see Stigg::Models::V1::SubscriptionProvisionResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the provisioned subscription
          #
          #   @return [String]
          required :id, String

          # @!attribute entitlements
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement>]
          required :entitlements,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement] }

          # @!attribute status
          #   Provision status: SUCCESS or PAYMENT_REQUIRED
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status]
          required :status, enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status }

          # @!attribute checkout_billing_id
          #   Checkout billing ID when payment is required
          #
          #   @return [String, nil]
          optional :checkout_billing_id, String, api_name: :checkoutBillingId, nil?: true

          # @!attribute checkout_url
          #   URL to complete payment when PAYMENT_REQUIRED
          #
          #   @return [String, nil]
          optional :checkout_url, String, api_name: :checkoutUrl, nil?: true

          # @!attribute is_scheduled
          #   Whether the subscription is scheduled for future activation
          #
          #   @return [Boolean, nil]
          optional :is_scheduled, Stigg::Internal::Type::Boolean, api_name: :isScheduled

          # @!attribute subscription
          #   Created subscription (when status is SUCCESS)
          #
          #   @return [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription, nil]
          optional :subscription, -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription }

          # @!method initialize(id:, entitlements:, status:, checkout_billing_id: nil, checkout_url: nil, is_scheduled: nil, subscription: nil)
          #   Provisioning result with status and subscription or checkout URL.
          #
          #   @param id [String] Unique identifier for the provisioned subscription
          #
          #   @param entitlements [Array<Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement>]
          #
          #   @param status [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Status] Provision status: SUCCESS or PAYMENT_REQUIRED
          #
          #   @param checkout_billing_id [String, nil] Checkout billing ID when payment is required
          #
          #   @param checkout_url [String, nil] URL to complete payment when PAYMENT_REQUIRED
          #
          #   @param is_scheduled [Boolean] Whether the subscription is scheduled for future activation
          #
          #   @param subscription [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription] Created subscription (when status is SUCCESS)

          class Entitlement < Stigg::Internal::Type::BaseModel
            # @!attribute access_denied_reason
            #
            #   @return [String, nil]
            optional :access_denied_reason, String, api_name: :accessDeniedReason, nil?: true

            # @!attribute current_usage
            #
            #   @return [Float, nil]
            optional :current_usage, Float, api_name: :currentUsage

            # @!attribute entitlement_updated_at
            #   entitlement updated at
            #
            #   @return [Time, nil]
            optional :entitlement_updated_at, Time, api_name: :entitlementUpdatedAt, nil?: true

            # @!attribute feature
            #
            #   @return [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::Feature, nil]
            optional :feature,
                     -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::Feature },
                     nil?: true

            # @!attribute has_unlimited_usage
            #
            #   @return [Boolean, nil]
            optional :has_unlimited_usage,
                     Stigg::Internal::Type::Boolean,
                     api_name: :hasUnlimitedUsage,
                     nil?: true

            # @!attribute is_granted
            #
            #   @return [Boolean, nil]
            optional :is_granted, Stigg::Internal::Type::Boolean, api_name: :isGranted

            # @!attribute reset_period
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::ResetPeriod, nil]
            optional :reset_period,
                     enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::ResetPeriod },
                     api_name: :resetPeriod,
                     nil?: true

            # @!attribute usage_limit
            #
            #   @return [Float, nil]
            optional :usage_limit, Float, api_name: :usageLimit, nil?: true

            # @!attribute usage_period_anchor
            #   usage period anchor
            #
            #   @return [Time, nil]
            optional :usage_period_anchor, Time, api_name: :usagePeriodAnchor, nil?: true

            # @!attribute usage_period_end
            #   usage period end
            #
            #   @return [Time, nil]
            optional :usage_period_end, Time, api_name: :usagePeriodEnd, nil?: true

            # @!attribute usage_period_start
            #   usage period start
            #
            #   @return [Time, nil]
            optional :usage_period_start, Time, api_name: :usagePeriodStart, nil?: true

            # @!method initialize(access_denied_reason: nil, current_usage: nil, entitlement_updated_at: nil, feature: nil, has_unlimited_usage: nil, is_granted: nil, reset_period: nil, usage_limit: nil, usage_period_anchor: nil, usage_period_end: nil, usage_period_start: nil)
            #   @param access_denied_reason [String, nil]
            #
            #   @param current_usage [Float]
            #
            #   @param entitlement_updated_at [Time, nil] entitlement updated at
            #
            #   @param feature [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::Feature, nil]
            #
            #   @param has_unlimited_usage [Boolean, nil]
            #
            #   @param is_granted [Boolean]
            #
            #   @param reset_period [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement::ResetPeriod, nil]
            #
            #   @param usage_limit [Float, nil]
            #
            #   @param usage_period_anchor [Time, nil] usage period anchor
            #
            #   @param usage_period_end [Time, nil] usage period end
            #
            #   @param usage_period_start [Time, nil] usage period start

            # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement#feature
            class Feature < Stigg::Internal::Type::BaseModel
              # @!attribute ref_id
              #   Feature ID
              #
              #   @return [String]
              required :ref_id, String, api_name: :refId

              # @!method initialize(ref_id:)
              #   @param ref_id [String] Feature ID
            end

            # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Entitlement#reset_period
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
          end

          # Provision status: SUCCESS or PAYMENT_REQUIRED
          #
          # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data#status
          module Status
            extend Stigg::Internal::Type::Enum

            SUCCESS = :SUCCESS
            PAYMENT_REQUIRED = :PAYMENT_REQUIRED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data#subscription
          class Subscription < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Subscription ID
            #
            #   @return [String]
            required :id, String

            # @!attribute billing_id
            #   Billing ID
            #
            #   @return [String, nil]
            required :billing_id, String, api_name: :billingId, nil?: true

            # @!attribute created_at
            #   Created at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute customer_id
            #   Customer ID
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute payment_collection
            #   Payment collection
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection]
            required :payment_collection,
                     enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection },
                     api_name: :paymentCollection

            # @!attribute plan_id
            #   Plan ID
            #
            #   @return [String]
            required :plan_id, String, api_name: :planId

            # @!attribute pricing_type
            #   Pricing type
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType]
            required :pricing_type,
                     enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType },
                     api_name: :pricingType

            # @!attribute start_date
            #   Subscription start date
            #
            #   @return [Time]
            required :start_date, Time, api_name: :startDate

            # @!attribute status
            #   Subscription status
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status]
            required :status,
                     enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status }

            # @!attribute cancellation_date
            #   Subscription cancellation date
            #
            #   @return [Time, nil]
            optional :cancellation_date, Time, api_name: :cancellationDate, nil?: true

            # @!attribute cancel_reason
            #   Subscription cancel reason
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason, nil]
            optional :cancel_reason,
                     enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason },
                     api_name: :cancelReason,
                     nil?: true

            # @!attribute current_billing_period_end
            #   End of the current billing period
            #
            #   @return [Time, nil]
            optional :current_billing_period_end, Time, api_name: :currentBillingPeriodEnd, nil?: true

            # @!attribute current_billing_period_start
            #   Start of the current billing period
            #
            #   @return [Time, nil]
            optional :current_billing_period_start, Time, api_name: :currentBillingPeriodStart, nil?: true

            # @!attribute effective_end_date
            #   Subscription effective end date
            #
            #   @return [Time, nil]
            optional :effective_end_date, Time, api_name: :effectiveEndDate, nil?: true

            # @!attribute end_date
            #   Subscription end date
            #
            #   @return [Time, nil]
            optional :end_date, Time, api_name: :endDate, nil?: true

            # @!attribute metadata
            #   Additional metadata for the subscription
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute paying_customer_id
            #   Paying customer ID for delegated billing
            #
            #   @return [String, nil]
            optional :paying_customer_id, String, api_name: :payingCustomerId, nil?: true

            # @!attribute payment_collection_method
            #   The method used to collect payments for a subscription
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod, nil]
            optional :payment_collection_method,
                     enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod },
                     api_name: :paymentCollectionMethod,
                     nil?: true

            # @!attribute prices
            #
            #   @return [Array<Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price>, nil]
            optional :prices,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price] }

            # @!attribute resource_id
            #   Resource ID
            #
            #   @return [String, nil]
            optional :resource_id, String, api_name: :resourceId, nil?: true

            # @!attribute trial_end_date
            #   Subscription trial end date
            #
            #   @return [Time, nil]
            optional :trial_end_date, Time, api_name: :trialEndDate, nil?: true

            # @!method initialize(id:, billing_id:, created_at:, customer_id:, payment_collection:, plan_id:, pricing_type:, start_date:, status:, cancellation_date: nil, cancel_reason: nil, current_billing_period_end: nil, current_billing_period_start: nil, effective_end_date: nil, end_date: nil, metadata: nil, paying_customer_id: nil, payment_collection_method: nil, prices: nil, resource_id: nil, trial_end_date: nil)
            #   Created subscription (when status is SUCCESS)
            #
            #   @param id [String] Subscription ID
            #
            #   @param billing_id [String, nil] Billing ID
            #
            #   @param created_at [Time] Created at
            #
            #   @param customer_id [String] Customer ID
            #
            #   @param payment_collection [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollection] Payment collection
            #
            #   @param plan_id [String] Plan ID
            #
            #   @param pricing_type [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PricingType] Pricing type
            #
            #   @param start_date [Time] Subscription start date
            #
            #   @param status [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Status] Subscription status
            #
            #   @param cancellation_date [Time, nil] Subscription cancellation date
            #
            #   @param cancel_reason [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::CancelReason, nil] Subscription cancel reason
            #
            #   @param current_billing_period_end [Time, nil] End of the current billing period
            #
            #   @param current_billing_period_start [Time, nil] Start of the current billing period
            #
            #   @param effective_end_date [Time, nil] Subscription effective end date
            #
            #   @param end_date [Time, nil] Subscription end date
            #
            #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
            #
            #   @param paying_customer_id [String, nil] Paying customer ID for delegated billing
            #
            #   @param payment_collection_method [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::PaymentCollectionMethod, nil] The method used to collect payments for a subscription
            #
            #   @param prices [Array<Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price>]
            #
            #   @param resource_id [String, nil] Resource ID
            #
            #   @param trial_end_date [Time, nil] Subscription trial end date

            # Payment collection
            #
            # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription#payment_collection
            module PaymentCollection
              extend Stigg::Internal::Type::Enum

              NOT_REQUIRED = :NOT_REQUIRED
              PROCESSING = :PROCESSING
              FAILED = :FAILED
              ACTION_REQUIRED = :ACTION_REQUIRED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Pricing type
            #
            # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription#pricing_type
            module PricingType
              extend Stigg::Internal::Type::Enum

              FREE = :FREE
              PAID = :PAID
              CUSTOM = :CUSTOM

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Subscription status
            #
            # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription#status
            module Status
              extend Stigg::Internal::Type::Enum

              PAYMENT_PENDING = :PAYMENT_PENDING
              ACTIVE = :ACTIVE
              EXPIRED = :EXPIRED
              IN_TRIAL = :IN_TRIAL
              CANCELED = :CANCELED
              NOT_STARTED = :NOT_STARTED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Subscription cancel reason
            #
            # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription#cancel_reason
            module CancelReason
              extend Stigg::Internal::Type::Enum

              UPGRADE_OR_DOWNGRADE = :UPGRADE_OR_DOWNGRADE
              CANCELLED_BY_BILLING = :CANCELLED_BY_BILLING
              EXPIRED = :EXPIRED
              DETACH_BILLING = :DETACH_BILLING
              TRIAL_ENDED = :TRIAL_ENDED
              IMMEDIATE = :Immediate
              TRIAL_CONVERTED = :TRIAL_CONVERTED
              PENDING_PAYMENT_EXPIRED = :PENDING_PAYMENT_EXPIRED
              SCHEDULED_CANCELLATION = :ScheduledCancellation
              CUSTOMER_ARCHIVED = :CustomerArchived
              AUTO_CANCELLATION_RULE = :AutoCancellationRule

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The method used to collect payments for a subscription
            #
            # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription#payment_collection_method
            module PaymentCollectionMethod
              extend Stigg::Internal::Type::Enum

              CHARGE = :CHARGE
              INVOICE = :INVOICE
              NONE = :NONE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class Price < Stigg::Internal::Type::BaseModel
              # @!attribute addon_id
              #   Addon identifier for the price override
              #
              #   @return [String, nil]
              optional :addon_id, String, api_name: :addonId, nil?: true

              # @!attribute base_charge
              #   Whether this is a base charge override
              #
              #   @return [Boolean, nil]
              optional :base_charge, Stigg::Internal::Type::Boolean, api_name: :baseCharge

              # @!attribute block_size
              #   Block size for pricing
              #
              #   @return [Float, nil]
              optional :block_size, Float, api_name: :blockSize

              # @!attribute feature_id
              #   Feature identifier for the price override
              #
              #   @return [String, nil]
              optional :feature_id, String, api_name: :featureId, nil?: true

              # @!attribute price
              #   Override price amount
              #
              #   @return [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price, nil]
              optional :price, -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price }

              # @!attribute tiers
              #   Pricing tiers configuration
              #
              #   @return [Array<Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier>, nil]
              optional :tiers,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier] }

              # @!method initialize(addon_id: nil, base_charge: nil, block_size: nil, feature_id: nil, price: nil, tiers: nil)
              #   @param addon_id [String, nil] Addon identifier for the price override
              #
              #   @param base_charge [Boolean] Whether this is a base charge override
              #
              #   @param block_size [Float] Block size for pricing
              #
              #   @param feature_id [String, nil] Feature identifier for the price override
              #
              #   @param price [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price] Override price amount
              #
              #   @param tiers [Array<Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier>] Pricing tiers configuration

              # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price#price
              class Price < Stigg::Internal::Type::BaseModel
                # @!attribute amount
                #   The price amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute billing_country_code
                #   The billing country code of the price
                #
                #   @return [String, nil]
                optional :billing_country_code, String, api_name: :billingCountryCode, nil?: true

                # @!attribute currency
                #   The price currency
                #
                #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency, nil]
                optional :currency,
                         enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency }

                # @!method initialize(amount: nil, billing_country_code: nil, currency: nil)
                #   Override price amount
                #
                #   @param amount [Float] The price amount
                #
                #   @param billing_country_code [String, nil] The billing country code of the price
                #
                #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price::Currency] The price currency

                # The price currency
                #
                # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Price#currency
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
                #   The flat fee price of the price tier
                #
                #   @return [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice, nil]
                optional :flat_price,
                         -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice },
                         api_name: :flatPrice

                # @!attribute unit_price
                #   The unit price of the price tier
                #
                #   @return [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice, nil]
                optional :unit_price,
                         -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice },
                         api_name: :unitPrice

                # @!attribute up_to
                #   The up to quantity of the price tier
                #
                #   @return [Float, nil]
                optional :up_to, Float, api_name: :upTo

                # @!method initialize(flat_price: nil, unit_price: nil, up_to: nil)
                #   @param flat_price [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice] The flat fee price of the price tier
                #
                #   @param unit_price [Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice] The unit price of the price tier
                #
                #   @param up_to [Float] The up to quantity of the price tier

                # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier#flat_price
                class FlatPrice < Stigg::Internal::Type::BaseModel
                  # @!attribute amount
                  #   The price amount
                  #
                  #   @return [Float, nil]
                  optional :amount, Float

                  # @!attribute billing_country_code
                  #   The billing country code of the price
                  #
                  #   @return [String, nil]
                  optional :billing_country_code, String, api_name: :billingCountryCode, nil?: true

                  # @!attribute currency
                  #   The price currency
                  #
                  #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency, nil]
                  optional :currency,
                           enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency }

                  # @!method initialize(amount: nil, billing_country_code: nil, currency: nil)
                  #   The flat fee price of the price tier
                  #
                  #   @param amount [Float] The price amount
                  #
                  #   @param billing_country_code [String, nil] The billing country code of the price
                  #
                  #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice::Currency] The price currency

                  # The price currency
                  #
                  # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::FlatPrice#currency
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

                # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier#unit_price
                class UnitPrice < Stigg::Internal::Type::BaseModel
                  # @!attribute amount
                  #   The price amount
                  #
                  #   @return [Float, nil]
                  optional :amount, Float

                  # @!attribute billing_country_code
                  #   The billing country code of the price
                  #
                  #   @return [String, nil]
                  optional :billing_country_code, String, api_name: :billingCountryCode, nil?: true

                  # @!attribute currency
                  #   The price currency
                  #
                  #   @return [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency, nil]
                  optional :currency,
                           enum: -> { Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency }

                  # @!method initialize(amount: nil, billing_country_code: nil, currency: nil)
                  #   The unit price of the price tier
                  #
                  #   @param amount [Float] The price amount
                  #
                  #   @param billing_country_code [String, nil] The billing country code of the price
                  #
                  #   @param currency [Symbol, Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice::Currency] The price currency

                  # The price currency
                  #
                  # @see Stigg::Models::V1::SubscriptionProvisionResponse::Data::Subscription::Price::Tier::UnitPrice#currency
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
          end
        end
      end
    end
  end
end
