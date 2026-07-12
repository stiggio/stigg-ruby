# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class ConsumptionConsumeResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Credits::ConsumptionConsumeResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Result of a synchronous direct credit consumption
          sig do
            returns(
              Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Result of a synchronous direct credit consumption
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The amount of credits consumed
            sig { returns(Float) }
            attr_accessor :amount

            # The credit currency the credits were consumed from
            sig { returns(String) }
            attr_accessor :currency_id

            # The customer the credits were consumed from
            sig { returns(String) }
            attr_accessor :customer_id

            # The timestamp the consumption was attributed to
            sig { returns(Time) }
            attr_accessor :timestamp

            # The optimistic credit balance after consumption (when sync credit consumption is
            # enabled)
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit
                )
              )
            end
            attr_reader :credit

            sig do
              params(
                credit:
                  T.nilable(
                    Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit::OrHash
                  )
              ).void
            end
            attr_writer :credit

            # The resource the consumption was attributed to
            sig { returns(T.nilable(String)) }
            attr_accessor :resource_id

            # Result of a synchronous direct credit consumption
            sig do
              params(
                amount: Float,
                currency_id: String,
                customer_id: String,
                timestamp: Time,
                credit:
                  T.nilable(
                    Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit::OrHash
                  ),
                resource_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The amount of credits consumed
              amount:,
              # The credit currency the credits were consumed from
              currency_id:,
              # The customer the credits were consumed from
              customer_id:,
              # The timestamp the consumption was attributed to
              timestamp:,
              # The optimistic credit balance after consumption (when sync credit consumption is
              # enabled)
              credit: nil,
              # The resource the consumption was attributed to
              resource_id: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency_id: String,
                  customer_id: String,
                  timestamp: Time,
                  credit:
                    T.nilable(
                      Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit
                    ),
                  resource_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Credit < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Credits::ConsumptionConsumeResponse::Data::Credit,
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

              # The optimistic credit balance after consumption (when sync credit consumption is
              # enabled)
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
          end
        end
      end
    end
  end
end
