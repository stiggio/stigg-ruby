# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#list
      class SubscriptionListResponse < Stigg::Internal::Type::BaseModel
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
        #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::PaymentCollection]
        required :payment_collection,
                 enum: -> { Stigg::Models::V1::SubscriptionListResponse::PaymentCollection },
                 api_name: :paymentCollection

        # @!attribute plan_id
        #   Plan ID
        #
        #   @return [String]
        required :plan_id, String, api_name: :planId

        # @!attribute pricing_type
        #   Pricing type
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::PricingType]
        required :pricing_type,
                 enum: -> { Stigg::Models::V1::SubscriptionListResponse::PricingType },
                 api_name: :pricingType

        # @!attribute start_date
        #   Subscription start date
        #
        #   @return [Time]
        required :start_date, Time, api_name: :startDate

        # @!attribute status
        #   Subscription status
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::Status]
        required :status, enum: -> { Stigg::Models::V1::SubscriptionListResponse::Status }

        # @!attribute addons
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionListResponse::Addon>, nil]
        optional :addons,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::Addon] }

        # @!attribute billing_cycle_anchor
        #   Billing cycle anchor date
        #
        #   @return [Time, nil]
        optional :billing_cycle_anchor, Time, api_name: :billingCycleAnchor, nil?: true

        # @!attribute budget
        #   Budget configuration
        #
        #   @return [Stigg::Models::V1::SubscriptionListResponse::Budget, nil]
        optional :budget, -> { Stigg::Models::V1::SubscriptionListResponse::Budget }, nil?: true

        # @!attribute cancellation_date
        #   Subscription cancellation date
        #
        #   @return [Time, nil]
        optional :cancellation_date, Time, api_name: :cancellationDate, nil?: true

        # @!attribute cancel_reason
        #   Subscription cancel reason
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::CancelReason, nil]
        optional :cancel_reason,
                 enum: -> { Stigg::Models::V1::SubscriptionListResponse::CancelReason },
                 api_name: :cancelReason,
                 nil?: true

        # @!attribute coupons
        #   Coupons applied to the subscription
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionListResponse::Coupon>, nil]
        optional :coupons,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::Coupon] }

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

        # @!attribute future_updates
        #   Scheduled future updates for the subscription
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionListResponse::FutureUpdate>, nil]
        optional :future_updates,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::FutureUpdate] },
                 api_name: :futureUpdates

        # @!attribute latest_invoice
        #   Latest invoice for the subscription
        #
        #   @return [Stigg::Models::V1::SubscriptionListResponse::LatestInvoice, nil]
        optional :latest_invoice,
                 -> { Stigg::Models::V1::SubscriptionListResponse::LatestInvoice },
                 api_name: :latestInvoice,
                 nil?: true

        # @!attribute metadata
        #   Additional metadata for the subscription
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute minimum_spend
        #   Minimum spend configuration
        #
        #   @return [Stigg::Models::V1::SubscriptionListResponse::MinimumSpend, nil]
        optional :minimum_spend,
                 -> { Stigg::Models::V1::SubscriptionListResponse::MinimumSpend },
                 api_name: :minimumSpend,
                 nil?: true

        # @!attribute paying_customer_id
        #   Paying customer ID for delegated billing
        #
        #   @return [String, nil]
        optional :paying_customer_id, String, api_name: :payingCustomerId, nil?: true

        # @!attribute payment_collection_method
        #   The method used to collect payments for a subscription
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::PaymentCollectionMethod, nil]
        optional :payment_collection_method,
                 enum: -> { Stigg::Models::V1::SubscriptionListResponse::PaymentCollectionMethod },
                 api_name: :paymentCollectionMethod,
                 nil?: true

        # @!attribute prices
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionListResponse::Price>, nil]
        optional :prices,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::Price] }

        # @!attribute resource_id
        #   Resource ID
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId, nil?: true

        # @!attribute subscription_entitlements
        #   Entitlements associated with the subscription
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionListResponse::SubscriptionEntitlement>, nil]
        optional :subscription_entitlements,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::SubscriptionEntitlement] },
                 api_name: :subscriptionEntitlements

        # @!attribute trial
        #   Trial configuration
        #
        #   @return [Stigg::Models::V1::SubscriptionListResponse::Trial, nil]
        optional :trial, -> { Stigg::Models::V1::SubscriptionListResponse::Trial }, nil?: true

        # @!attribute trial_end_date
        #   Subscription trial end date
        #
        #   @return [Time, nil]
        optional :trial_end_date, Time, api_name: :trialEndDate, nil?: true

        # @!method initialize(id:, billing_id:, created_at:, customer_id:, payment_collection:, plan_id:, pricing_type:, start_date:, status:, addons: nil, billing_cycle_anchor: nil, budget: nil, cancellation_date: nil, cancel_reason: nil, coupons: nil, current_billing_period_end: nil, current_billing_period_start: nil, effective_end_date: nil, end_date: nil, future_updates: nil, latest_invoice: nil, metadata: nil, minimum_spend: nil, paying_customer_id: nil, payment_collection_method: nil, prices: nil, resource_id: nil, subscription_entitlements: nil, trial: nil, trial_end_date: nil)
        #   Customer subscription to a plan
        #
        #   @param id [String] Subscription ID
        #
        #   @param billing_id [String, nil] Billing ID
        #
        #   @param created_at [Time] Created at
        #
        #   @param customer_id [String] Customer ID
        #
        #   @param payment_collection [Symbol, Stigg::Models::V1::SubscriptionListResponse::PaymentCollection] Payment collection
        #
        #   @param plan_id [String] Plan ID
        #
        #   @param pricing_type [Symbol, Stigg::Models::V1::SubscriptionListResponse::PricingType] Pricing type
        #
        #   @param start_date [Time] Subscription start date
        #
        #   @param status [Symbol, Stigg::Models::V1::SubscriptionListResponse::Status] Subscription status
        #
        #   @param addons [Array<Stigg::Models::V1::SubscriptionListResponse::Addon>]
        #
        #   @param billing_cycle_anchor [Time, nil] Billing cycle anchor date
        #
        #   @param budget [Stigg::Models::V1::SubscriptionListResponse::Budget, nil] Budget configuration
        #
        #   @param cancellation_date [Time, nil] Subscription cancellation date
        #
        #   @param cancel_reason [Symbol, Stigg::Models::V1::SubscriptionListResponse::CancelReason, nil] Subscription cancel reason
        #
        #   @param coupons [Array<Stigg::Models::V1::SubscriptionListResponse::Coupon>] Coupons applied to the subscription
        #
        #   @param current_billing_period_end [Time, nil] End of the current billing period
        #
        #   @param current_billing_period_start [Time, nil] Start of the current billing period
        #
        #   @param effective_end_date [Time, nil] Subscription effective end date
        #
        #   @param end_date [Time, nil] Subscription end date
        #
        #   @param future_updates [Array<Stigg::Models::V1::SubscriptionListResponse::FutureUpdate>] Scheduled future updates for the subscription
        #
        #   @param latest_invoice [Stigg::Models::V1::SubscriptionListResponse::LatestInvoice, nil] Latest invoice for the subscription
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
        #
        #   @param minimum_spend [Stigg::Models::V1::SubscriptionListResponse::MinimumSpend, nil] Minimum spend configuration
        #
        #   @param paying_customer_id [String, nil] Paying customer ID for delegated billing
        #
        #   @param payment_collection_method [Symbol, Stigg::Models::V1::SubscriptionListResponse::PaymentCollectionMethod, nil] The method used to collect payments for a subscription
        #
        #   @param prices [Array<Stigg::Models::V1::SubscriptionListResponse::Price>]
        #
        #   @param resource_id [String, nil] Resource ID
        #
        #   @param subscription_entitlements [Array<Stigg::Models::V1::SubscriptionListResponse::SubscriptionEntitlement>] Entitlements associated with the subscription
        #
        #   @param trial [Stigg::Models::V1::SubscriptionListResponse::Trial, nil] Trial configuration
        #
        #   @param trial_end_date [Time, nil] Subscription trial end date

        # Payment collection
        #
        # @see Stigg::Models::V1::SubscriptionListResponse#payment_collection
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
        # @see Stigg::Models::V1::SubscriptionListResponse#pricing_type
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
        # @see Stigg::Models::V1::SubscriptionListResponse#status
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

        # @see Stigg::Models::V1::SubscriptionListResponse#budget
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
          #   Budget configuration
          #
          #   @param has_soft_limit [Boolean] Whether the budget is a soft limit
          #
          #   @param limit [Float] Maximum spending limit
        end

        # Subscription cancel reason
        #
        # @see Stigg::Models::V1::SubscriptionListResponse#cancel_reason
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

        class Coupon < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Coupon ID
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Coupon name
          #
          #   @return [String]
          required :name, String

          # @!attribute status
          #   Coupon status
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::Coupon::Status]
          required :status, enum: -> { Stigg::Models::V1::SubscriptionListResponse::Coupon::Status }

          # @!attribute amounts_off
          #   Fixed amount discounts by currency
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionListResponse::Coupon::AmountsOff>, nil]
          optional :amounts_off,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::Coupon::AmountsOff] },
                   api_name: :amountsOff,
                   nil?: true

          # @!attribute percent_off
          #   Percentage discount
          #
          #   @return [Float, nil]
          optional :percent_off, Float, api_name: :percentOff, nil?: true

          # @!method initialize(id:, name:, status:, amounts_off: nil, percent_off: nil)
          #   Coupon applied to a subscription
          #
          #   @param id [String] Coupon ID
          #
          #   @param name [String] Coupon name
          #
          #   @param status [Symbol, Stigg::Models::V1::SubscriptionListResponse::Coupon::Status] Coupon status
          #
          #   @param amounts_off [Array<Stigg::Models::V1::SubscriptionListResponse::Coupon::AmountsOff>, nil] Fixed amount discounts by currency
          #
          #   @param percent_off [Float, nil] Percentage discount

          # Coupon status
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::Coupon#status
          module Status
            extend Stigg::Internal::Type::Enum

            ACTIVE = :ACTIVE
            EXPIRED = :EXPIRED
            REMOVED = :REMOVED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class AmountsOff < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The price amount
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute currency
            #   The price currency
            #
            #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::Coupon::AmountsOff::Currency, nil]
            optional :currency, enum: -> { Stigg::Models::V1::SubscriptionListResponse::Coupon::AmountsOff::Currency }

            # @!method initialize(amount: nil, currency: nil)
            #   @param amount [Float] The price amount
            #
            #   @param currency [Symbol, Stigg::Models::V1::SubscriptionListResponse::Coupon::AmountsOff::Currency] The price currency

            # The price currency
            #
            # @see Stigg::Models::V1::SubscriptionListResponse::Coupon::AmountsOff#currency
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

        class FutureUpdate < Stigg::Internal::Type::BaseModel
          # @!attribute scheduled_execution_time
          #   Scheduled execution time
          #
          #   @return [Time]
          required :scheduled_execution_time, Time, api_name: :scheduledExecutionTime

          # @!attribute schedule_status
          #   Status of the scheduled update
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::ScheduleStatus]
          required :schedule_status,
                   enum: -> { Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::ScheduleStatus },
                   api_name: :scheduleStatus

          # @!attribute subscription_schedule_type
          #   Type of scheduled change
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::SubscriptionScheduleType]
          required :subscription_schedule_type,
                   enum: -> { Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::SubscriptionScheduleType },
                   api_name: :subscriptionScheduleType

          # @!attribute target_package
          #   Target package for the update
          #
          #   @return [Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::TargetPackage, nil]
          optional :target_package,
                   -> { Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::TargetPackage },
                   api_name: :targetPackage,
                   nil?: true

          # @!method initialize(scheduled_execution_time:, schedule_status:, subscription_schedule_type:, target_package: nil)
          #   Scheduled subscription update
          #
          #   @param scheduled_execution_time [Time] Scheduled execution time
          #
          #   @param schedule_status [Symbol, Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::ScheduleStatus] Status of the scheduled update
          #
          #   @param subscription_schedule_type [Symbol, Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::SubscriptionScheduleType] Type of scheduled change
          #
          #   @param target_package [Stigg::Models::V1::SubscriptionListResponse::FutureUpdate::TargetPackage, nil] Target package for the update

          # Status of the scheduled update
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::FutureUpdate#schedule_status
          module ScheduleStatus
            extend Stigg::Internal::Type::Enum

            PENDING_PAYMENT = :PENDING_PAYMENT
            SCHEDULED = :SCHEDULED
            CANCELED = :CANCELED
            DONE = :DONE
            FAILED = :FAILED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Type of scheduled change
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::FutureUpdate#subscription_schedule_type
          module SubscriptionScheduleType
            extend Stigg::Internal::Type::Enum

            DOWNGRADE = :DOWNGRADE
            PLAN = :PLAN
            BILLING_PERIOD = :BILLING_PERIOD
            UNIT_AMOUNT = :UNIT_AMOUNT
            RECURRING_CREDITS = :RECURRING_CREDITS
            PRICE_OVERRIDE = :PRICE_OVERRIDE
            ADDON = :ADDON
            COUPON = :COUPON
            MIGRATE_TO_LATEST = :MIGRATE_TO_LATEST
            ADDITIONAL_META_DATA = :ADDITIONAL_META_DATA
            BILLING_INFO_METADATA = :BILLING_INFO_METADATA

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Stigg::Models::V1::SubscriptionListResponse::FutureUpdate#target_package
          class TargetPackage < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Target package for the update
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   Target package for the update
            #
            #   @param id [String] Target package for the update
          end
        end

        # @see Stigg::Models::V1::SubscriptionListResponse#latest_invoice
        class LatestInvoice < Stigg::Internal::Type::BaseModel
          # @!attribute billing_id
          #   Invoice billing ID
          #
          #   @return [String]
          required :billing_id, String, api_name: :billingId

          # @!attribute created_at
          #   Invoice creation date
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute requires_action
          #   Whether payment requires action
          #
          #   @return [Boolean]
          required :requires_action, Stigg::Internal::Type::Boolean, api_name: :requiresAction

          # @!attribute status
          #   Invoice status
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::LatestInvoice::Status]
          required :status, enum: -> { Stigg::Models::V1::SubscriptionListResponse::LatestInvoice::Status }

          # @!attribute amount_due
          #   Amount due
          #
          #   @return [Float, nil]
          optional :amount_due, Float, api_name: :amountDue, nil?: true

          # @!attribute billing_reason
          #   Billing reason
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::LatestInvoice::BillingReason, nil]
          optional :billing_reason,
                   enum: -> { Stigg::Models::V1::SubscriptionListResponse::LatestInvoice::BillingReason },
                   api_name: :billingReason,
                   nil?: true

          # @!attribute currency
          #   Invoice currency
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute pdf_url
          #   Invoice PDF URL
          #
          #   @return [String, nil]
          optional :pdf_url, String, api_name: :pdfUrl, nil?: true

          # @!attribute total
          #   Total amount
          #
          #   @return [Float, nil]
          optional :total, Float, nil?: true

          # @!method initialize(billing_id:, created_at:, requires_action:, status:, amount_due: nil, billing_reason: nil, currency: nil, pdf_url: nil, total: nil)
          #   Latest invoice for the subscription
          #
          #   @param billing_id [String] Invoice billing ID
          #
          #   @param created_at [Time] Invoice creation date
          #
          #   @param requires_action [Boolean] Whether payment requires action
          #
          #   @param status [Symbol, Stigg::Models::V1::SubscriptionListResponse::LatestInvoice::Status] Invoice status
          #
          #   @param amount_due [Float, nil] Amount due
          #
          #   @param billing_reason [Symbol, Stigg::Models::V1::SubscriptionListResponse::LatestInvoice::BillingReason, nil] Billing reason
          #
          #   @param currency [String, nil] Invoice currency
          #
          #   @param pdf_url [String, nil] Invoice PDF URL
          #
          #   @param total [Float, nil] Total amount

          # Invoice status
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::LatestInvoice#status
          module Status
            extend Stigg::Internal::Type::Enum

            OPEN = :OPEN
            CANCELED = :CANCELED
            PAID = :PAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Billing reason
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::LatestInvoice#billing_reason
          module BillingReason
            extend Stigg::Internal::Type::Enum

            BILLING_CYCLE = :BILLING_CYCLE
            SUBSCRIPTION_CREATION = :SUBSCRIPTION_CREATION
            SUBSCRIPTION_UPDATE = :SUBSCRIPTION_UPDATE
            MANUAL = :MANUAL
            MINIMUM_INVOICE_AMOUNT_EXCEEDED = :MINIMUM_INVOICE_AMOUNT_EXCEEDED
            OTHER = :OTHER

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Stigg::Models::V1::SubscriptionListResponse#minimum_spend
        class MinimumSpend < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   The price amount
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute currency
          #   The price currency
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::MinimumSpend::Currency, nil]
          optional :currency, enum: -> { Stigg::Models::V1::SubscriptionListResponse::MinimumSpend::Currency }

          # @!method initialize(amount: nil, currency: nil)
          #   Minimum spend configuration
          #
          #   @param amount [Float] The price amount
          #
          #   @param currency [Symbol, Stigg::Models::V1::SubscriptionListResponse::MinimumSpend::Currency] The price currency

          # The price currency
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::MinimumSpend#currency
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

        # The method used to collect payments for a subscription
        #
        # @see Stigg::Models::V1::SubscriptionListResponse#payment_collection_method
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

          # @!attribute currency
          #   The price currency
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::Price::Currency, nil]
          optional :currency, enum: -> { Stigg::Models::V1::SubscriptionListResponse::Price::Currency }

          # @!attribute feature_id
          #   Feature identifier for the price override
          #
          #   @return [String, nil]
          optional :feature_id, String, api_name: :featureId, nil?: true

          # @!attribute tiers
          #   Pricing tiers configuration
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionListResponse::Price::Tier>, nil]
          optional :tiers,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionListResponse::Price::Tier] }

          # @!method initialize(addon_id: nil, amount: nil, base_charge: nil, billing_country_code: nil, block_size: nil, currency: nil, feature_id: nil, tiers: nil)
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
          #   @param currency [Symbol, Stigg::Models::V1::SubscriptionListResponse::Price::Currency] The price currency
          #
          #   @param feature_id [String, nil] Feature identifier for the price override
          #
          #   @param tiers [Array<Stigg::Models::V1::SubscriptionListResponse::Price::Tier>] Pricing tiers configuration

          # The price currency
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::Price#currency
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
            #   @return [Stigg::Models::V1::SubscriptionListResponse::Price::Tier::FlatPrice, nil]
            optional :flat_price,
                     -> { Stigg::Models::V1::SubscriptionListResponse::Price::Tier::FlatPrice },
                     api_name: :flatPrice

            # @!attribute unit_price
            #   The unit price of the price tier
            #
            #   @return [Stigg::Models::V1::SubscriptionListResponse::Price::Tier::UnitPrice, nil]
            optional :unit_price,
                     -> { Stigg::Models::V1::SubscriptionListResponse::Price::Tier::UnitPrice },
                     api_name: :unitPrice

            # @!attribute up_to
            #   The up to quantity of the price tier
            #
            #   @return [Float, nil]
            optional :up_to, Float, api_name: :upTo

            # @!method initialize(flat_price: nil, unit_price: nil, up_to: nil)
            #   @param flat_price [Stigg::Models::V1::SubscriptionListResponse::Price::Tier::FlatPrice] The flat fee price of the price tier
            #
            #   @param unit_price [Stigg::Models::V1::SubscriptionListResponse::Price::Tier::UnitPrice] The unit price of the price tier
            #
            #   @param up_to [Float] The up to quantity of the price tier

            # @see Stigg::Models::V1::SubscriptionListResponse::Price::Tier#flat_price
            class FlatPrice < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   ISO 4217 currency code
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::Price::Tier::FlatPrice::Currency]
              required :currency,
                       enum: -> { Stigg::Models::V1::SubscriptionListResponse::Price::Tier::FlatPrice::Currency }

              # @!method initialize(amount:, currency:)
              #   The flat fee price of the price tier
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::SubscriptionListResponse::Price::Tier::FlatPrice::Currency] ISO 4217 currency code

              # ISO 4217 currency code
              #
              # @see Stigg::Models::V1::SubscriptionListResponse::Price::Tier::FlatPrice#currency
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

            # @see Stigg::Models::V1::SubscriptionListResponse::Price::Tier#unit_price
            class UnitPrice < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   ISO 4217 currency code
              #
              #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::Price::Tier::UnitPrice::Currency]
              required :currency,
                       enum: -> { Stigg::Models::V1::SubscriptionListResponse::Price::Tier::UnitPrice::Currency }

              # @!method initialize(amount:, currency:)
              #   The unit price of the price tier
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::SubscriptionListResponse::Price::Tier::UnitPrice::Currency] ISO 4217 currency code

              # ISO 4217 currency code
              #
              # @see Stigg::Models::V1::SubscriptionListResponse::Price::Tier::UnitPrice#currency
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

        class SubscriptionEntitlement < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Feature ID or currency ID
          #
          #   @return [String]
          required :id, String

          # @!attribute type
          #   Entitlement type (FEATURE or CREDIT)
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::SubscriptionEntitlement::Type]
          required :type, enum: -> { Stigg::Models::V1::SubscriptionListResponse::SubscriptionEntitlement::Type }

          # @!method initialize(id:, type:)
          #   Subscription entitlement reference
          #
          #   @param id [String] Feature ID or currency ID
          #
          #   @param type [Symbol, Stigg::Models::V1::SubscriptionListResponse::SubscriptionEntitlement::Type] Entitlement type (FEATURE or CREDIT)

          # Entitlement type (FEATURE or CREDIT)
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::SubscriptionEntitlement#type
          module Type
            extend Stigg::Internal::Type::Enum

            FEATURE = :FEATURE
            CREDIT = :CREDIT

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Stigg::Models::V1::SubscriptionListResponse#trial
        class Trial < Stigg::Internal::Type::BaseModel
          # @!attribute trial_end_behavior
          #   Behavior when the trial ends
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionListResponse::Trial::TrialEndBehavior]
          required :trial_end_behavior,
                   enum: -> { Stigg::Models::V1::SubscriptionListResponse::Trial::TrialEndBehavior },
                   api_name: :trialEndBehavior

          # @!method initialize(trial_end_behavior:)
          #   Trial configuration
          #
          #   @param trial_end_behavior [Symbol, Stigg::Models::V1::SubscriptionListResponse::Trial::TrialEndBehavior] Behavior when the trial ends

          # Behavior when the trial ends
          #
          # @see Stigg::Models::V1::SubscriptionListResponse::Trial#trial_end_behavior
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
