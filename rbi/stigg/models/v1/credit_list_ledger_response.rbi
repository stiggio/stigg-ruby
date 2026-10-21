# typed: strong

module Stigg
  module Models
    module V1
      class CreditListLedgerResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::CreditListLedgerResponse,
              Stigg::Internal::AnyHash
            )
          end

        # The amount of the ledger event. Reservation events carry their net effect on the
        # balance: a reserve is negative, and so is a release that consumed more than was
        # held
        sig { returns(Float) }
        attr_accessor :amount

        # On a released reservation, the credits consumed from each grant
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::Models::V1::CreditListLedgerResponse::Breakdown]
            )
          )
        end
        attr_accessor :breakdown

        # The credit currency ID
        sig { returns(String) }
        attr_accessor :credit_currency_id

        # The credit grant ID associated with this event
        sig { returns(String) }
        attr_accessor :credit_grant_id

        # The customer ID this event belongs to
        sig { returns(String) }
        attr_accessor :customer_id

        # The unique event identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :event_id

        # The type of credit event
        sig do
          returns(
            Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        # The feature ID associated with this event
        sig { returns(T.nilable(String)) }
        attr_accessor :feature_id

        # On a released reservation, the held amount returned to the balance before
        # consumed credits are deducted
        sig { returns(T.nilable(Float)) }
        attr_accessor :hold_returned_amount

        # The metadata sent with the credit reservation
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        # The credit reservation this event belongs to
        sig { returns(T.nilable(String)) }
        attr_accessor :reservation_id

        # The resource ID this event is scoped to
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # The timestamp when the event occurred
        sig { returns(Time) }
        attr_accessor :timestamp

        # A credit ledger event representing a change to credit balance
        sig do
          params(
            amount: Float,
            breakdown:
              T.nilable(
                T::Array[
                  Stigg::Models::V1::CreditListLedgerResponse::Breakdown::OrHash
                ]
              ),
            credit_currency_id: String,
            credit_grant_id: String,
            customer_id: String,
            event_id: T.nilable(String),
            event_type:
              Stigg::Models::V1::CreditListLedgerResponse::EventType::OrSymbol,
            feature_id: T.nilable(String),
            hold_returned_amount: T.nilable(Float),
            metadata: T.nilable(T::Hash[Symbol, String]),
            reservation_id: T.nilable(String),
            resource_id: T.nilable(String),
            timestamp: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of the ledger event. Reservation events carry their net effect on the
          # balance: a reserve is negative, and so is a release that consumed more than was
          # held
          amount:,
          # On a released reservation, the credits consumed from each grant
          breakdown:,
          # The credit currency ID
          credit_currency_id:,
          # The credit grant ID associated with this event
          credit_grant_id:,
          # The customer ID this event belongs to
          customer_id:,
          # The unique event identifier
          event_id:,
          # The type of credit event
          event_type:,
          # The feature ID associated with this event
          feature_id:,
          # On a released reservation, the held amount returned to the balance before
          # consumed credits are deducted
          hold_returned_amount:,
          # The metadata sent with the credit reservation
          metadata:,
          # The credit reservation this event belongs to
          reservation_id:,
          # The resource ID this event is scoped to
          resource_id:,
          # The timestamp when the event occurred
          timestamp:
        )
        end

        sig do
          override.returns(
            {
              amount: Float,
              breakdown:
                T.nilable(
                  T::Array[
                    Stigg::Models::V1::CreditListLedgerResponse::Breakdown
                  ]
                ),
              credit_currency_id: String,
              credit_grant_id: String,
              customer_id: String,
              event_id: T.nilable(String),
              event_type:
                Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol,
              feature_id: T.nilable(String),
              hold_returned_amount: T.nilable(Float),
              metadata: T.nilable(T::Hash[Symbol, String]),
              reservation_id: T.nilable(String),
              resource_id: T.nilable(String),
              timestamp: Time
            }
          )
        end
        def to_hash
        end

        class Breakdown < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown,
                Stigg::Internal::AnyHash
              )
            end

          # The amount of the ledger event. Reservation events carry their net effect on the
          # balance: a reserve is negative, and so is a release that consumed more than was
          # held
          sig { returns(Float) }
          attr_accessor :amount

          # The credit currency ID
          sig { returns(String) }
          attr_accessor :credit_currency_id

          # The credit grant ID associated with this event
          sig { returns(String) }
          attr_accessor :credit_grant_id

          # The customer ID this event belongs to
          sig { returns(String) }
          attr_accessor :customer_id

          # The unique event identifier
          sig { returns(T.nilable(String)) }
          attr_accessor :event_id

          # The type of credit event
          sig do
            returns(
              Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
            )
          end
          attr_accessor :event_type

          # The feature ID associated with this event
          sig { returns(T.nilable(String)) }
          attr_accessor :feature_id

          # The credit reservation this event belongs to
          sig { returns(T.nilable(String)) }
          attr_accessor :reservation_id

          # The resource ID this event is scoped to
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # The timestamp when the event occurred
          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            params(
              amount: Float,
              credit_currency_id: String,
              credit_grant_id: String,
              customer_id: String,
              event_id: T.nilable(String),
              event_type:
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::OrSymbol,
              feature_id: T.nilable(String),
              reservation_id: T.nilable(String),
              resource_id: T.nilable(String),
              timestamp: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount of the ledger event. Reservation events carry their net effect on the
            # balance: a reserve is negative, and so is a release that consumed more than was
            # held
            amount:,
            # The credit currency ID
            credit_currency_id:,
            # The credit grant ID associated with this event
            credit_grant_id:,
            # The customer ID this event belongs to
            customer_id:,
            # The unique event identifier
            event_id:,
            # The type of credit event
            event_type:,
            # The feature ID associated with this event
            feature_id:,
            # The credit reservation this event belongs to
            reservation_id:,
            # The resource ID this event is scoped to
            resource_id:,
            # The timestamp when the event occurred
            timestamp:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                credit_currency_id: String,
                credit_grant_id: String,
                customer_id: String,
                event_id: T.nilable(String),
                event_type:
                  Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol,
                feature_id: T.nilable(String),
                reservation_id: T.nilable(String),
                resource_id: T.nilable(String),
                timestamp: Time
              }
            )
          end
          def to_hash
          end

          # The type of credit event
          module EventType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDITS_GRANTED =
              T.let(
                :CREDITS_GRANTED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_EXPIRED =
              T.let(
                :CREDITS_EXPIRED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_CONSUMED =
              T.let(
                :CREDITS_CONSUMED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_VOIDED =
              T.let(
                :CREDITS_VOIDED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_UPDATED =
              T.let(
                :CREDITS_UPDATED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_CONSUMPTION_TRANSFER_SOURCE =
              T.let(
                :CREDITS_CONSUMPTION_TRANSFER_SOURCE,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_CONSUMPTION_TRANSFER_TARGET =
              T.let(
                :CREDITS_CONSUMPTION_TRANSFER_TARGET,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_RESERVED =
              T.let(
                :CREDITS_RESERVED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_RESERVATION_RELEASED =
              T.let(
                :CREDITS_RESERVATION_RELEASED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )
            CREDITS_RESERVATION_EXPIRED =
              T.let(
                :CREDITS_RESERVATION_EXPIRED,
                Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::CreditListLedgerResponse::Breakdown::EventType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The type of credit event
        module EventType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::CreditListLedgerResponse::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDITS_GRANTED =
            T.let(
              :CREDITS_GRANTED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_EXPIRED =
            T.let(
              :CREDITS_EXPIRED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_CONSUMED =
            T.let(
              :CREDITS_CONSUMED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_VOIDED =
            T.let(
              :CREDITS_VOIDED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_UPDATED =
            T.let(
              :CREDITS_UPDATED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_CONSUMPTION_TRANSFER_SOURCE =
            T.let(
              :CREDITS_CONSUMPTION_TRANSFER_SOURCE,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_CONSUMPTION_TRANSFER_TARGET =
            T.let(
              :CREDITS_CONSUMPTION_TRANSFER_TARGET,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_RESERVED =
            T.let(
              :CREDITS_RESERVED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_RESERVATION_RELEASED =
            T.let(
              :CREDITS_RESERVATION_RELEASED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          CREDITS_RESERVATION_EXPIRED =
            T.let(
              :CREDITS_RESERVATION_EXPIRED,
              Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::CreditListLedgerResponse::EventType::TaggedSymbol
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
