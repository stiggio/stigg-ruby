# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class PlanCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::PlanCreateParams,
                Stigg::Internal::AnyHash
              )
            end

          # The unique identifier for the entity
          sig { returns(String) }
          attr_accessor :id

          # The display name of the package
          sig { returns(String) }
          attr_accessor :display_name

          # The product ID to associate the plan with
          sig { returns(String) }
          attr_accessor :product_id

          # The unique identifier for the entity in the billing provider
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # Default trial configuration for the plan
          sig do
            returns(
              T.nilable(Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig)
            )
          end
          attr_reader :default_trial_config

          sig do
            params(
              default_trial_config:
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::OrHash
                )
            ).void
          end
          attr_writer :default_trial_config

          # The description of the package
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Metadata associated with the entity
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # The ID of the parent plan, if applicable
          sig { returns(T.nilable(String)) }
          attr_accessor :parent_plan_id

          # The pricing type of the package
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::PlanCreateParams::PricingType::OrSymbol
              )
            )
          end
          attr_accessor :pricing_type

          # The status of the package
          sig do
            returns(
              T.nilable(Stigg::V1::Events::PlanCreateParams::Status::OrSymbol)
            )
          end
          attr_reader :status

          sig do
            params(
              status: Stigg::V1::Events::PlanCreateParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              display_name: String,
              product_id: String,
              billing_id: T.nilable(String),
              default_trial_config:
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::OrHash
                ),
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              parent_plan_id: T.nilable(String),
              pricing_type:
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::PricingType::OrSymbol
                ),
              status: Stigg::V1::Events::PlanCreateParams::Status::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the entity
            id:,
            # The display name of the package
            display_name:,
            # The product ID to associate the plan with
            product_id:,
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            # Default trial configuration for the plan
            default_trial_config: nil,
            # The description of the package
            description: nil,
            # Metadata associated with the entity
            metadata: nil,
            # The ID of the parent plan, if applicable
            parent_plan_id: nil,
            # The pricing type of the package
            pricing_type: nil,
            # The status of the package
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                display_name: String,
                product_id: String,
                billing_id: T.nilable(String),
                default_trial_config:
                  T.nilable(
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig
                  ),
                description: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                parent_plan_id: T.nilable(String),
                pricing_type:
                  T.nilable(
                    Stigg::V1::Events::PlanCreateParams::PricingType::OrSymbol
                  ),
                status: Stigg::V1::Events::PlanCreateParams::Status::OrSymbol,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          class DefaultTrialConfig < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig,
                  Stigg::Internal::AnyHash
                )
              end

            # The duration of the trial in the specified units
            sig { returns(Float) }
            attr_accessor :duration

            # The time unit for the trial duration (DAY or MONTH)
            sig do
              returns(
                Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Units::OrSymbol
              )
            end
            attr_accessor :units

            # Budget configuration for the trial
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Budget
                )
              )
            end
            attr_reader :budget

            sig do
              params(
                budget:
                  T.nilable(
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Budget::OrHash
                  )
              ).void
            end
            attr_writer :budget

            # Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior::OrSymbol
                )
              )
            end
            attr_accessor :trial_end_behavior

            # Default trial configuration for the plan
            sig do
              params(
                duration: Float,
                units:
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Units::OrSymbol,
                budget:
                  T.nilable(
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Budget::OrHash
                  ),
                trial_end_behavior:
                  T.nilable(
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # The duration of the trial in the specified units
              duration:,
              # The time unit for the trial duration (DAY or MONTH)
              units:,
              # Budget configuration for the trial
              budget: nil,
              # Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
              trial_end_behavior: nil
            )
            end

            sig do
              override.returns(
                {
                  duration: Float,
                  units:
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Units::OrSymbol,
                  budget:
                    T.nilable(
                      Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Budget
                    ),
                  trial_end_behavior:
                    T.nilable(
                      Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior::OrSymbol
                    )
                }
              )
            end
            def to_hash
            end

            # The time unit for the trial duration (DAY or MONTH)
            module Units
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Units
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DAY =
                T.let(
                  :DAY,
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Units::TaggedSymbol
                )
              MONTH =
                T.let(
                  :MONTH,
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Units::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Units::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Budget < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::Budget,
                    Stigg::Internal::AnyHash
                  )
                end

              # Whether the budget limit is a soft limit (allows overage) or hard limit
              sig { returns(T::Boolean) }
              attr_accessor :has_soft_limit

              # The budget limit amount
              sig { returns(Float) }
              attr_accessor :limit

              # Budget configuration for the trial
              sig do
                params(has_soft_limit: T::Boolean, limit: Float).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Whether the budget limit is a soft limit (allows overage) or hard limit
                has_soft_limit:,
                # The budget limit amount
                limit:
              )
              end

              sig do
                override.returns({ has_soft_limit: T::Boolean, limit: Float })
              end
              def to_hash
              end
            end

            # Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
            module TrialEndBehavior
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONVERT_TO_PAID =
                T.let(
                  :CONVERT_TO_PAID,
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
                )
              CANCEL_SUBSCRIPTION =
                T.let(
                  :CANCEL_SUBSCRIPTION,
                  Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # The pricing type of the package
          module PricingType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Events::PlanCreateParams::PricingType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FREE =
              T.let(
                :FREE,
                Stigg::V1::Events::PlanCreateParams::PricingType::TaggedSymbol
              )
            PAID =
              T.let(
                :PAID,
                Stigg::V1::Events::PlanCreateParams::PricingType::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :CUSTOM,
                Stigg::V1::Events::PlanCreateParams::PricingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::PlanCreateParams::PricingType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The status of the package
          module Status
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Events::PlanCreateParams::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRAFT =
              T.let(
                :DRAFT,
                Stigg::V1::Events::PlanCreateParams::Status::TaggedSymbol
              )
            PUBLISHED =
              T.let(
                :PUBLISHED,
                Stigg::V1::Events::PlanCreateParams::Status::TaggedSymbol
              )
            ARCHIVED =
              T.let(
                :ARCHIVED,
                Stigg::V1::Events::PlanCreateParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::PlanCreateParams::Status::TaggedSymbol
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
