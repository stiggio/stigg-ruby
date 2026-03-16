# typed: strong

module Stigg
  module Models
    module V1
      AddonPackageEntitlement = Addons::AddonPackageEntitlement

      module Addons
        class AddonPackageEntitlement < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Addons::AddonPackageEntitlement,
                Stigg::Internal::AnyHash
              )
            end

          # Feature entitlement response
          sig do
            returns(Stigg::V1::Addons::AddonPackageEntitlement::Data::Variants)
          end
          attr_accessor :data

          # Response object
          sig do
            params(
              data:
                T.any(
                  Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::OrHash,
                  Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Feature entitlement response
            data:
          )
          end

          sig do
            override.returns(
              {
                data: Stigg::V1::Addons::AddonPackageEntitlement::Data::Variants
              }
            )
          end
          def to_hash
          end

          # Feature entitlement response
          module Data
            extend Stigg::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature,
                  Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit
                )
              end

            class Feature < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature,
                    Stigg::Internal::AnyHash
                  )
                end

              # Unique identifier of the entitlement
              sig { returns(String) }
              attr_accessor :id

              # Entitlement behavior (Increment or Override)
              sig do
                returns(
                  Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::Behavior::TaggedSymbol
                )
              end
              attr_accessor :behavior

              # Timestamp of when the record was created
              sig { returns(Time) }
              attr_accessor :created_at

              # Optional description of the entitlement
              sig { returns(T.nilable(String)) }
              attr_accessor :description

              # Override display name for the entitlement
              sig { returns(T.nilable(String)) }
              attr_accessor :display_name_override

              # Allowed enum values (for feature entitlements)
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :enum_values

              # Whether the usage limit is a soft limit (for feature entitlements)
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :has_soft_limit

              # Whether usage is unlimited (for feature entitlements)
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :has_unlimited_usage

              # Widget types where this entitlement is hidden
              sig do
                returns(
                  T::Array[
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget::TaggedSymbol
                  ]
                )
              end
              attr_accessor :hidden_from_widgets

              # Whether this is a custom entitlement
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :is_custom

              # Whether the entitlement is granted
              sig { returns(T::Boolean) }
              attr_accessor :is_granted

              # Display order of the entitlement
              sig { returns(T.nilable(Float)) }
              attr_accessor :order

              # Usage reset period (for feature entitlements)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                  )
                )
              end
              attr_accessor :reset_period

              # Reset period configuration (for feature entitlements)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::Variants
                  )
                )
              end
              attr_accessor :reset_period_configuration

              # Entitlement type (FEATURE or CREDIT)
              sig { returns(Symbol) }
              attr_accessor :type

              # Timestamp of when the record was last updated
              sig { returns(Time) }
              attr_accessor :updated_at

              # Usage limit (for feature entitlements)
              sig { returns(T.nilable(Float)) }
              attr_accessor :usage_limit

              # Feature entitlement response
              sig do
                params(
                  id: String,
                  behavior:
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::Behavior::OrSymbol,
                  created_at: Time,
                  description: T.nilable(String),
                  display_name_override: T.nilable(String),
                  enum_values: T.nilable(T::Array[String]),
                  has_soft_limit: T.nilable(T::Boolean),
                  has_unlimited_usage: T.nilable(T::Boolean),
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget::OrSymbol
                    ],
                  is_custom: T.nilable(T::Boolean),
                  is_granted: T::Boolean,
                  order: T.nilable(Float),
                  reset_period:
                    T.nilable(
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::OrSymbol
                    ),
                  reset_period_configuration:
                    T.nilable(
                      T.any(
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig::OrHash,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::OrHash,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::OrHash
                      )
                    ),
                  updated_at: Time,
                  usage_limit: T.nilable(Float),
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Unique identifier of the entitlement
                id:,
                # Entitlement behavior (Increment or Override)
                behavior:,
                # Timestamp of when the record was created
                created_at:,
                # Optional description of the entitlement
                description:,
                # Override display name for the entitlement
                display_name_override:,
                # Allowed enum values (for feature entitlements)
                enum_values:,
                # Whether the usage limit is a soft limit (for feature entitlements)
                has_soft_limit:,
                # Whether usage is unlimited (for feature entitlements)
                has_unlimited_usage:,
                # Widget types where this entitlement is hidden
                hidden_from_widgets:,
                # Whether this is a custom entitlement
                is_custom:,
                # Whether the entitlement is granted
                is_granted:,
                # Display order of the entitlement
                order:,
                # Usage reset period (for feature entitlements)
                reset_period:,
                # Reset period configuration (for feature entitlements)
                reset_period_configuration:,
                # Timestamp of when the record was last updated
                updated_at:,
                # Usage limit (for feature entitlements)
                usage_limit:,
                # Entitlement type (FEATURE or CREDIT)
                type: :FEATURE
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    behavior:
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::Behavior::TaggedSymbol,
                    created_at: Time,
                    description: T.nilable(String),
                    display_name_override: T.nilable(String),
                    enum_values: T.nilable(T::Array[String]),
                    has_soft_limit: T.nilable(T::Boolean),
                    has_unlimited_usage: T.nilable(T::Boolean),
                    hidden_from_widgets:
                      T::Array[
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget::TaggedSymbol
                      ],
                    is_custom: T.nilable(T::Boolean),
                    is_granted: T::Boolean,
                    order: T.nilable(Float),
                    reset_period:
                      T.nilable(
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                      ),
                    reset_period_configuration:
                      T.nilable(
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::Variants
                      ),
                    type: Symbol,
                    updated_at: Time,
                    usage_limit: T.nilable(Float)
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
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::Behavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCREMENT =
                  T.let(
                    :Increment,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::Behavior::TaggedSymbol
                  )
                OVERRIDE =
                  T.let(
                    :Override,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::Behavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::Behavior::TaggedSymbol
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
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYWALL =
                  T.let(
                    :PAYWALL,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget::TaggedSymbol
                  )
                CUSTOMER_PORTAL =
                  T.let(
                    :CUSTOMER_PORTAL,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget::TaggedSymbol
                  )
                CHECKOUT =
                  T.let(
                    :CHECKOUT,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::HiddenFromWidget::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Usage reset period (for feature entitlements)
              module ResetPeriod
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                  )
                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                  )
                WEEK =
                  T.let(
                    :WEEK,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                  )
                DAY =
                  T.let(
                    :DAY,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                  )
                HOUR =
                  T.let(
                    :HOUR,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriod::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Reset period configuration (for feature entitlements)
              module ResetPeriodConfiguration
                extend Stigg::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig,
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig,
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig
                    )
                  end

                class YearlyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig,
                        Stigg::Internal::AnyHash
                      )
                    end

                  # Reset anchor (SubscriptionStart)
                  sig do
                    returns(
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  end
                  attr_accessor :according_to

                  # Yearly reset configuration
                  sig do
                    params(
                      according_to:
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::OrSymbol
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
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
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
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SUBSCRIPTION_START =
                      T.let(
                        :SubscriptionStart,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo::TaggedSymbol
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
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig,
                        Stigg::Internal::AnyHash
                      )
                    end

                  # Reset anchor (SubscriptionStart or StartOfTheMonth)
                  sig do
                    returns(
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  end
                  attr_accessor :according_to

                  # Monthly reset configuration
                  sig do
                    params(
                      according_to:
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::OrSymbol
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
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
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
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SUBSCRIPTION_START =
                      T.let(
                        :SubscriptionStart,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    START_OF_THE_MONTH =
                      T.let(
                        :StartOfTheMonth,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo::TaggedSymbol
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
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig,
                        Stigg::Internal::AnyHash
                      )
                    end

                  # Reset anchor (SubscriptionStart or specific day)
                  sig do
                    returns(
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                    )
                  end
                  attr_accessor :according_to

                  # Weekly reset configuration
                  sig do
                    params(
                      according_to:
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::OrSymbol
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
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
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
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SUBSCRIPTION_START =
                      T.let(
                        :SubscriptionStart,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    EVERY_SUNDAY =
                      T.let(
                        :EverySunday,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    EVERY_MONDAY =
                      T.let(
                        :EveryMonday,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    EVERY_TUESDAY =
                      T.let(
                        :EveryTuesday,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    EVERY_WEDNESDAY =
                      T.let(
                        :EveryWednesday,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    EVERY_THURSDAY =
                      T.let(
                        :EveryThursday,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    EVERY_FRIDAY =
                      T.let(
                        :EveryFriday,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )
                    EVERY_SATURDAY =
                      T.let(
                        :EverySaturday,
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo::TaggedSymbol
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
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Feature::ResetPeriodConfiguration::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            class Credit < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit,
                    Stigg::Internal::AnyHash
                  )
                end

              # Unique identifier of the entitlement
              sig { returns(String) }
              attr_accessor :id

              # Credit amount (for credit entitlements)
              sig { returns(T.nilable(Float)) }
              attr_accessor :amount

              # Entitlement behavior (Increment or Override)
              sig do
                returns(
                  Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Behavior::TaggedSymbol
                )
              end
              attr_accessor :behavior

              # Credit grant cadence (for credit entitlements)
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Cadence::TaggedSymbol
                  )
                )
              end
              attr_accessor :cadence

              # Timestamp of when the record was created
              sig { returns(Time) }
              attr_accessor :created_at

              # Optional description of the entitlement
              sig { returns(T.nilable(String)) }
              attr_accessor :description

              # Override display name for the entitlement
              sig { returns(T.nilable(String)) }
              attr_accessor :display_name_override

              # Widget types where this entitlement is hidden
              sig do
                returns(
                  T::Array[
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget::TaggedSymbol
                  ]
                )
              end
              attr_accessor :hidden_from_widgets

              # Whether this is a custom entitlement
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :is_custom

              # Whether the entitlement is granted
              sig { returns(T::Boolean) }
              attr_accessor :is_granted

              # Display order of the entitlement
              sig { returns(T.nilable(Float)) }
              attr_accessor :order

              # Entitlement type (FEATURE or CREDIT)
              sig { returns(Symbol) }
              attr_accessor :type

              # Timestamp of when the record was last updated
              sig { returns(Time) }
              attr_accessor :updated_at

              # The feature ID this entitlement depends on (for credit entitlements). The
              # entitlement value will be calculated as: base amount × dependency feature usage
              # limit
              sig { returns(T.nilable(String)) }
              attr_accessor :dependency_feature_id

              # Credit entitlement response
              sig do
                params(
                  id: String,
                  amount: T.nilable(Float),
                  behavior:
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Behavior::OrSymbol,
                  cadence:
                    T.nilable(
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Cadence::OrSymbol
                    ),
                  created_at: Time,
                  description: T.nilable(String),
                  display_name_override: T.nilable(String),
                  hidden_from_widgets:
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget::OrSymbol
                    ],
                  is_custom: T.nilable(T::Boolean),
                  is_granted: T::Boolean,
                  order: T.nilable(Float),
                  updated_at: Time,
                  dependency_feature_id: T.nilable(String),
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Unique identifier of the entitlement
                id:,
                # Credit amount (for credit entitlements)
                amount:,
                # Entitlement behavior (Increment or Override)
                behavior:,
                # Credit grant cadence (for credit entitlements)
                cadence:,
                # Timestamp of when the record was created
                created_at:,
                # Optional description of the entitlement
                description:,
                # Override display name for the entitlement
                display_name_override:,
                # Widget types where this entitlement is hidden
                hidden_from_widgets:,
                # Whether this is a custom entitlement
                is_custom:,
                # Whether the entitlement is granted
                is_granted:,
                # Display order of the entitlement
                order:,
                # Timestamp of when the record was last updated
                updated_at:,
                # The feature ID this entitlement depends on (for credit entitlements). The
                # entitlement value will be calculated as: base amount × dependency feature usage
                # limit
                dependency_feature_id: nil,
                # Entitlement type (FEATURE or CREDIT)
                type: :CREDIT
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    amount: T.nilable(Float),
                    behavior:
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Behavior::TaggedSymbol,
                    cadence:
                      T.nilable(
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Cadence::TaggedSymbol
                      ),
                    created_at: Time,
                    description: T.nilable(String),
                    display_name_override: T.nilable(String),
                    hidden_from_widgets:
                      T::Array[
                        Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget::TaggedSymbol
                      ],
                    is_custom: T.nilable(T::Boolean),
                    is_granted: T::Boolean,
                    order: T.nilable(Float),
                    type: Symbol,
                    updated_at: Time,
                    dependency_feature_id: T.nilable(String)
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
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Behavior
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCREMENT =
                  T.let(
                    :Increment,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Behavior::TaggedSymbol
                  )
                OVERRIDE =
                  T.let(
                    :Override,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Behavior::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Behavior::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Credit grant cadence (for credit entitlements)
              module Cadence
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MONTH =
                  T.let(
                    :MONTH,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Cadence::TaggedSymbol
                  )
                YEAR =
                  T.let(
                    :YEAR,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::Cadence::TaggedSymbol
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
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYWALL =
                  T.let(
                    :PAYWALL,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget::TaggedSymbol
                  )
                CUSTOMER_PORTAL =
                  T.let(
                    :CUSTOMER_PORTAL,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget::TaggedSymbol
                  )
                CHECKOUT =
                  T.let(
                    :CHECKOUT,
                    Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Addons::AddonPackageEntitlement::Data::Credit::HiddenFromWidget::TaggedSymbol
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
                  Stigg::V1::Addons::AddonPackageEntitlement::Data::Variants
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
