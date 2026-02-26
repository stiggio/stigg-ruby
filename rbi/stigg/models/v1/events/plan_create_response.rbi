# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class PlanCreateResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::PlanCreateResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Plan configuration object
          sig { returns(Stigg::Models::V1::Events::PlanCreateResponse::Data) }
          attr_reader :data

          sig do
            params(
              data: Stigg::Models::V1::Events::PlanCreateResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data: Stigg::Models::V1::Events::PlanCreateResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Plan configuration object
            data:
          )
          end

          sig do
            override.returns(
              { data: Stigg::Models::V1::Events::PlanCreateResponse::Data }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::PlanCreateResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The unique identifier for the entity
            sig { returns(String) }
            attr_accessor :id

            # The unique identifier for the entity in the billing provider
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_id

            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :compatible_addon_ids

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # Default trial configuration for the plan
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig
                )
              )
            end
            attr_reader :default_trial_config

            sig do
              params(
                default_trial_config:
                  T.nilable(
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::OrHash
                  )
              ).void
            end
            attr_writer :default_trial_config

            # The description of the package
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The display name of the package
            sig { returns(String) }
            attr_accessor :display_name

            # List of entitlements of the package
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement
                ]
              )
            end
            attr_accessor :entitlements

            # Indicates if the package is the latest version
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :is_latest

            # Metadata associated with the entity
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            # The ID of the parent plan, if applicable
            sig { returns(T.nilable(String)) }
            attr_accessor :parent_plan_id

            # The pricing type of the package
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType::TaggedSymbol
                )
              )
            end
            attr_accessor :pricing_type

            # The product id of the package
            sig { returns(String) }
            attr_accessor :product_id

            # The status of the package
            sig do
              returns(
                Stigg::Models::V1::Events::PlanCreateResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # The version number of the package
            sig { returns(Integer) }
            attr_accessor :version_number

            # Plan configuration object
            sig do
              params(
                id: String,
                billing_id: T.nilable(String),
                compatible_addon_ids: T.nilable(T::Array[String]),
                created_at: Time,
                default_trial_config:
                  T.nilable(
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::OrHash
                  ),
                description: T.nilable(String),
                display_name: String,
                entitlements:
                  T::Array[
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::OrHash
                  ],
                is_latest: T.nilable(T::Boolean),
                metadata: T::Hash[Symbol, String],
                parent_plan_id: T.nilable(String),
                pricing_type:
                  T.nilable(
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType::OrSymbol
                  ),
                product_id: String,
                status:
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::Status::OrSymbol,
                updated_at: Time,
                version_number: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique identifier for the entity
              id:,
              # The unique identifier for the entity in the billing provider
              billing_id:,
              compatible_addon_ids:,
              # Timestamp of when the record was created
              created_at:,
              # Default trial configuration for the plan
              default_trial_config:,
              # The description of the package
              description:,
              # The display name of the package
              display_name:,
              # List of entitlements of the package
              entitlements:,
              # Indicates if the package is the latest version
              is_latest:,
              # Metadata associated with the entity
              metadata:,
              # The ID of the parent plan, if applicable
              parent_plan_id:,
              # The pricing type of the package
              pricing_type:,
              # The product id of the package
              product_id:,
              # The status of the package
              status:,
              # Timestamp of when the record was last updated
              updated_at:,
              # The version number of the package
              version_number:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  billing_id: T.nilable(String),
                  compatible_addon_ids: T.nilable(T::Array[String]),
                  created_at: Time,
                  default_trial_config:
                    T.nilable(
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig
                    ),
                  description: T.nilable(String),
                  display_name: String,
                  entitlements:
                    T::Array[
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement
                    ],
                  is_latest: T.nilable(T::Boolean),
                  metadata: T::Hash[Symbol, String],
                  parent_plan_id: T.nilable(String),
                  pricing_type:
                    T.nilable(
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType::TaggedSymbol
                    ),
                  product_id: String,
                  status:
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Status::TaggedSymbol,
                  updated_at: Time,
                  version_number: Integer
                }
              )
            end
            def to_hash
            end

            class DefaultTrialConfig < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig,
                    Stigg::Internal::AnyHash
                  )
                end

              # The duration of the trial in the specified units
              sig { returns(Float) }
              attr_accessor :duration

              # The time unit for the trial duration (DAY or MONTH)
              sig do
                returns(
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units::TaggedSymbol
                )
              end
              attr_accessor :units

              # Budget configuration for the trial
              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget
                  )
                )
              end
              attr_reader :budget

              sig do
                params(
                  budget:
                    T.nilable(
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget::OrHash
                    )
                ).void
              end
              attr_writer :budget

              # Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
                  )
                )
              end
              attr_accessor :trial_end_behavior

              # Default trial configuration for the plan
              sig do
                params(
                  duration: Float,
                  units:
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units::OrSymbol,
                  budget:
                    T.nilable(
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget::OrHash
                    ),
                  trial_end_behavior:
                    T.nilable(
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior::OrSymbol
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
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units::TaggedSymbol,
                    budget:
                      T.nilable(
                        Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget
                      ),
                    trial_end_behavior:
                      T.nilable(
                        Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
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
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DAY =
                  T.let(
                    :DAY,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units::TaggedSymbol
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
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget,
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
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONVERT_TO_PAID =
                  T.let(
                    :CONVERT_TO_PAID,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
                  )
                CANCEL_SUBSCRIPTION =
                  T.let(
                    :CANCEL_SUBSCRIPTION,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Entitlement < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement,
                    Stigg::Internal::AnyHash
                  )
                end

              # The unique identifier for the entity
              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # Entitlement reference with type and identifier
              sig do
                params(
                  id: String,
                  type:
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The unique identifier for the entity
                id:,
                type:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    type:
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FEATURE =
                  T.let(
                    :FEATURE,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type::TaggedSymbol
                  )
                CREDIT =
                  T.let(
                    :CREDIT,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FREE =
                T.let(
                  :FREE,
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DRAFT =
                T.let(
                  :DRAFT,
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::Status::TaggedSymbol
                )
              PUBLISHED =
                T.let(
                  :PUBLISHED,
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::Status::TaggedSymbol
                )
              ARCHIVED =
                T.let(
                  :ARCHIVED,
                  Stigg::Models::V1::Events::PlanCreateResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::PlanCreateResponse::Data::Status::TaggedSymbol
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
