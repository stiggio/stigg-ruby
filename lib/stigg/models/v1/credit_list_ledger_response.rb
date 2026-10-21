# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Credits#list_ledger
      class CreditListLedgerResponse < Stigg::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount of the ledger event. Reservation events carry their net effect on the
        #   balance: a reserve is negative, and so is a release that consumed more than was
        #   held
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute breakdown
        #   On a released reservation, the credits consumed from each grant
        #
        #   @return [Array<Stigg::Models::V1::CreditListLedgerResponse::Breakdown>, nil]
        required :breakdown,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CreditListLedgerResponse::Breakdown] },
                 nil?: true

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
        #   @return [Symbol, Stigg::Models::V1::CreditListLedgerResponse::EventType]
        required :event_type,
                 enum: -> { Stigg::Models::V1::CreditListLedgerResponse::EventType },
                 api_name: :eventType

        # @!attribute feature_id
        #   The feature ID associated with this event
        #
        #   @return [String, nil]
        required :feature_id, String, api_name: :featureId, nil?: true

        # @!attribute hold_returned_amount
        #   On a released reservation, the held amount returned to the balance before
        #   consumed credits are deducted
        #
        #   @return [Float, nil]
        required :hold_returned_amount, Float, api_name: :holdReturnedAmount, nil?: true

        # @!attribute metadata
        #   The metadata sent with the credit reservation
        #
        #   @return [Hash{Symbol=>String}, nil]
        required :metadata, Stigg::Internal::Type::HashOf[String], nil?: true

        # @!attribute reservation_id
        #   The credit reservation this event belongs to
        #
        #   @return [String, nil]
        required :reservation_id, String, api_name: :reservationId, nil?: true

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

        # @!method initialize(amount:, breakdown:, credit_currency_id:, credit_grant_id:, customer_id:, event_id:, event_type:, feature_id:, hold_returned_amount:, metadata:, reservation_id:, resource_id:, timestamp:)
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::CreditListLedgerResponse} for more details.
        #
        #   A credit ledger event representing a change to credit balance
        #
        #   @param amount [Float] The amount of the ledger event. Reservation events carry their net effect on the
        #
        #   @param breakdown [Array<Stigg::Models::V1::CreditListLedgerResponse::Breakdown>, nil] On a released reservation, the credits consumed from each grant
        #
        #   @param credit_currency_id [String] The credit currency ID
        #
        #   @param credit_grant_id [String] The credit grant ID associated with this event
        #
        #   @param customer_id [String] The customer ID this event belongs to
        #
        #   @param event_id [String, nil] The unique event identifier
        #
        #   @param event_type [Symbol, Stigg::Models::V1::CreditListLedgerResponse::EventType] The type of credit event
        #
        #   @param feature_id [String, nil] The feature ID associated with this event
        #
        #   @param hold_returned_amount [Float, nil] On a released reservation, the held amount returned to the balance before consum
        #
        #   @param metadata [Hash{Symbol=>String}, nil] The metadata sent with the credit reservation
        #
        #   @param reservation_id [String, nil] The credit reservation this event belongs to
        #
        #   @param resource_id [String, nil] The resource ID this event is scoped to
        #
        #   @param timestamp [Time] The timestamp when the event occurred

        class Breakdown < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount of the ledger event. Reservation events carry their net effect on the
          #   balance: a reserve is negative, and so is a release that consumed more than was
          #   held
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
          #   @return [Symbol, Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType]
          required :event_type,
                   enum: -> { Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType },
                   api_name: :eventType

          # @!attribute feature_id
          #   The feature ID associated with this event
          #
          #   @return [String, nil]
          required :feature_id, String, api_name: :featureId, nil?: true

          # @!attribute reservation_id
          #   The credit reservation this event belongs to
          #
          #   @return [String, nil]
          required :reservation_id, String, api_name: :reservationId, nil?: true

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

          # @!method initialize(amount:, credit_currency_id:, credit_grant_id:, customer_id:, event_id:, event_type:, feature_id:, reservation_id:, resource_id:, timestamp:)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::CreditListLedgerResponse::Breakdown} for more details.
          #
          #   @param amount [Float] The amount of the ledger event. Reservation events carry their net effect on the
          #
          #   @param credit_currency_id [String] The credit currency ID
          #
          #   @param credit_grant_id [String] The credit grant ID associated with this event
          #
          #   @param customer_id [String] The customer ID this event belongs to
          #
          #   @param event_id [String, nil] The unique event identifier
          #
          #   @param event_type [Symbol, Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType] The type of credit event
          #
          #   @param feature_id [String, nil] The feature ID associated with this event
          #
          #   @param reservation_id [String, nil] The credit reservation this event belongs to
          #
          #   @param resource_id [String, nil] The resource ID this event is scoped to
          #
          #   @param timestamp [Time] The timestamp when the event occurred

          # The type of credit event
          #
          # @see Stigg::Models::V1::CreditListLedgerResponse::Breakdown#event_type
          module EventType
            extend Stigg::Internal::Type::Enum

            CREDITS_GRANTED = :CREDITS_GRANTED
            CREDITS_EXPIRED = :CREDITS_EXPIRED
            CREDITS_CONSUMED = :CREDITS_CONSUMED
            CREDITS_VOIDED = :CREDITS_VOIDED
            CREDITS_UPDATED = :CREDITS_UPDATED
            CREDITS_CONSUMPTION_TRANSFER_SOURCE = :CREDITS_CONSUMPTION_TRANSFER_SOURCE
            CREDITS_CONSUMPTION_TRANSFER_TARGET = :CREDITS_CONSUMPTION_TRANSFER_TARGET
            CREDITS_RESERVED = :CREDITS_RESERVED
            CREDITS_RESERVATION_RELEASED = :CREDITS_RESERVATION_RELEASED
            CREDITS_RESERVATION_EXPIRED = :CREDITS_RESERVATION_EXPIRED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The type of credit event
        #
        # @see Stigg::Models::V1::CreditListLedgerResponse#event_type
        module EventType
          extend Stigg::Internal::Type::Enum

          CREDITS_GRANTED = :CREDITS_GRANTED
          CREDITS_EXPIRED = :CREDITS_EXPIRED
          CREDITS_CONSUMED = :CREDITS_CONSUMED
          CREDITS_VOIDED = :CREDITS_VOIDED
          CREDITS_UPDATED = :CREDITS_UPDATED
          CREDITS_CONSUMPTION_TRANSFER_SOURCE = :CREDITS_CONSUMPTION_TRANSFER_SOURCE
          CREDITS_CONSUMPTION_TRANSFER_TARGET = :CREDITS_CONSUMPTION_TRANSFER_TARGET
          CREDITS_RESERVED = :CREDITS_RESERVED
          CREDITS_RESERVATION_RELEASED = :CREDITS_RESERVATION_RELEASED
          CREDITS_RESERVATION_EXPIRED = :CREDITS_RESERVATION_EXPIRED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
