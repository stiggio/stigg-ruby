# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Products#list_products
      class ProductListProductsResponse < Stigg::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the entity
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the record was created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute description
        #   Description of the product
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute display_name
        #   Display name of the product
        #
        #   @return [String]
        required :display_name, String, api_name: :displayName

        # @!attribute metadata
        #   Metadata associated with the entity
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute multiple_subscriptions
        #   Indicates if multiple subscriptions to this product are allowed
        #
        #   @return [Boolean]
        required :multiple_subscriptions, Stigg::Internal::Type::Boolean, api_name: :multipleSubscriptions

        # @!attribute status
        #   The status of the product
        #
        #   @return [Symbol, Stigg::Models::V1::ProductListProductsResponse::Status]
        required :status, enum: -> { Stigg::Models::V1::ProductListProductsResponse::Status }

        # @!attribute updated_at
        #   Timestamp of when the record was last updated
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute product_settings
        #   Product behavior settings for subscription lifecycle management.
        #
        #   @return [Stigg::Models::V1::ProductListProductsResponse::ProductSettings, nil]
        optional :product_settings,
                 -> { Stigg::Models::V1::ProductListProductsResponse::ProductSettings },
                 api_name: :productSettings

        # @!method initialize(id:, created_at:, description:, display_name:, metadata:, multiple_subscriptions:, status:, updated_at:, product_settings: nil)
        #   Product configuration object
        #
        #   @param id [String] The unique identifier for the entity
        #
        #   @param created_at [Time] Timestamp of when the record was created
        #
        #   @param description [String, nil] Description of the product
        #
        #   @param display_name [String] Display name of the product
        #
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
        #
        #   @param multiple_subscriptions [Boolean] Indicates if multiple subscriptions to this product are allowed
        #
        #   @param status [Symbol, Stigg::Models::V1::ProductListProductsResponse::Status] The status of the product
        #
        #   @param updated_at [Time] Timestamp of when the record was last updated
        #
        #   @param product_settings [Stigg::Models::V1::ProductListProductsResponse::ProductSettings] Product behavior settings for subscription lifecycle management.

        # The status of the product
        #
        # @see Stigg::Models::V1::ProductListProductsResponse#status
        module Status
          extend Stigg::Internal::Type::Enum

          PUBLISHED = :PUBLISHED
          ARCHIVED = :ARCHIVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Stigg::Models::V1::ProductListProductsResponse#product_settings
        class ProductSettings < Stigg::Internal::Type::BaseModel
          # @!attribute subscription_cancellation_time
          #   Time when the subscription will be cancelled
          #
          #   @return [Symbol, Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime]
          required :subscription_cancellation_time,
                   enum: -> { Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime },
                   api_name: :subscriptionCancellationTime

          # @!attribute subscription_end_setup
          #   Setup for the end of the subscription
          #
          #   @return [Symbol, Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup]
          required :subscription_end_setup,
                   enum: -> { Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup },
                   api_name: :subscriptionEndSetup

          # @!attribute subscription_start_setup
          #   Setup for the start of the subscription
          #
          #   @return [Symbol, Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup]
          required :subscription_start_setup,
                   enum: -> { Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup },
                   api_name: :subscriptionStartSetup

          # @!attribute downgrade_plan_id
          #   ID of the plan to downgrade to at the end of the billing period
          #
          #   @return [String, nil]
          optional :downgrade_plan_id, String, api_name: :downgradePlanId, nil?: true

          # @!attribute prorate_at_end_of_billing_period
          #   Indicates if the subscription should be prorated at the end of the billing
          #   period
          #
          #   @return [Boolean, nil]
          optional :prorate_at_end_of_billing_period,
                   Stigg::Internal::Type::Boolean,
                   api_name: :prorateAtEndOfBillingPeriod,
                   nil?: true

          # @!attribute subscription_start_plan_id
          #   ID of the plan to start the subscription with
          #
          #   @return [String, nil]
          optional :subscription_start_plan_id, String, api_name: :subscriptionStartPlanId, nil?: true

          # @!method initialize(subscription_cancellation_time:, subscription_end_setup:, subscription_start_setup:, downgrade_plan_id: nil, prorate_at_end_of_billing_period: nil, subscription_start_plan_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::ProductListProductsResponse::ProductSettings} for more
          #   details.
          #
          #   Product behavior settings for subscription lifecycle management.
          #
          #   @param subscription_cancellation_time [Symbol, Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionCancellationTime] Time when the subscription will be cancelled
          #
          #   @param subscription_end_setup [Symbol, Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionEndSetup] Setup for the end of the subscription
          #
          #   @param subscription_start_setup [Symbol, Stigg::Models::V1::ProductListProductsResponse::ProductSettings::SubscriptionStartSetup] Setup for the start of the subscription
          #
          #   @param downgrade_plan_id [String, nil] ID of the plan to downgrade to at the end of the billing period
          #
          #   @param prorate_at_end_of_billing_period [Boolean, nil] Indicates if the subscription should be prorated at the end of the billing perio
          #
          #   @param subscription_start_plan_id [String, nil] ID of the plan to start the subscription with

          # Time when the subscription will be cancelled
          #
          # @see Stigg::Models::V1::ProductListProductsResponse::ProductSettings#subscription_cancellation_time
          module SubscriptionCancellationTime
            extend Stigg::Internal::Type::Enum

            END_OF_BILLING_PERIOD = :END_OF_BILLING_PERIOD
            IMMEDIATE = :IMMEDIATE
            SPECIFIC_DATE = :SPECIFIC_DATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Setup for the end of the subscription
          #
          # @see Stigg::Models::V1::ProductListProductsResponse::ProductSettings#subscription_end_setup
          module SubscriptionEndSetup
            extend Stigg::Internal::Type::Enum

            DOWNGRADE_TO_FREE = :DOWNGRADE_TO_FREE
            CANCEL_SUBSCRIPTION = :CANCEL_SUBSCRIPTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Setup for the start of the subscription
          #
          # @see Stigg::Models::V1::ProductListProductsResponse::ProductSettings#subscription_start_setup
          module SubscriptionStartSetup
            extend Stigg::Internal::Type::Enum

            PLAN_SELECTION = :PLAN_SELECTION
            TRIAL_PERIOD = :TRIAL_PERIOD
            FREE_PLAN = :FREE_PLAN

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
