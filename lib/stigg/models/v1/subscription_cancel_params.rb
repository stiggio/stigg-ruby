# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#cancel
      class SubscriptionCancelParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute cancellation_action
        #   Action on cancellation (downgrade or revoke)
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationAction, nil]
        optional :cancellation_action,
                 enum: -> { Stigg::V1::SubscriptionCancelParams::CancellationAction },
                 api_name: :cancellationAction

        # @!attribute cancellation_time
        #   When to cancel (immediate, period end, or date)
        #
        #   @return [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationTime, nil]
        optional :cancellation_time,
                 enum: -> { Stigg::V1::SubscriptionCancelParams::CancellationTime },
                 api_name: :cancellationTime

        # @!attribute end_date
        #   Subscription end date
        #
        #   @return [Time, nil]
        optional :end_date, Time, api_name: :endDate

        # @!attribute prorate
        #   If set, enables or disables prorating of credits on subscription cancellation.
        #
        #   @return [Boolean, nil]
        optional :prorate, Stigg::Internal::Type::Boolean

        # @!method initialize(cancellation_action: nil, cancellation_time: nil, end_date: nil, prorate: nil, request_options: {})
        #   @param cancellation_action [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationAction] Action on cancellation (downgrade or revoke)
        #
        #   @param cancellation_time [Symbol, Stigg::Models::V1::SubscriptionCancelParams::CancellationTime] When to cancel (immediate, period end, or date)
        #
        #   @param end_date [Time] Subscription end date
        #
        #   @param prorate [Boolean] If set, enables or disables prorating of credits on subscription cancellation.
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # Action on cancellation (downgrade or revoke)
        module CancellationAction
          extend Stigg::Internal::Type::Enum

          DEFAULT = :DEFAULT
          REVOKE_ENTITLEMENTS = :REVOKE_ENTITLEMENTS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When to cancel (immediate, period end, or date)
        module CancellationTime
          extend Stigg::Internal::Type::Enum

          END_OF_BILLING_PERIOD = :END_OF_BILLING_PERIOD
          IMMEDIATE = :IMMEDIATE
          SPECIFIC_DATE = :SPECIFIC_DATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
