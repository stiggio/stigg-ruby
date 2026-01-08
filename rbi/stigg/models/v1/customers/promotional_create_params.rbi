# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class PromotionalCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Customers::PromotionalCreateParams,
                Stigg::Internal::AnyHash
              )
            end

          # Promotional entitlements to grant
          sig do
            returns(
              T::Array[
                Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement
              ]
            )
          end
          attr_accessor :promotional_entitlements

          sig do
            params(
              promotional_entitlements:
                T::Array[
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::OrHash
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Promotional entitlements to grant
            promotional_entitlements:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                promotional_entitlements:
                  T::Array[
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement
                  ],
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          class PromotionalEntitlement < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement,
                  Stigg::Internal::AnyHash
                )
              end

            # The custom end date of the promotional entitlement
            sig { returns(T.nilable(Time)) }
            attr_accessor :custom_end_date

            # The enum values of the entitlement
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :enum_values

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
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :is_visible

            # The monthly reset period configuration of the entitlement, defined when reset
            # period is monthly
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration
                )
              )
            end
            attr_reader :monthly_reset_period_configuration

            sig do
              params(
                monthly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :monthly_reset_period_configuration

            # The grant period of the promotional entitlement
            sig do
              returns(
                Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::OrSymbol
              )
            end
            attr_accessor :period

            # The reset period of the entitlement
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::OrSymbol
                )
              )
            end
            attr_accessor :reset_period

            # The usage limit of the entitlement
            sig { returns(T.nilable(Integer)) }
            attr_accessor :usage_limit

            # The weekly reset period configuration of the entitlement, defined when reset
            # period is weekly
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration
                )
              )
            end
            attr_reader :weekly_reset_period_configuration

            sig do
              params(
                weekly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :weekly_reset_period_configuration

            # The yearly reset period configuration of the entitlement, defined when reset
            # period is yearly
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration
                )
              )
            end
            attr_reader :yearly_reset_period_configuration

            sig do
              params(
                yearly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :yearly_reset_period_configuration

            sig do
              params(
                custom_end_date: T.nilable(Time),
                enum_values: T.nilable(T::Array[String]),
                feature_id: String,
                has_soft_limit: T.nilable(T::Boolean),
                has_unlimited_usage: T.nilable(T::Boolean),
                is_visible: T.nilable(T::Boolean),
                monthly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::OrHash
                  ),
                period:
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::OrSymbol,
                reset_period:
                  T.nilable(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::OrSymbol
                  ),
                usage_limit: T.nilable(Integer),
                weekly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::OrHash
                  ),
                yearly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # The custom end date of the promotional entitlement
              custom_end_date:,
              # The enum values of the entitlement
              enum_values:,
              # The unique identifier of the entitlement feature
              feature_id:,
              # Whether the entitlement has a soft limit
              has_soft_limit:,
              # Whether the entitlement has an unlimited usage
              has_unlimited_usage:,
              # Whether the entitlement is visible
              is_visible:,
              # The monthly reset period configuration of the entitlement, defined when reset
              # period is monthly
              monthly_reset_period_configuration:,
              # The grant period of the promotional entitlement
              period:,
              # The reset period of the entitlement
              reset_period:,
              # The usage limit of the entitlement
              usage_limit:,
              # The weekly reset period configuration of the entitlement, defined when reset
              # period is weekly
              weekly_reset_period_configuration:,
              # The yearly reset period configuration of the entitlement, defined when reset
              # period is yearly
              yearly_reset_period_configuration:
            )
            end

            sig do
              override.returns(
                {
                  custom_end_date: T.nilable(Time),
                  enum_values: T.nilable(T::Array[String]),
                  feature_id: String,
                  has_soft_limit: T.nilable(T::Boolean),
                  has_unlimited_usage: T.nilable(T::Boolean),
                  is_visible: T.nilable(T::Boolean),
                  monthly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration
                    ),
                  period:
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::OrSymbol,
                  reset_period:
                    T.nilable(
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::OrSymbol
                    ),
                  usage_limit: T.nilable(Integer),
                  weekly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration
                    ),
                  yearly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration
                    )
                }
              )
            end
            def to_hash
            end

            class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Monthly reset period according to
              sig do
                returns(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # The monthly reset period configuration of the entitlement, defined when reset
              # period is monthly
              sig do
                params(
                  according_to:
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Monthly reset period according to
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Monthly reset period according to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                START_OF_THE_MONTH =
                  T.let(
                    :StartOfTheMonth,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The grant period of the promotional entitlement
            module Period
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIOD_1_WEEK =
                T.let(
                  :"1 week",
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::TaggedSymbol
                )
              PERIOD_1_MONTH =
                T.let(
                  :"1 month",
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::TaggedSymbol
                )
              PERIOD_6_MONTH =
                T.let(
                  :"6 month",
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::TaggedSymbol
                )
              PERIOD_1_YEAR =
                T.let(
                  :"1 year",
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::TaggedSymbol
                )
              LIFETIME =
                T.let(
                  :lifetime,
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::Period::TaggedSymbol
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
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :YEAR,
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::TaggedSymbol
                )
              MONTH =
                T.let(
                  :MONTH,
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::TaggedSymbol
                )
              WEEK =
                T.let(
                  :WEEK,
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::TaggedSymbol
                )
              DAY =
                T.let(
                  :DAY,
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::TaggedSymbol
                )
              HOUR =
                T.let(
                  :HOUR,
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::ResetPeriod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Weekly reset period according to
              sig do
                returns(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # The weekly reset period configuration of the entitlement, defined when reset
              # period is weekly
              sig do
                params(
                  according_to:
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Weekly reset period according to
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Weekly reset period according to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_SUNDAY =
                  T.let(
                    :EverySunday,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_MONDAY =
                  T.let(
                    :EveryMonday,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_TUESDAY =
                  T.let(
                    :EveryTuesday,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_WEDNESDAY =
                  T.let(
                    :EveryWednesday,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_THURSDAY =
                  T.let(
                    :EveryThursday,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_FRIDAY =
                  T.let(
                    :EveryFriday,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_SATURDAY =
                  T.let(
                    :EverySaturday,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Yearly reset period according to
              sig do
                returns(
                  Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # The yearly reset period configuration of the entitlement, defined when reset
              # period is yearly
              sig do
                params(
                  according_to:
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Yearly reset period according to
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Yearly reset period according to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Customers::PromotionalCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
