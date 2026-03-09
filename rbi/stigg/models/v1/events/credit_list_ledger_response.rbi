# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class CreditListLedgerResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::CreditListLedgerResponse,
                Stigg::Internal::AnyHash
              )
            end

          # The credit amount for this event
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
              Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol
            )
          end
          attr_accessor :event_type

          # The feature ID associated with this event
          sig { returns(T.nilable(String)) }
          attr_accessor :feature_id

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
              credit_currency_id: String,
              credit_grant_id: String,
              customer_id: String,
              event_id: T.nilable(String),
              event_type:
                Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::OrSymbol,
              feature_id: T.nilable(String),
              resource_id: T.nilable(String),
              timestamp: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit amount for this event
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
                  Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol,
                feature_id: T.nilable(String),
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
                  Stigg::Models::V1::Events::CreditListLedgerResponse::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDITS_GRANTED =
              T.let(
                :CREDITS_GRANTED,
                Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol
              )
            CREDITS_EXPIRED =
              T.let(
                :CREDITS_EXPIRED,
                Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol
              )
            CREDITS_CONSUMED =
              T.let(
                :CREDITS_CONSUMED,
                Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol
              )
            CREDITS_VOIDED =
              T.let(
                :CREDITS_VOIDED,
                Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol
              )
            CREDITS_UPDATED =
              T.let(
                :CREDITS_UPDATED,
                Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::Events::CreditListLedgerResponse::EventType::TaggedSymbol
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
