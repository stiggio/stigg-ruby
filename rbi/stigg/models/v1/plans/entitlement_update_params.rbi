# typed: strong

module Stigg
  module Models
    module V1
      module Plans
        class EntitlementUpdateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Plans::EntitlementUpdateParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :plan_id

          sig { returns(String) }
          attr_accessor :id

          # Request to update a plan entitlement
          sig do
            returns(
              T.any(
                Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature,
                Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit
              )
            )
          end
          attr_accessor :body

          sig do
            params(
              plan_id: String,
              id: String,
              body:
                T.any(
                  Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::OrHash,
                  Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::OrHash
                ),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            plan_id:,
            id:,
            # Request to update a plan entitlement
            body:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                plan_id: String,
                id: String,
                body:
                  T.any(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit
                  ),
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Request to update a plan entitlement
          module Body
            extend Stigg::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature,
                  Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit
                )
              end

            class Feature < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature,
                    Stigg::Internal::AnyHash
                  )
                end

              # UpdateFeatureEntitlementRequest
              sig { returns(Symbol) }
              attr_accessor :type

              # Entitlement behavior (Increment or Override)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior::OrSymbol
                  )
                )
              end
              attr_reader :behavior

              sig do
                params(
                  behavior:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior::OrSymbol
                ).void
              end
              attr_writer :behavior

              # Description of the entitlement
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Override display name for the entitlement
              sig { returns(T.nilable(String)) }
              attr_reader :display_name_override

              sig { params(display_name_override: String).void }
              attr_writer :display_name_override

              # Allowed enum values for the feature entitlement
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :enum_values

              sig { params(enum_values: T::Array[String]).void }
              attr_writer :enum_values

              # Whether the usage limit is a soft limit
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :has_soft_limit

              sig { params(has_soft_limit: T::Boolean).void }
              attr_writer :has_soft_limit

              # Whether usage is unlimited
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :has_unlimited_usage

              sig { params(has_unlimited_usage: T::Boolean).void }
              attr_writer :has_unlimited_usage

              # Widget types where this entitlement is hidden
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::OrSymbol
                    ]
                  )
                )
              end
              attr_reader :hidden_from_widgets

              sig do
                params(
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::OrSymbol
                    ]
                ).void
              end
              attr_writer :hidden_from_widgets

              # Whether this is a custom entitlement
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_custom

              sig { params(is_custom: T::Boolean).void }
              attr_writer :is_custom

              # Whether the entitlement is granted
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_granted

              sig { params(is_granted: T::Boolean).void }
              attr_writer :is_granted

              # Configuration for monthly reset period
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration
                  )
                )
              end
              attr_reader :monthly_reset_period_configuration

              sig do
                params(
                  monthly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::OrHash
                    )
                ).void
              end
              attr_writer :monthly_reset_period_configuration

              # Display order of the entitlement
              sig { returns(T.nilable(Float)) }
              attr_reader :order

              sig { params(order: Float).void }
              attr_writer :order

              # Period at which usage resets
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::OrSymbol
                  )
                )
              end
              attr_reader :reset_period

              sig do
                params(
                  reset_period:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::OrSymbol
                ).void
              end
              attr_writer :reset_period

              # Maximum allowed usage for the feature
              sig { returns(T.nilable(Integer)) }
              attr_accessor :usage_limit

              # Configuration for weekly reset period
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration
                  )
                )
              end
              attr_reader :weekly_reset_period_configuration

              sig do
                params(
                  weekly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::OrHash
                    )
                ).void
              end
              attr_writer :weekly_reset_period_configuration

              # Configuration for yearly reset period
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration
                  )
                )
              end
              attr_reader :yearly_reset_period_configuration

              sig do
                params(
                  yearly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::OrHash
                    )
                ).void
              end
              attr_writer :yearly_reset_period_configuration

              # Fields to update on a feature entitlement
              sig do
                params(
                  behavior:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior::OrSymbol,
                  description: String,
                  display_name_override: String,
                  enum_values: T::Array[String],
                  has_soft_limit: T::Boolean,
                  has_unlimited_usage: T::Boolean,
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::OrSymbol
                    ],
                  is_custom: T::Boolean,
                  is_granted: T::Boolean,
                  monthly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::OrHash
                    ),
                  order: Float,
                  reset_period:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::OrSymbol,
                  usage_limit: T.nilable(Integer),
                  weekly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::OrHash
                    ),
                  yearly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::OrHash
                    ),
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Entitlement behavior (Increment or Override)
                behavior: nil,
                # Description of the entitlement
                description: nil,
                # Override display name for the entitlement
                display_name_override: nil,
                # Allowed enum values for the feature entitlement
                enum_values: nil,
                # Whether the usage limit is a soft limit
                has_soft_limit: nil,
                # Whether usage is unlimited
                has_unlimited_usage: nil,
                # Widget types where this entitlement is hidden
                hidden_from_widgets: nil,
                # Whether this is a custom entitlement
                is_custom: nil,
                # Whether the entitlement is granted
                is_granted: nil,
                # Configuration for monthly reset period
                monthly_reset_period_configuration: nil,
                # Display order of the entitlement
                order: nil,
                # Period at which usage resets
                reset_period: nil,
                # Maximum allowed usage for the feature
                usage_limit: nil,
                # Configuration for weekly reset period
                weekly_reset_period_configuration: nil,
                # Configuration for yearly reset period
                yearly_reset_period_configuration: nil,
                # UpdateFeatureEntitlementRequest
                type: :FEATURE
              )
              end

              sig do
                override.returns(
                  {
                    type: Symbol,
                    behavior:
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior::OrSymbol,
                    description: String,
                    display_name_override: String,
                    enum_values: T::Array[String],
                    has_soft_limit: T::Boolean,
                    has_unlimited_usage: T::Boolean,
                    hidden_from_widgets:
                      T::Array[
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::OrSymbol
                      ],
                    is_custom: T::Boolean,
                    is_granted: T::Boolean,
                    monthly_reset_period_configuration:
                      T.nilable(
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration
                      ),
                    order: Float,
                    reset_period:
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::OrSymbol,
                    usage_limit: T.nilable(Integer),
                    weekly_reset_period_configuration:
                      T.nilable(
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration
                      ),
                    yearly_reset_period_configuration:
                      T.nilable(
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration
                      )
                  }
                )
              end
              def to_hash
              end

              # Entitlement behavior (Increment or Override)
              module Behavior
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCREMENT =
                  T.let(
                    :Increment,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior::TaggedSymbol
                  )
                OVERRIDE =
                  T.let(
                    :Override,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::Behavior::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module HiddenFromWidget
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYWALL =
                  T.let(
                    :PAYWALL,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::TaggedSymbol
                  )
                CUSTOMER_PORTAL =
                  T.let(
                    :CUSTOMER_PORTAL,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::TaggedSymbol
                  )
                CHECKOUT =
                  T.let(
                    :CHECKOUT,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::HiddenFromWidget::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                sig do
                  returns(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  )
                end
                attr_accessor :according_to

                # Configuration for monthly reset period
                sig do
                  params(
                    according_to:
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  START_OF_THE_MONTH =
                    T.let(
                      :StartOfTheMonth,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              # Period at which usage resets
              module ResetPeriod
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::TaggedSymbol
                  )
                WEEK =
                  T.let(
                    :WEEK,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :DAY,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::TaggedSymbol
                  )
                HOUR =
                  T.let(
                    :HOUR,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::ResetPeriod::TaggedSymbol
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
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart or specific day)
                sig do
                  returns(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                  )
                end
                attr_accessor :according_to

                # Configuration for weekly reset period
                sig do
                  params(
                    according_to:
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_SUNDAY =
                    T.let(
                      :EverySunday,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_MONDAY =
                    T.let(
                      :EveryMonday,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_TUESDAY =
                    T.let(
                      :EveryTuesday,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_WEDNESDAY =
                    T.let(
                      :EveryWednesday,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_THURSDAY =
                    T.let(
                      :EveryThursday,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_FRIDAY =
                    T.let(
                      :EveryFriday,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_SATURDAY =
                    T.let(
                      :EverySaturday,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart)
                sig do
                  returns(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  )
                end
                attr_accessor :according_to

                # Configuration for yearly reset period
                sig do
                  params(
                    according_to:
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Feature::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class Credit < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit,
                    Stigg::Internal::AnyHash
                  )
                end

              # UpdateCreditEntitlementRequest
              sig { returns(Symbol) }
              attr_accessor :type

              # Credit grant amount
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # Entitlement behavior (Increment or Override)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior::OrSymbol
                  )
                )
              end
              attr_reader :behavior

              sig do
                params(
                  behavior:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior::OrSymbol
                ).void
              end
              attr_writer :behavior

              # Credit grant cadence (MONTH or YEAR)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence::OrSymbol
                  )
                )
              end
              attr_reader :cadence

              sig do
                params(
                  cadence:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence::OrSymbol
                ).void
              end
              attr_writer :cadence

              # The feature ID this entitlement depends on. The entitlement value will be
              # calculated as: base amount × dependency feature usage limit
              sig { returns(T.nilable(String)) }
              attr_accessor :dependency_feature_id

              # Description of the entitlement
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Override display name for the entitlement
              sig { returns(T.nilable(String)) }
              attr_reader :display_name_override

              sig { params(display_name_override: String).void }
              attr_writer :display_name_override

              # Widget types where this entitlement is hidden
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::OrSymbol
                    ]
                  )
                )
              end
              attr_reader :hidden_from_widgets

              sig do
                params(
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::OrSymbol
                    ]
                ).void
              end
              attr_writer :hidden_from_widgets

              # Whether this is a custom entitlement
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_custom

              sig { params(is_custom: T::Boolean).void }
              attr_writer :is_custom

              # Whether the entitlement is granted
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_granted

              sig { params(is_granted: T::Boolean).void }
              attr_writer :is_granted

              # Display order of the entitlement
              sig { returns(T.nilable(Float)) }
              attr_reader :order

              sig { params(order: Float).void }
              attr_writer :order

              # Fields to update on a credit entitlement
              sig do
                params(
                  amount: Float,
                  behavior:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior::OrSymbol,
                  cadence:
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence::OrSymbol,
                  dependency_feature_id: T.nilable(String),
                  description: String,
                  display_name_override: String,
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::OrSymbol
                    ],
                  is_custom: T::Boolean,
                  is_granted: T::Boolean,
                  order: Float,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Credit grant amount
                amount: nil,
                # Entitlement behavior (Increment or Override)
                behavior: nil,
                # Credit grant cadence (MONTH or YEAR)
                cadence: nil,
                # The feature ID this entitlement depends on. The entitlement value will be
                # calculated as: base amount × dependency feature usage limit
                dependency_feature_id: nil,
                # Description of the entitlement
                description: nil,
                # Override display name for the entitlement
                display_name_override: nil,
                # Widget types where this entitlement is hidden
                hidden_from_widgets: nil,
                # Whether this is a custom entitlement
                is_custom: nil,
                # Whether the entitlement is granted
                is_granted: nil,
                # Display order of the entitlement
                order: nil,
                # UpdateCreditEntitlementRequest
                type: :CREDIT
              )
              end

              sig do
                override.returns(
                  {
                    type: Symbol,
                    amount: Float,
                    behavior:
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior::OrSymbol,
                    cadence:
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence::OrSymbol,
                    dependency_feature_id: T.nilable(String),
                    description: String,
                    display_name_override: String,
                    hidden_from_widgets:
                      T::Array[
                        Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::OrSymbol
                      ],
                    is_custom: T::Boolean,
                    is_granted: T::Boolean,
                    order: Float
                  }
                )
              end
              def to_hash
              end

              # Entitlement behavior (Increment or Override)
              module Behavior
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCREMENT =
                  T.let(
                    :Increment,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior::TaggedSymbol
                  )
                OVERRIDE =
                  T.let(
                    :Override,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Behavior::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Credit grant cadence (MONTH or YEAR)
              module Cadence
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence::TaggedSymbol
                  )
                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::Cadence::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              module HiddenFromWidget
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYWALL =
                  T.let(
                    :PAYWALL,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::TaggedSymbol
                  )
                CUSTOMER_PORTAL =
                  T.let(
                    :CUSTOMER_PORTAL,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::TaggedSymbol
                  )
                CHECKOUT =
                  T.let(
                    :CHECKOUT,
                    Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Plans::EntitlementUpdateParams::Body::Credit::HiddenFromWidget::TaggedSymbol
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
                  Stigg::V1::Plans::EntitlementUpdateParams::Body::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
