# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Credits#list_ledger
        class CreditListLedgerResponse < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   The credit amount for this event
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute credit_currency_id
          #   The credit currency ID
          #
          #   @return [String]
          required :credit_currency_id, String, api_name: :creditCurrencyId

          # @!attribute credit_grant_id
          #   The credit grant ID associated with this event
          #
          #   @return [String]
          required :credit_grant_id, String, api_name: :creditGrantId

          # @!attribute customer_id
          #   The customer ID this event belongs to
          #
          #   @return [String]
          required :customer_id, String, api_name: :customerId

          # @!attribute event_id
          #   The unique event identifier
          #
          #   @return [String, nil]
          required :event_id, String, api_name: :eventId, nil?: true

          # @!attribute event_type
          #   The type of credit event
          #
          #   @return [Symbol, Stigg::Models::V1::Events::CreditListLedgerResponse::EventType]
          required :event_type,
                   enum: -> { Stigg::Models::V1::Events::CreditListLedgerResponse::EventType },
                   api_name: :eventType

          # @!attribute feature_id
          #   The feature ID associated with this event
          #
          #   @return [String, nil]
          required :feature_id, String, api_name: :featureId, nil?: true

          # @!attribute resource_id
          #   The resource ID this event is scoped to
          #
          #   @return [String, nil]
          required :resource_id, String, api_name: :resourceId, nil?: true

          # @!attribute timestamp
          #   The timestamp when the event occurred
          #
          #   @return [Time]
          required :timestamp, Time

          # @!method initialize(amount:, credit_currency_id:, credit_grant_id:, customer_id:, event_id:, event_type:, feature_id:, resource_id:, timestamp:)
          #   A credit ledger event representing a change to credit balance
          #
          #   @param amount [Float] The credit amount for this event
          #
          #   @param credit_currency_id [String] The credit currency ID
          #
          #   @param credit_grant_id [String] The credit grant ID associated with this event
          #
          #   @param customer_id [String] The customer ID this event belongs to
          #
          #   @param event_id [String, nil] The unique event identifier
          #
          #   @param event_type [Symbol, Stigg::Models::V1::Events::CreditListLedgerResponse::EventType] The type of credit event
          #
          #   @param feature_id [String, nil] The feature ID associated with this event
          #
          #   @param resource_id [String, nil] The resource ID this event is scoped to
          #
          #   @param timestamp [Time] The timestamp when the event occurred

          # The type of credit event
          #
          # @see Stigg::Models::V1::Events::CreditListLedgerResponse#event_type
          module EventType
            extend Stigg::Internal::Type::Enum

            CREDITS_GRANTED = :CREDITS_GRANTED
            CREDITS_EXPIRED = :CREDITS_EXPIRED
            CREDITS_CONSUMED = :CREDITS_CONSUMED
            CREDITS_VOIDED = :CREDITS_VOIDED
            CREDITS_UPDATED = :CREDITS_UPDATED
            CREDITS_CONSUMPTION_TRANSFER_SOURCE = :CREDITS_CONSUMPTION_TRANSFER_SOURCE
            CREDITS_CONSUMPTION_TRANSFER_TARGET = :CREDITS_CONSUMPTION_TRANSFER_TARGET

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
