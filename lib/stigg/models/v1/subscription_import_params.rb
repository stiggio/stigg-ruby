# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#import
      class SubscriptionImportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute subscriptions
        #   List of subscription objects to import
        #
        #   @return [Array<Stigg::Models::V1::SubscriptionImportParams::Subscription>]
        required :subscriptions,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::SubscriptionImportParams::Subscription] }

        # @!attribute integration_id
        #   Integration ID to use for importing subscriptions
        #
        #   @return [String, nil]
        optional :integration_id, String, api_name: :integrationId, nil?: true

        # @!method initialize(subscriptions:, integration_id: nil, request_options: {})
        #   @param subscriptions [Array<Stigg::Models::V1::SubscriptionImportParams::Subscription>] List of subscription objects to import
        #
        #   @param integration_id [String, nil] Integration ID to use for importing subscriptions
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class Subscription < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Subscription ID
          #
          #   @return [String]
          required :id, String

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

          # @!attribute billing_id
          #   Billing ID
          #
          #   @return [String, nil]
          optional :billing_id, String, api_name: :billingId, nil?: true

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

          # @!attribute resource_id
          #   Resource ID
          #
          #   @return [String, nil]
          optional :resource_id, String, api_name: :resourceId, nil?: true

          # @!attribute start_date
          #   Subscription start date
          #
          #   @return [Time, nil]
          optional :start_date, Time, api_name: :startDate

          # @!method initialize(id:, customer_id:, plan_id:, billing_id: nil, end_date: nil, metadata: nil, resource_id: nil, start_date: nil)
          #   @param id [String] Subscription ID
          #
          #   @param customer_id [String] Customer ID
          #
          #   @param plan_id [String] Plan ID
          #
          #   @param billing_id [String, nil] Billing ID
          #
          #   @param end_date [Time, nil] Subscription end date
          #
          #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
          #
          #   @param resource_id [String, nil] Resource ID
          #
          #   @param start_date [Time] Subscription start date
        end
      end
    end
  end
end
