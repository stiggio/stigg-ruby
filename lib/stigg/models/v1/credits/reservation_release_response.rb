# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Credits
        # @see Stigg::Resources::V1::Credits::Reservations#release
        class ReservationReleaseResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Result of releasing a credit reservation
          #
          #   @return [Stigg::Models::V1::Credits::ReservationReleaseResponse::Data]
          required :data, -> { Stigg::Models::V1::Credits::ReservationReleaseResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Credits::ReservationReleaseResponse::Data] Result of releasing a credit reservation

          # @see Stigg::Models::V1::Credits::ReservationReleaseResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute credit
            #   The optimistic credit balance after the release
            #
            #   @return [Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit, nil]
            required :credit, -> { Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit }, nil?: true

            # @!attribute reservation
            #   The released reservation
            #
            #   @return [Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation]
            required :reservation, -> { Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation }

            # @!method initialize(credit:, reservation:)
            #   Result of releasing a credit reservation
            #
            #   @param credit [Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit, nil] The optimistic credit balance after the release
            #
            #   @param reservation [Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation] The released reservation

            # @see Stigg::Models::V1::Credits::ReservationReleaseResponse::Data#credit
            class Credit < Stigg::Internal::Type::BaseModel
              # @!attribute currency_id
              #   The credit currency identifier
              #
              #   @return [String]
              required :currency_id, String, api_name: :currencyId

              # @!attribute current_usage
              #   The wallet's total consumed credits for this currency (optimistic — includes
              #   not-yet-reconciled usage), shared across every feature that draws on the
              #   currency. This is the running balance, not this call's deduction — see
              #   `consumed` for that.
              #
              #   @return [Float]
              required :current_usage, Float, api_name: :currentUsage

              # @!attribute timestamp
              #   The grant-version timestamp of this balance, used by the SDK for last-write-wins
              #   reconciliation
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute usage_limit
              #   The total credits granted
              #
              #   @return [Float]
              required :usage_limit, Float, api_name: :usageLimit

              # @!attribute usage_period_end
              #   End of the current credit grant period (when recurring credits reset), if
              #   applicable
              #
              #   @return [Time, nil]
              optional :usage_period_end, Time, api_name: :usagePeriodEnd, nil?: true

              # @!method initialize(currency_id:, current_usage:, timestamp:, usage_limit:, usage_period_end: nil)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit} for more
              #   details.
              #
              #   The optimistic credit balance after the release
              #
              #   @param currency_id [String] The credit currency identifier
              #
              #   @param current_usage [Float] The wallet's total consumed credits for this currency (optimistic — includes not
              #
              #   @param timestamp [Time] The grant-version timestamp of this balance, used by the SDK for last-write-wins
              #
              #   @param usage_limit [Float] The total credits granted
              #
              #   @param usage_period_end [Time, nil] End of the current credit grant period (when recurring credits reset), if applic
            end

            # @see Stigg::Models::V1::Credits::ReservationReleaseResponse::Data#reservation
            class Reservation < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The client-provided reservation ID.
              #
              #   @return [String]
              required :id, String

              # @!attribute amount
              #   The amount of credits held.
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute consumed_amount
              #   The amount consumed at release
              #
              #   @return [Float, nil]
              required :consumed_amount, Float, api_name: :consumedAmount, nil?: true

              # @!attribute expires_at
              #   When the reservation expires. Unreleased credits return to the balance at this
              #   time.
              #
              #   @return [Time]
              required :expires_at, Time, api_name: :expiresAt

              # @!attribute status
              #   The status of the reservation.
              #
              #   @return [Symbol, Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status]
              required :status,
                       enum: -> { Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status }

              # @!method initialize(id:, amount:, consumed_amount:, expires_at:, status:)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation} for
              #   more details.
              #
              #   The released reservation
              #
              #   @param id [String] The client-provided reservation ID.
              #
              #   @param amount [Float] The amount of credits held.
              #
              #   @param consumed_amount [Float, nil] The amount consumed at release
              #
              #   @param expires_at [Time] When the reservation expires. Unreleased credits return to the balance at this t
              #
              #   @param status [Symbol, Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status] The status of the reservation.

              # The status of the reservation.
              #
              # @see Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation#status
              module Status
                extend Stigg::Internal::Type::Enum

                ACTIVE = :ACTIVE
                RELEASED = :RELEASED

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
