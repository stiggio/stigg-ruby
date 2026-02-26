# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Addons
          # @see Stigg::Resources::V1::Events::Addons::Entitlements#create
          class EntitlementCreateResponse < Stigg::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data>]
            required :data,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data] }

            # @!method initialize(data:)
            #   Response object
            #
            #   @param data [Array<Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data>]

            class Data < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   Unique identifier of the entitlement
              #
              #   @return [String]
              required :id, String

              # @!attribute amount
              #   Credit amount (for credit entitlements)
              #
              #   @return [Float, nil]
              required :amount, Float, nil?: true

              # @!attribute behavior
              #   Entitlement behavior (Increment or Override)
              #
              #   @return [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Behavior]
              required :behavior,
                       enum: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Behavior }

              # @!attribute cadence
              #   Credit grant cadence (for credit entitlements)
              #
              #   @return [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Cadence, nil]
              required :cadence,
                       enum: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Cadence },
                       nil?: true

              # @!attribute created_at
              #   Timestamp of when the record was created
              #
              #   @return [Time]
              required :created_at, Time, api_name: :createdAt

              # @!attribute custom_currency_id
              #   Custom currency ID (for credit entitlements)
              #
              #   @return [String, nil]
              required :custom_currency_id, String, api_name: :customCurrencyId, nil?: true

              # @!attribute description
              #   Optional description of the entitlement
              #
              #   @return [String, nil]
              required :description, String, nil?: true

              # @!attribute display_name_override
              #   Override display name for the entitlement
              #
              #   @return [String, nil]
              required :display_name_override, String, api_name: :displayNameOverride, nil?: true

              # @!attribute enum_values
              #   Allowed enum values (for feature entitlements)
              #
              #   @return [Array<String>, nil]
              required :enum_values, Stigg::Internal::Type::ArrayOf[String], api_name: :enumValues, nil?: true

              # @!attribute feature_id
              #   Feature ID (for feature entitlements)
              #
              #   @return [String, nil]
              required :feature_id, String, api_name: :featureId, nil?: true

              # @!attribute has_soft_limit
              #   Whether the usage limit is a soft limit (for feature entitlements)
              #
              #   @return [Boolean, nil]
              required :has_soft_limit, Stigg::Internal::Type::Boolean, api_name: :hasSoftLimit, nil?: true

              # @!attribute has_unlimited_usage
              #   Whether usage is unlimited (for feature entitlements)
              #
              #   @return [Boolean, nil]
              required :has_unlimited_usage,
                       Stigg::Internal::Type::Boolean,
                       api_name: :hasUnlimitedUsage,
                       nil?: true

              # @!attribute hidden_from_widgets
              #   Widget types where this entitlement is hidden
              #
              #   @return [Array<Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::HiddenFromWidget>]
              required :hidden_from_widgets,
                       -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::HiddenFromWidget] },
                       api_name: :hiddenFromWidgets

              # @!attribute is_custom
              #   Whether this is a custom entitlement
              #
              #   @return [Boolean, nil]
              required :is_custom, Stigg::Internal::Type::Boolean, api_name: :isCustom, nil?: true

              # @!attribute is_granted
              #   Whether the entitlement is granted
              #
              #   @return [Boolean]
              required :is_granted, Stigg::Internal::Type::Boolean, api_name: :isGranted

              # @!attribute order
              #   Display order of the entitlement
              #
              #   @return [Float, nil]
              required :order, Float, nil?: true

              # @!attribute reset_period
              #   Usage reset period (for feature entitlements)
              #
              #   @return [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriod, nil]
              required :reset_period,
                       enum: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriod },
                       api_name: :resetPeriod,
                       nil?: true

              # @!attribute reset_period_configuration
              #   Reset period configuration (for feature entitlements)
              #
              #   @return [Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig, nil]
              required :reset_period_configuration,
                       union: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration },
                       api_name: :resetPeriodConfiguration,
                       nil?: true

              # @!attribute type
              #   Entitlement type (FEATURE or CREDIT)
              #
              #   @return [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Type]
              required :type, enum: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Type }

              # @!attribute updated_at
              #   Timestamp of when the record was last updated
              #
              #   @return [Time]
              required :updated_at, Time, api_name: :updatedAt

              # @!attribute usage_limit
              #   Usage limit (for feature entitlements)
              #
              #   @return [Float, nil]
              required :usage_limit, Float, api_name: :usageLimit, nil?: true

              # @!method initialize(id:, amount:, behavior:, cadence:, created_at:, custom_currency_id:, description:, display_name_override:, enum_values:, feature_id:, has_soft_limit:, has_unlimited_usage:, hidden_from_widgets:, is_custom:, is_granted:, order:, reset_period:, reset_period_configuration:, type:, updated_at:, usage_limit:)
              #   Feature or credit entitlement on an addon
              #
              #   @param id [String] Unique identifier of the entitlement
              #
              #   @param amount [Float, nil] Credit amount (for credit entitlements)
              #
              #   @param behavior [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Behavior] Entitlement behavior (Increment or Override)
              #
              #   @param cadence [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Cadence, nil] Credit grant cadence (for credit entitlements)
              #
              #   @param created_at [Time] Timestamp of when the record was created
              #
              #   @param custom_currency_id [String, nil] Custom currency ID (for credit entitlements)
              #
              #   @param description [String, nil] Optional description of the entitlement
              #
              #   @param display_name_override [String, nil] Override display name for the entitlement
              #
              #   @param enum_values [Array<String>, nil] Allowed enum values (for feature entitlements)
              #
              #   @param feature_id [String, nil] Feature ID (for feature entitlements)
              #
              #   @param has_soft_limit [Boolean, nil] Whether the usage limit is a soft limit (for feature entitlements)
              #
              #   @param has_unlimited_usage [Boolean, nil] Whether usage is unlimited (for feature entitlements)
              #
              #   @param hidden_from_widgets [Array<Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::HiddenFromWidget>] Widget types where this entitlement is hidden
              #
              #   @param is_custom [Boolean, nil] Whether this is a custom entitlement
              #
              #   @param is_granted [Boolean] Whether the entitlement is granted
              #
              #   @param order [Float, nil] Display order of the entitlement
              #
              #   @param reset_period [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriod, nil] Usage reset period (for feature entitlements)
              #
              #   @param reset_period_configuration [Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig, nil] Reset period configuration (for feature entitlements)
              #
              #   @param type [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::Type] Entitlement type (FEATURE or CREDIT)
              #
              #   @param updated_at [Time] Timestamp of when the record was last updated
              #
              #   @param usage_limit [Float, nil] Usage limit (for feature entitlements)

              # Entitlement behavior (Increment or Override)
              #
              # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data#behavior
              module Behavior
                extend Stigg::Internal::Type::Enum

                INCREMENT = :Increment
                OVERRIDE = :Override

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Credit grant cadence (for credit entitlements)
              #
              # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data#cadence
              module Cadence
                extend Stigg::Internal::Type::Enum

                MONTH = :MONTH
                YEAR = :YEAR

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              module HiddenFromWidget
                extend Stigg::Internal::Type::Enum

                PAYWALL = :PAYWALL
                CUSTOMER_PORTAL = :CUSTOMER_PORTAL
                CHECKOUT = :CHECKOUT

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Usage reset period (for feature entitlements)
              #
              # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data#reset_period
              module ResetPeriod
                extend Stigg::Internal::Type::Enum

                YEAR = :YEAR
                MONTH = :MONTH
                WEEK = :WEEK
                DAY = :DAY
                HOUR = :HOUR

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Reset period configuration (for feature entitlements)
              #
              # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data#reset_period_configuration
              module ResetPeriodConfiguration
                extend Stigg::Internal::Type::Union

                # Yearly reset configuration
                variant -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig }

                # Monthly reset configuration
                variant -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig }

                # Weekly reset configuration
                variant -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig }

                class YearlyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                  # @!attribute according_to
                  #   Reset anchor (SubscriptionStart)
                  #
                  #   @return [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo]
                  required :according_to,
                           enum: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo },
                           api_name: :accordingTo

                  # @!method initialize(according_to:)
                  #   Yearly reset configuration
                  #
                  #   @param according_to [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo] Reset anchor (SubscriptionStart)

                  # Reset anchor (SubscriptionStart)
                  #
                  # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig#according_to
                  module AccordingTo
                    extend Stigg::Internal::Type::Enum

                    SUBSCRIPTION_START = :SubscriptionStart

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class MonthlyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                  # @!attribute according_to
                  #   Reset anchor (SubscriptionStart or StartOfTheMonth)
                  #
                  #   @return [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo]
                  required :according_to,
                           enum: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo },
                           api_name: :accordingTo

                  # @!method initialize(according_to:)
                  #   Monthly reset configuration
                  #
                  #   @param according_to [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

                  # Reset anchor (SubscriptionStart or StartOfTheMonth)
                  #
                  # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig#according_to
                  module AccordingTo
                    extend Stigg::Internal::Type::Enum

                    SUBSCRIPTION_START = :SubscriptionStart
                    START_OF_THE_MONTH = :StartOfTheMonth

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class WeeklyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                  # @!attribute according_to
                  #   Reset anchor (SubscriptionStart or specific day)
                  #
                  #   @return [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo]
                  required :according_to,
                           enum: -> { Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo },
                           api_name: :accordingTo

                  # @!method initialize(according_to:)
                  #   Weekly reset configuration
                  #
                  #   @param according_to [Symbol, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo] Reset anchor (SubscriptionStart or specific day)

                  # Reset anchor (SubscriptionStart or specific day)
                  #
                  # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig#according_to
                  module AccordingTo
                    extend Stigg::Internal::Type::Enum

                    SUBSCRIPTION_START = :SubscriptionStart
                    EVERY_SUNDAY = :EverySunday
                    EVERY_MONDAY = :EveryMonday
                    EVERY_TUESDAY = :EveryTuesday
                    EVERY_WEDNESDAY = :EveryWednesday
                    EVERY_THURSDAY = :EveryThursday
                    EVERY_FRIDAY = :EveryFriday
                    EVERY_SATURDAY = :EverySaturday

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig, Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig)]
              end

              # Entitlement type (FEATURE or CREDIT)
              #
              # @see Stigg::Models::V1::Events::Addons::EntitlementCreateResponse::Data#type
              module Type
                extend Stigg::Internal::Type::Enum

                FEATURE = :FEATURE
                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
