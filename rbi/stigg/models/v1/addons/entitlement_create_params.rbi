# typed: strong

module Stigg
  module Models
    module V1
      module Addons
        class EntitlementCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Addons::EntitlementCreateParams,
                Stigg::Internal::AnyHash
              )
            end

          # Entitlements to create
          sig do
            returns(
              T::Array[Stigg::V1::Addons::EntitlementCreateParams::Entitlement]
            )
          end
          attr_accessor :entitlements

          sig do
            params(
              entitlements:
                T::Array[
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::OrHash
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Entitlements to create
            entitlements:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                entitlements:
                  T::Array[
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement
                  ],
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Entitlement < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement,
                  Stigg::Internal::AnyHash
                )
              end

            # Credit entitlement to create
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit
                )
              )
            end
            attr_reader :credit

            sig do
              params(
                credit:
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::OrHash
              ).void
            end
            attr_writer :credit

            # Feature entitlement to create
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature
                )
              )
            end
            attr_reader :feature

            sig do
              params(
                feature:
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::OrHash
              ).void
            end
            attr_writer :feature

            # A single entitlement to create. Provide exactly one of feature or credit.
            sig do
              params(
                credit:
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::OrHash,
                feature:
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Credit entitlement to create
              credit: nil,
              # Feature entitlement to create
              feature: nil
            )
            end

            sig do
              override.returns(
                {
                  credit:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit,
                  feature:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature
                }
              )
            end
            def to_hash
            end

            class Credit < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit,
                    Stigg::Internal::AnyHash
                  )
                end

              # Credit grant amount
              sig { returns(T.nilable(Float)) }
              attr_accessor :amount

              # Credit grant cadence (MONTH or YEAR)
              sig do
                returns(
                  Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Cadence::OrSymbol
                )
              end
              attr_accessor :cadence

              # The custom currency ID for the credit entitlement
              sig { returns(String) }
              attr_accessor :custom_currency_id

              # Entitlement behavior (Increment or Override)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior::OrSymbol
                  )
                )
              end
              attr_reader :behavior

              sig do
                params(
                  behavior:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior::OrSymbol
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

              # Widget types where this entitlement is hidden
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::OrSymbol
                    ]
                  )
                )
              end
              attr_reader :hidden_from_widgets

              sig do
                params(
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::OrSymbol
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

              # Credit entitlement to create
              sig do
                params(
                  amount: T.nilable(Float),
                  cadence:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Cadence::OrSymbol,
                  custom_currency_id: String,
                  behavior:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior::OrSymbol,
                  description: String,
                  display_name_override: String,
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::OrSymbol
                    ],
                  is_custom: T::Boolean,
                  is_granted: T::Boolean,
                  order: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Credit grant amount
                amount:,
                # Credit grant cadence (MONTH or YEAR)
                cadence:,
                # The custom currency ID for the credit entitlement
                custom_currency_id:,
                # Entitlement behavior (Increment or Override)
                behavior: nil,
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
                order: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: T.nilable(Float),
                    cadence:
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Cadence::OrSymbol,
                    custom_currency_id: String,
                    behavior:
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior::OrSymbol,
                    description: String,
                    display_name_override: String,
                    hidden_from_widgets:
                      T::Array[
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::OrSymbol
                      ],
                    is_custom: T::Boolean,
                    is_granted: T::Boolean,
                    order: Float
                  }
                )
              end
              def to_hash
              end

              # Credit grant cadence (MONTH or YEAR)
              module Cadence
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Cadence::TaggedSymbol
                  )
                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Cadence::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Entitlement behavior (Increment or Override)
              module Behavior
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCREMENT =
                  T.let(
                    :Increment,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior::TaggedSymbol
                  )
                OVERRIDE =
                  T.let(
                    :Override,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::Behavior::TaggedSymbol
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYWALL =
                  T.let(
                    :PAYWALL,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::TaggedSymbol
                  )
                CUSTOMER_PORTAL =
                  T.let(
                    :CUSTOMER_PORTAL,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::TaggedSymbol
                  )
                CHECKOUT =
                  T.let(
                    :CHECKOUT,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Feature < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature,
                    Stigg::Internal::AnyHash
                  )
                end

              # The feature ID to attach the entitlement to
              sig { returns(String) }
              attr_accessor :feature_id

              # Entitlement behavior (Increment or Override)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior::OrSymbol
                  )
                )
              end
              attr_reader :behavior

              sig do
                params(
                  behavior:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior::OrSymbol
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::OrSymbol
                    ]
                  )
                )
              end
              attr_reader :hidden_from_widgets

              sig do
                params(
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::OrSymbol
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
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration
                  )
                )
              end
              attr_reader :monthly_reset_period_configuration

              sig do
                params(
                  monthly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::OrHash
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
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::OrSymbol
                  )
                )
              end
              attr_reader :reset_period

              sig do
                params(
                  reset_period:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::OrSymbol
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
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration
                  )
                )
              end
              attr_reader :weekly_reset_period_configuration

              sig do
                params(
                  weekly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::OrHash
                    )
                ).void
              end
              attr_writer :weekly_reset_period_configuration

              # Configuration for yearly reset period
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration
                  )
                )
              end
              attr_reader :yearly_reset_period_configuration

              sig do
                params(
                  yearly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::OrHash
                    )
                ).void
              end
              attr_writer :yearly_reset_period_configuration

              # Feature entitlement to create
              sig do
                params(
                  feature_id: String,
                  behavior:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior::OrSymbol,
                  description: String,
                  display_name_override: String,
                  enum_values: T::Array[String],
                  has_soft_limit: T::Boolean,
                  has_unlimited_usage: T::Boolean,
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::OrSymbol
                    ],
                  is_custom: T::Boolean,
                  is_granted: T::Boolean,
                  monthly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::OrHash
                    ),
                  order: Float,
                  reset_period:
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::OrSymbol,
                  usage_limit: T.nilable(Integer),
                  weekly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::OrHash
                    ),
                  yearly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::OrHash
                    )
                ).returns(T.attached_class)
              end
              def self.new(
                # The feature ID to attach the entitlement to
                feature_id:,
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
                yearly_reset_period_configuration: nil
              )
              end

              sig do
                override.returns(
                  {
                    feature_id: String,
                    behavior:
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior::OrSymbol,
                    description: String,
                    display_name_override: String,
                    enum_values: T::Array[String],
                    has_soft_limit: T::Boolean,
                    has_unlimited_usage: T::Boolean,
                    hidden_from_widgets:
                      T::Array[
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::OrSymbol
                      ],
                    is_custom: T::Boolean,
                    is_granted: T::Boolean,
                    monthly_reset_period_configuration:
                      T.nilable(
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration
                      ),
                    order: Float,
                    reset_period:
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::OrSymbol,
                    usage_limit: T.nilable(Integer),
                    weekly_reset_period_configuration:
                      T.nilable(
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration
                      ),
                    yearly_reset_period_configuration:
                      T.nilable(
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCREMENT =
                  T.let(
                    :Increment,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior::TaggedSymbol
                  )
                OVERRIDE =
                  T.let(
                    :Override,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::Behavior::TaggedSymbol
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYWALL =
                  T.let(
                    :PAYWALL,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::TaggedSymbol
                  )
                CUSTOMER_PORTAL =
                  T.let(
                    :CUSTOMER_PORTAL,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::TaggedSymbol
                  )
                CHECKOUT =
                  T.let(
                    :CHECKOUT,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget::TaggedSymbol
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                sig do
                  returns(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  )
                end
                attr_accessor :according_to

                # Configuration for monthly reset period
                sig do
                  params(
                    according_to:
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  START_OF_THE_MONTH =
                    T.let(
                      :StartOfTheMonth,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                WEEK =
                  T.let(
                    :WEEK,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :DAY,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )
                HOUR =
                  T.let(
                    :HOUR,
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart or specific day)
                sig do
                  returns(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                  )
                end
                attr_accessor :according_to

                # Configuration for weekly reset period
                sig do
                  params(
                    according_to:
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_SUNDAY =
                    T.let(
                      :EverySunday,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_MONDAY =
                    T.let(
                      :EveryMonday,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_TUESDAY =
                    T.let(
                      :EveryTuesday,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_WEDNESDAY =
                    T.let(
                      :EveryWednesday,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_THURSDAY =
                    T.let(
                      :EveryThursday,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_FRIDAY =
                    T.let(
                      :EveryFriday,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )
                  EVERY_SATURDAY =
                    T.let(
                      :EverySaturday,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Reset anchor (SubscriptionStart)
                sig do
                  returns(
                    Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  )
                end
                attr_accessor :according_to

                # Configuration for yearly reset period
                sig do
                  params(
                    according_to:
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
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
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUBSCRIPTION_START =
                    T.let(
                      :SubscriptionStart,
                      Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Addons::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
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
end
