# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#delegate
      class SubscriptionDelegateResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Stigg::Models::V1::SubscriptionDelegateResponse::Data]
        required :data, -> { Stigg::Models::V1::SubscriptionDelegateResponse::Data }

        # @!method initialize(data:)
        #   @param data [Stigg::Models::V1::SubscriptionDelegateResponse::Data]

        # @see Stigg::Models::V1::SubscriptionDelegateResponse#data
        class Data < Stigg::Internal::Type::BaseModel
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
          #   @return [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::PaymentCollection]
          required :payment_collection,
                   enum: -> { Stigg::Models::V1::SubscriptionDelegateResponse::Data::PaymentCollection },
                   api_name: :paymentCollection

          # @!attribute plan_id
          #   Plan ID
          #
          #   @return [String]
          required :plan_id, String, api_name: :planId

          # @!attribute pricing_type
          #   Pricing type
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::PricingType]
          required :pricing_type,
                   enum: -> { Stigg::Models::V1::SubscriptionDelegateResponse::Data::PricingType },
                   api_name: :pricingType

          # @!attribute start_date
          #   Subscription start date
          #
          #   @return [Time]
          required :start_date, Time, api_name: :startDate

          # @!attribute status
          #   Subscription status
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::Status]
          required :status, enum: -> { Stigg::Models::V1::SubscriptionDelegateResponse::Data::Status }

          # @!attribute cancellation_date
          #   Subscription cancellation date
          #
          #   @return [Time, nil]
          optional :cancellation_date, Time, api_name: :cancellationDate, nil?: true

          # @!attribute cancel_reason
          #   Subscription cancel reason
          #
          #   @return [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::CancelReason, nil]
          optional :cancel_reason,
                   enum: -> { Stigg::Models::V1::SubscriptionDelegateResponse::Data::CancelReason },
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
          #   @return [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::PaymentCollectionMethod, nil]
          optional :payment_collection_method,
                   enum: -> { Stigg::Models::V1::SubscriptionDelegateResponse::Data::PaymentCollectionMethod },
                   api_name: :paymentCollectionMethod,
                   nil?: true

          # @!attribute prices
          #
          #   @return [Array<Stigg::Models::V1::SubscriptionDelegateResponse::Data::Price>, nil]
          optional :prices,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::SubscriptionDelegateResponse::Data::Price] }

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

          # @!attribute unit_quantity
          #
          #   @return [Float, nil]
          optional :unit_quantity, Float, api_name: :unitQuantity

          # @!method initialize(id:, billing_id:, created_at:, customer_id:, payment_collection:, plan_id:, pricing_type:, start_date:, status:, cancellation_date: nil, cancel_reason: nil, current_billing_period_end: nil, current_billing_period_start: nil, effective_end_date: nil, end_date: nil, metadata: nil, paying_customer_id: nil, payment_collection_method: nil, prices: nil, resource_id: nil, trial_end_date: nil, unit_quantity: nil)
          #   @param id [String] Subscription ID
          #
          #   @param billing_id [String, nil] Billing ID
          #
          #   @param created_at [Time] Created at
          #
          #   @param customer_id [String] Customer ID
          #
          #   @param payment_collection [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::PaymentCollection] Payment collection
          #
          #   @param plan_id [String] Plan ID
          #
          #   @param pricing_type [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::PricingType] Pricing type
          #
          #   @param start_date [Time] Subscription start date
          #
          #   @param status [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::Status] Subscription status
          #
          #   @param cancellation_date [Time, nil] Subscription cancellation date
          #
          #   @param cancel_reason [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::CancelReason, nil] Subscription cancel reason
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
          #   @param payment_collection_method [Symbol, Stigg::Models::V1::SubscriptionDelegateResponse::Data::PaymentCollectionMethod, nil] The method used to collect payments for a subscription
          #
          #   @param prices [Array<Stigg::Models::V1::SubscriptionDelegateResponse::Data::Price>]
          #
          #   @param resource_id [String, nil] Resource ID
          #
          #   @param trial_end_date [Time, nil] Subscription trial end date
          #
          #   @param unit_quantity [Float]

          # Payment collection
          #
          # @see Stigg::Models::V1::SubscriptionDelegateResponse::Data#payment_collection
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
          # @see Stigg::Models::V1::SubscriptionDelegateResponse::Data#pricing_type
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
          # @see Stigg::Models::V1::SubscriptionDelegateResponse::Data#status
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
          # @see Stigg::Models::V1::SubscriptionDelegateResponse::Data#cancel_reason
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
          # @see Stigg::Models::V1::SubscriptionDelegateResponse::Data#payment_collection_method
          module PaymentCollectionMethod
            extend Stigg::Internal::Type::Enum

            CHARGE = :CHARGE
            INVOICE = :INVOICE
            NONE = :NONE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Price < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Price ID
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #   Creation timestamp
            #
            #   @return [String]
            required :created_at, String, api_name: :createdAt

            # @!attribute updated_at
            #   Last update timestamp
            #
            #   @return [String]
            required :updated_at, String, api_name: :updatedAt

            # @!method initialize(id:, created_at:, updated_at:)
            #   @param id [String] Price ID
            #
            #   @param created_at [String] Creation timestamp
            #
            #   @param updated_at [String] Last update timestamp
          end
        end
      end
    end
  end
end
