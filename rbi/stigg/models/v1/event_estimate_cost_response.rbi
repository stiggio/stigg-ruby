# typed: strong

module Stigg
  module Models
    module V1
      class EventEstimateCostResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::EventEstimateCostResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Estimated credit cost, current balance and balance after
        sig { returns(Stigg::Models::V1::EventEstimateCostResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::EventEstimateCostResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data: Stigg::Models::V1::EventEstimateCostResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Estimated credit cost, current balance and balance after
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::EventEstimateCostResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::EventEstimateCostResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Per-currency cost estimates
          sig do
            returns(
              T::Array[
                Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate
              ]
            )
          end
          attr_accessor :estimates

          # Request-level warnings about the estimation context
          sig do
            returns(
              T::Array[
                Stigg::Models::V1::EventEstimateCostResponse::Data::Warning::TaggedSymbol
              ]
            )
          end
          attr_accessor :warnings

          # Estimated credit cost, current balance and balance after
          sig do
            params(
              estimates:
                T::Array[
                  Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::OrHash
                ],
              warnings:
                T::Array[
                  Stigg::Models::V1::EventEstimateCostResponse::Data::Warning::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Per-currency cost estimates
            estimates:,
            # Request-level warnings about the estimation context
            warnings:
          )
          end

          sig do
            override.returns(
              {
                estimates:
                  T::Array[
                    Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate
                  ],
                warnings:
                  T::Array[
                    Stigg::Models::V1::EventEstimateCostResponse::Data::Warning::TaggedSymbol
                  ]
              }
            )
          end
          def to_hash
          end

          class Estimate < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate,
                  Stigg::Internal::AnyHash
                )
              end

            # The credit balance after subtracting the estimated cost
            sig { returns(Float) }
            attr_accessor :balance_after_estimate

            # Estimated cost contribution per feature
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown
                ]
              )
            end
            attr_accessor :breakdown

            # The credit currency identifier
            sig { returns(String) }
            attr_accessor :currency_id

            # The current credit balance, including not-yet-reconciled consumption
            sig { returns(Float) }
            attr_accessor :current_balance

            # The estimated credit cost of the reported event or usage
            sig { returns(Float) }
            attr_accessor :estimated_cost

            # Whether the estimated consumption would bring the balance below zero
            sig { returns(T::Boolean) }
            attr_accessor :would_overdraft

            sig do
              params(
                balance_after_estimate: Float,
                breakdown:
                  T::Array[
                    Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown::OrHash
                  ],
                currency_id: String,
                current_balance: Float,
                estimated_cost: Float,
                would_overdraft: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # The credit balance after subtracting the estimated cost
              balance_after_estimate:,
              # Estimated cost contribution per feature
              breakdown:,
              # The credit currency identifier
              currency_id:,
              # The current credit balance, including not-yet-reconciled consumption
              current_balance:,
              # The estimated credit cost of the reported event or usage
              estimated_cost:,
              # Whether the estimated consumption would bring the balance below zero
              would_overdraft:
            )
            end

            sig do
              override.returns(
                {
                  balance_after_estimate: Float,
                  breakdown:
                    T::Array[
                      Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown
                    ],
                  currency_id: String,
                  current_balance: Float,
                  estimated_cost: Float,
                  would_overdraft: T::Boolean
                }
              )
            end
            def to_hash
            end

            class Breakdown < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown,
                    Stigg::Internal::AnyHash
                  )
                end

              # The estimated credit cost contributed by this feature
              sig { returns(Float) }
              attr_accessor :cost

              # The feature whose meter contributed this cost
              sig { returns(String) }
              attr_accessor :feature_id

              # Warning explaining why this cost may be inaccurate, if any
              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown::WarningCode::TaggedSymbol
                  )
                )
              end
              attr_accessor :warning_code

              sig do
                params(
                  cost: Float,
                  feature_id: String,
                  warning_code:
                    T.nilable(
                      Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown::WarningCode::OrSymbol
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # The estimated credit cost contributed by this feature
                cost:,
                # The feature whose meter contributed this cost
                feature_id:,
                # Warning explaining why this cost may be inaccurate, if any
                warning_code:
              )
              end

              sig do
                override.returns(
                  {
                    cost: Float,
                    feature_id: String,
                    warning_code:
                      T.nilable(
                        Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown::WarningCode::TaggedSymbol
                      )
                  }
                )
              end
              def to_hash
              end

              # Warning explaining why this cost may be inaccurate, if any
              module WarningCode
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown::WarningCode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                UNSUPPORTED_AGGREGATION =
                  T.let(
                    :UNSUPPORTED_AGGREGATION,
                    Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown::WarningCode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::EventEstimateCostResponse::Data::Estimate::Breakdown::WarningCode::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          module Warning
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::EventEstimateCostResponse::Data::Warning
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RESOURCE_SCOPED_SUBSCRIPTION_EXISTS =
              T.let(
                :RESOURCE_SCOPED_SUBSCRIPTION_EXISTS,
                Stigg::Models::V1::EventEstimateCostResponse::Data::Warning::TaggedSymbol
              )
            FEATURE_NOT_FOUND =
              T.let(
                :FEATURE_NOT_FOUND,
                Stigg::Models::V1::EventEstimateCostResponse::Data::Warning::TaggedSymbol
              )
            FEATURE_NOT_CREDIT_BASED =
              T.let(
                :FEATURE_NOT_CREDIT_BASED,
                Stigg::Models::V1::EventEstimateCostResponse::Data::Warning::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::EventEstimateCostResponse::Data::Warning::TaggedSymbol
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
