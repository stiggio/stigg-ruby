# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class ReservationReleaseResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Credits::ReservationReleaseResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Result of releasing a credit reservation
          sig do
            returns(
              Stigg::Models::V1::Credits::ReservationReleaseResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Result of releasing a credit reservation
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Credits::ReservationReleaseResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Credits::ReservationReleaseResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The optimistic credit balance after the release
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit
                )
              )
            end
            attr_reader :credit

            sig do
              params(
                credit:
                  T.nilable(
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit::OrHash
                  )
              ).void
            end
            attr_writer :credit

            # The released reservation
            sig do
              returns(
                Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation
              )
            end
            attr_reader :reservation

            sig do
              params(
                reservation:
                  Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::OrHash
              ).void
            end
            attr_writer :reservation

            # Result of releasing a credit reservation
            sig do
              params(
                credit:
                  T.nilable(
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit::OrHash
                  ),
                reservation:
                  Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The optimistic credit balance after the release
              credit:,
              # The released reservation
              reservation:
            )
            end

            sig do
              override.returns(
                {
                  credit:
                    T.nilable(
                      Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit
                    ),
                  reservation:
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation
                }
              )
            end
            def to_hash
            end

            class Credit < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Credit,
                    Stigg::Internal::AnyHash
                  )
                end

              # The credit currency identifier
              sig { returns(String) }
              attr_accessor :currency_id

              # The wallet's total consumed credits for this currency (optimistic — includes
              # not-yet-reconciled usage), shared across every feature that draws on the
              # currency. This is the running balance, not this call's deduction — see
              # `consumed` for that.
              sig { returns(Float) }
              attr_accessor :current_usage

              # The grant-version timestamp of this balance, used by the SDK for last-write-wins
              # reconciliation
              sig { returns(Time) }
              attr_accessor :timestamp

              # The total credits granted
              sig { returns(Float) }
              attr_accessor :usage_limit

              # End of the current credit grant period (when recurring credits reset), if
              # applicable
              sig { returns(T.nilable(Time)) }
              attr_accessor :usage_period_end

              # The optimistic credit balance after the release
              sig do
                params(
                  currency_id: String,
                  current_usage: Float,
                  timestamp: Time,
                  usage_limit: Float,
                  usage_period_end: T.nilable(Time)
                ).returns(T.attached_class)
              end
              def self.new(
                # The credit currency identifier
                currency_id:,
                # The wallet's total consumed credits for this currency (optimistic — includes
                # not-yet-reconciled usage), shared across every feature that draws on the
                # currency. This is the running balance, not this call's deduction — see
                # `consumed` for that.
                current_usage:,
                # The grant-version timestamp of this balance, used by the SDK for last-write-wins
                # reconciliation
                timestamp:,
                # The total credits granted
                usage_limit:,
                # End of the current credit grant period (when recurring credits reset), if
                # applicable
                usage_period_end: nil
              )
              end

              sig do
                override.returns(
                  {
                    currency_id: String,
                    current_usage: Float,
                    timestamp: Time,
                    usage_limit: Float,
                    usage_period_end: T.nilable(Time)
                  }
                )
              end
              def to_hash
              end
            end

            class Reservation < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation,
                    Stigg::Internal::AnyHash
                  )
                end

              # The client-provided reservation ID.
              sig { returns(String) }
              attr_accessor :id

              # The amount of credits held.
              sig { returns(Float) }
              attr_accessor :amount

              # The amount consumed at release
              sig { returns(T.nilable(Float)) }
              attr_accessor :consumed_amount

              # When the reservation expires. Unreleased credits return to the balance at this
              # time.
              sig { returns(Time) }
              attr_accessor :expires_at

              # The status of the reservation.
              sig do
                returns(
                  Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status::TaggedSymbol
                )
              end
              attr_accessor :status

              # The released reservation
              sig do
                params(
                  id: String,
                  amount: Float,
                  consumed_amount: T.nilable(Float),
                  expires_at: Time,
                  status:
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The client-provided reservation ID.
                id:,
                # The amount of credits held.
                amount:,
                # The amount consumed at release
                consumed_amount:,
                # When the reservation expires. Unreleased credits return to the balance at this
                # time.
                expires_at:,
                # The status of the reservation.
                status:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: Float,
                    consumed_amount: T.nilable(Float),
                    expires_at: Time,
                    status:
                      Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # The status of the reservation.
              module Status
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ACTIVE =
                  T.let(
                    :ACTIVE,
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status::TaggedSymbol
                  )
                RELEASED =
                  T.let(
                    :RELEASED,
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status::TaggedSymbol
                  )
                EXPIRED =
                  T.let(
                    :EXPIRED,
                    Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Credits::ReservationReleaseResponse::Data::Reservation::Status::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
