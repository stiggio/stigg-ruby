# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class PromotionalEntitlementRevokeResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Granted feature entitlement
          sig do
            returns(
              Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Granted feature entitlement
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Unique identifier for the entity
            sig { returns(String) }
            attr_accessor :id

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # The description of the entitlement
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The end date of the promotional entitlement
            sig { returns(T.nilable(Time)) }
            attr_accessor :end_date

            # The enum values of the entitlement
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :enum_values

            # The unique identifier for the environment
            sig { returns(String) }
            attr_accessor :environment_id

            # Feature group IDs associated with this entitlement
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :feature_group_ids

            # The unique identifier of the entitlement feature
            sig { returns(String) }
            attr_accessor :feature_id

            # Whether the entitlement has a soft limit
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :has_soft_limit

            # Whether the entitlement has an unlimited usage
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :has_unlimited_usage

            # Whether the entitlement is visible
            sig { returns(T::Boolean) }
            attr_accessor :is_visible

            # The grant period of the promotional entitlement
            sig do
              returns(
                Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
              )
            end
            attr_accessor :period

            # The reset period of the entitlement
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                )
              )
            end
            attr_accessor :reset_period

            # The reset period configuration of the entitlement
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::Variants
                )
              )
            end
            attr_accessor :reset_period_configuration

            # The start date of the entitlement
            sig { returns(Time) }
            attr_accessor :start_date

            # The status of the entitlement
            sig do
              returns(
                Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # The usage limit of the entitlement
            sig { returns(T.nilable(Float)) }
            attr_accessor :usage_limit

            # Granted feature entitlement
            sig do
              params(
                id: String,
                created_at: Time,
                description: T.nilable(String),
                end_date: T.nilable(Time),
                enum_values: T.nilable(T::Array[String]),
                environment_id: String,
                feature_group_ids: T.nilable(T::Array[String]),
                feature_id: String,
                has_soft_limit: T.nilable(T::Boolean),
                has_unlimited_usage: T.nilable(T::Boolean),
                is_visible: T::Boolean,
                period:
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::OrSymbol,
                reset_period:
                  T.nilable(
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::OrSymbol
                  ),
                reset_period_configuration:
                  T.nilable(
                    T.any(
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::OrHash,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::OrHash,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::OrHash
                    )
                  ),
                start_date: Time,
                status:
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status::OrSymbol,
                updated_at: Time,
                usage_limit: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the entity
              id:,
              # Timestamp of when the record was created
              created_at:,
              # The description of the entitlement
              description:,
              # The end date of the promotional entitlement
              end_date:,
              # The enum values of the entitlement
              enum_values:,
              # The unique identifier for the environment
              environment_id:,
              # Feature group IDs associated with this entitlement
              feature_group_ids:,
              # The unique identifier of the entitlement feature
              feature_id:,
              # Whether the entitlement has a soft limit
              has_soft_limit:,
              # Whether the entitlement has an unlimited usage
              has_unlimited_usage:,
              # Whether the entitlement is visible
              is_visible:,
              # The grant period of the promotional entitlement
              period:,
              # The reset period of the entitlement
              reset_period:,
              # The reset period configuration of the entitlement
              reset_period_configuration:,
              # The start date of the entitlement
              start_date:,
              # The status of the entitlement
              status:,
              # Timestamp of when the record was last updated
              updated_at:,
              # The usage limit of the entitlement
              usage_limit:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  description: T.nilable(String),
                  end_date: T.nilable(Time),
                  enum_values: T.nilable(T::Array[String]),
                  environment_id: String,
                  feature_group_ids: T.nilable(T::Array[String]),
                  feature_id: String,
                  has_soft_limit: T.nilable(T::Boolean),
                  has_unlimited_usage: T.nilable(T::Boolean),
                  is_visible: T::Boolean,
                  period:
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol,
                  reset_period:
                    T.nilable(
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                    ),
                  reset_period_configuration:
                    T.nilable(
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::Variants
                    ),
                  start_date: Time,
                  status:
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status::TaggedSymbol,
                  updated_at: Time,
                  usage_limit: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            # The grant period of the promotional entitlement
            module Period
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIOD_1_WEEK =
                T.let(
                  :"1 week",
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
                )
              PERIOD_1_MONTH =
                T.let(
                  :"1 month",
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
                )
              PERIOD_6_MONTH =
                T.let(
                  :"6 month",
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
                )
              PERIOD_1_YEAR =
                T.let(
                  :"1 year",
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
                )
              LIFETIME =
                T.let(
                  :lifetime,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The reset period of the entitlement
            module ResetPeriod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :YEAR,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                )
              MONTH =
                T.let(
                  :MONTH,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                )
              WEEK =
                T.let(
                  :WEEK,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                )
              DAY =
                T.let(
                  :DAY,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                )
              HOUR =
                T.let(
                  :HOUR,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The reset period configuration of the entitlement
            module ResetPeriodConfiguration
              extend Stigg::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig,
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig,
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig
                  )
                end

              class YearlyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart)
                sig do
                  returns(
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
                  )
                end
                attr_accessor :according_to

                # Yearly reset configuration
                sig do
                  params(
                    according_to:
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Reset anchor (SubscriptionStart)
                  according_to:
                )
                end

                sig do
                  override.returns(
                    {
                      according_to:
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Reset anchor (SubscriptionStart)
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class MonthlyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                sig do
                  returns(
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                  )
                end
                attr_accessor :according_to

                # Monthly reset configuration
                sig do
                  params(
                    according_to:
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Reset anchor (SubscriptionStart or StartOfTheMonth)
                  according_to:
                )
                end

                sig do
                  override.returns(
                    {
                      according_to:
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  START_OF_THE_MONTH =
                    T.let(
                      :StartOfTheMonth,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class WeeklyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart or specific day)
                sig do
                  returns(
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                  )
                end
                attr_accessor :according_to

                # Weekly reset configuration
                sig do
                  params(
                    according_to:
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Reset anchor (SubscriptionStart or specific day)
                  according_to:
                )
                end

                sig do
                  override.returns(
                    {
                      according_to:
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Reset anchor (SubscriptionStart or specific day)
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  EVERY_SUNDAY =
                    T.let(
                      :EverySunday,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  EVERY_MONDAY =
                    T.let(
                      :EveryMonday,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  EVERY_TUESDAY =
                    T.let(
                      :EveryTuesday,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  EVERY_WEDNESDAY =
                    T.let(
                      :EveryWednesday,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  EVERY_THURSDAY =
                    T.let(
                      :EveryThursday,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  EVERY_FRIDAY =
                    T.let(
                      :EveryFriday,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  EVERY_SATURDAY =
                    T.let(
                      :EverySaturday,
                      Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            # The status of the entitlement
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :Active,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :Expired,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status::TaggedSymbol
                )
              PAUSED =
                T.let(
                  :Paused,
                  Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status::TaggedSymbol
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
