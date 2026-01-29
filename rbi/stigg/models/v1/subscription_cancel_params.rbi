# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionCancelParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SubscriptionCancelParams, Stigg::Internal::AnyHash)
          end

        # Action on cancellation (downgrade or revoke)
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCancelParams::CancellationAction::OrSymbol
            )
          )
        end
        attr_reader :cancellation_action

        sig do
          params(
            cancellation_action:
              Stigg::V1::SubscriptionCancelParams::CancellationAction::OrSymbol
          ).void
        end
        attr_writer :cancellation_action

        # When to cancel (immediate, period end, or date)
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCancelParams::CancellationTime::OrSymbol
            )
          )
        end
        attr_reader :cancellation_time

        sig do
          params(
            cancellation_time:
              Stigg::V1::SubscriptionCancelParams::CancellationTime::OrSymbol
          ).void
        end
        attr_writer :cancellation_time

        # Subscription end date
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        # If set, enables or disables prorating of credits on subscription cancellation.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :prorate

        sig { params(prorate: T::Boolean).void }
        attr_writer :prorate

        sig do
          params(
            cancellation_action:
              Stigg::V1::SubscriptionCancelParams::CancellationAction::OrSymbol,
            cancellation_time:
              Stigg::V1::SubscriptionCancelParams::CancellationTime::OrSymbol,
            end_date: Time,
            prorate: T::Boolean,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Action on cancellation (downgrade or revoke)
          cancellation_action: nil,
          # When to cancel (immediate, period end, or date)
          cancellation_time: nil,
          # Subscription end date
          end_date: nil,
          # If set, enables or disables prorating of credits on subscription cancellation.
          prorate: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              cancellation_action:
                Stigg::V1::SubscriptionCancelParams::CancellationAction::OrSymbol,
              cancellation_time:
                Stigg::V1::SubscriptionCancelParams::CancellationTime::OrSymbol,
              end_date: Time,
              prorate: T::Boolean,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Action on cancellation (downgrade or revoke)
        module CancellationAction
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionCancelParams::CancellationAction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEFAULT =
            T.let(
              :DEFAULT,
              Stigg::V1::SubscriptionCancelParams::CancellationAction::TaggedSymbol
            )
          REVOKE_ENTITLEMENTS =
            T.let(
              :REVOKE_ENTITLEMENTS,
              Stigg::V1::SubscriptionCancelParams::CancellationAction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionCancelParams::CancellationAction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # When to cancel (immediate, period end, or date)
        module CancellationTime
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionCancelParams::CancellationTime
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          END_OF_BILLING_PERIOD =
            T.let(
              :END_OF_BILLING_PERIOD,
              Stigg::V1::SubscriptionCancelParams::CancellationTime::TaggedSymbol
            )
          IMMEDIATE =
            T.let(
              :IMMEDIATE,
              Stigg::V1::SubscriptionCancelParams::CancellationTime::TaggedSymbol
            )
          SPECIFIC_DATE =
            T.let(
              :SPECIFIC_DATE,
              Stigg::V1::SubscriptionCancelParams::CancellationTime::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionCancelParams::CancellationTime::TaggedSymbol
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
