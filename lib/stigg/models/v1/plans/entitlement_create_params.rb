# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Plans
        # @see Stigg::Resources::V1::Plans::Entitlements#create
        class EntitlementCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute plan_id
          #
          #   @return [String]
          required :plan_id, String

          # @!attribute entitlements
          #   Entitlements to create
          #
          #   @return [Array<Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit>]
          required :entitlements,
                   -> { Stigg::Internal::Type::ArrayOf[union: Stigg::V1::Plans::EntitlementCreateParams::Entitlement] }

          # @!method initialize(plan_id:, entitlements:, request_options: {})
          #   @param plan_id [String]
          #
          #   @param entitlements [Array<Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit>] Entitlements to create
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # Request to create a feature entitlement
          module Entitlement
            extend Stigg::Internal::Type::Union

            discriminator :type

            # Request to create a feature entitlement
            variant :FEATURE, -> { Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature }

            # Request to create a credit entitlement
            variant :CREDIT, -> { Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Credit }

            class Feature < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The feature ID to attach the entitlement to
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #   CreateFeatureEntitlementRequest
              #
              #   @return [Symbol, :FEATURE]
              required :type, const: :FEATURE

              # @!attribute behavior
              #   Entitlement behavior (Increment or Override)
              #
              #   @return [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::Behavior, nil]
              optional :behavior, enum: -> { Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::Behavior }

              # @!attribute description
              #   Description of the entitlement
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute display_name_override
              #   Override display name for the entitlement
              #
              #   @return [String, nil]
              optional :display_name_override, String, api_name: :displayNameOverride

              # @!attribute enum_values
              #   Allowed enum values for the feature entitlement
              #
              #   @return [Array<String>, nil]
              optional :enum_values, Stigg::Internal::Type::ArrayOf[String], api_name: :enumValues

              # @!attribute has_soft_limit
              #   Whether the usage limit is a soft limit
              #
              #   @return [Boolean, nil]
              optional :has_soft_limit, Stigg::Internal::Type::Boolean, api_name: :hasSoftLimit

              # @!attribute has_unlimited_usage
              #   Whether usage is unlimited
              #
              #   @return [Boolean, nil]
              optional :has_unlimited_usage, Stigg::Internal::Type::Boolean, api_name: :hasUnlimitedUsage

              # @!attribute hidden_from_widgets
              #   Widget types where this entitlement is hidden
              #
              #   @return [Array<Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget>, nil]
              optional :hidden_from_widgets,
                       -> {
                         Stigg::Internal::Type::ArrayOf[enum: Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget]
                       },
                       api_name: :hiddenFromWidgets

              # @!attribute is_custom
              #   Whether this is a custom entitlement
              #
              #   @return [Boolean, nil]
              optional :is_custom, Stigg::Internal::Type::Boolean, api_name: :isCustom

              # @!attribute is_granted
              #   Whether the entitlement is granted
              #
              #   @return [Boolean, nil]
              optional :is_granted, Stigg::Internal::Type::Boolean, api_name: :isGranted

              # @!attribute monthly_reset_period_configuration
              #   Configuration for monthly reset period
              #
              #   @return [Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration, nil]
              optional :monthly_reset_period_configuration,
                       -> {
                         Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration
                       },
                       api_name: :monthlyResetPeriodConfiguration,
                       nil?: true

              # @!attribute order
              #   Display order of the entitlement
              #
              #   @return [Float, nil]
              optional :order, Float

              # @!attribute reset_period
              #   Period at which usage resets
              #
              #   @return [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::ResetPeriod, nil]
              optional :reset_period,
                       enum: -> {
                         Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::ResetPeriod
                       },
                       api_name: :resetPeriod

              # @!attribute usage_limit
              #   Maximum allowed usage for the feature
              #
              #   @return [Integer, nil]
              optional :usage_limit, Integer, api_name: :usageLimit, nil?: true

              # @!attribute weekly_reset_period_configuration
              #   Configuration for weekly reset period
              #
              #   @return [Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration, nil]
              optional :weekly_reset_period_configuration,
                       -> {
                         Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration
                       },
                       api_name: :weeklyResetPeriodConfiguration,
                       nil?: true

              # @!attribute yearly_reset_period_configuration
              #   Configuration for yearly reset period
              #
              #   @return [Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration, nil]
              optional :yearly_reset_period_configuration,
                       -> {
                         Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration
                       },
                       api_name: :yearlyResetPeriodConfiguration,
                       nil?: true

              # @!method initialize(id:, behavior: nil, description: nil, display_name_override: nil, enum_values: nil, has_soft_limit: nil, has_unlimited_usage: nil, hidden_from_widgets: nil, is_custom: nil, is_granted: nil, monthly_reset_period_configuration: nil, order: nil, reset_period: nil, usage_limit: nil, weekly_reset_period_configuration: nil, yearly_reset_period_configuration: nil, type: :FEATURE)
              #   Request to create a feature entitlement
              #
              #   @param id [String] The feature ID to attach the entitlement to
              #
              #   @param behavior [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::Behavior] Entitlement behavior (Increment or Override)
              #
              #   @param description [String] Description of the entitlement
              #
              #   @param display_name_override [String] Override display name for the entitlement
              #
              #   @param enum_values [Array<String>] Allowed enum values for the feature entitlement
              #
              #   @param has_soft_limit [Boolean] Whether the usage limit is a soft limit
              #
              #   @param has_unlimited_usage [Boolean] Whether usage is unlimited
              #
              #   @param hidden_from_widgets [Array<Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::HiddenFromWidget>] Widget types where this entitlement is hidden
              #
              #   @param is_custom [Boolean] Whether this is a custom entitlement
              #
              #   @param is_granted [Boolean] Whether the entitlement is granted
              #
              #   @param monthly_reset_period_configuration [Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration, nil] Configuration for monthly reset period
              #
              #   @param order [Float] Display order of the entitlement
              #
              #   @param reset_period [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::ResetPeriod] Period at which usage resets
              #
              #   @param usage_limit [Integer, nil] Maximum allowed usage for the feature
              #
              #   @param weekly_reset_period_configuration [Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration, nil] Configuration for weekly reset period
              #
              #   @param yearly_reset_period_configuration [Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration, nil] Configuration for yearly reset period
              #
              #   @param type [Symbol, :FEATURE] CreateFeatureEntitlementRequest

              # Entitlement behavior (Increment or Override)
              #
              # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature#behavior
              module Behavior
                extend Stigg::Internal::Type::Enum

                INCREMENT = :Increment
                OVERRIDE = :Override

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

              # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature#monthly_reset_period_configuration
              class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
                # @!attribute according_to
                #   Reset anchor (SubscriptionStart or StartOfTheMonth)
                #
                #   @return [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo]
                required :according_to,
                         enum: -> {
                           Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo
                         },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Configuration for monthly reset period
                #
                #   @param according_to [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                #
                # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::MonthlyResetPeriodConfiguration#according_to
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  SUBSCRIPTION_START = :SubscriptionStart
                  START_OF_THE_MONTH = :StartOfTheMonth

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # Period at which usage resets
              #
              # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature#reset_period
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

              # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature#weekly_reset_period_configuration
              class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
                # @!attribute according_to
                #   Reset anchor (SubscriptionStart or specific day)
                #
                #   @return [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo]
                required :according_to,
                         enum: -> {
                           Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo
                         },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Configuration for weekly reset period
                #
                #   @param according_to [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or specific day)

                # Reset anchor (SubscriptionStart or specific day)
                #
                # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::WeeklyResetPeriodConfiguration#according_to
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

              # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature#yearly_reset_period_configuration
              class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
                # @!attribute according_to
                #   Reset anchor (SubscriptionStart)
                #
                #   @return [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo]
                required :according_to,
                         enum: -> {
                           Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo
                         },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Configuration for yearly reset period
                #
                #   @param according_to [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart)

                # Reset anchor (SubscriptionStart)
                #
                # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature::YearlyResetPeriodConfiguration#according_to
                module AccordingTo
                  extend Stigg::Internal::Type::Enum

                  SUBSCRIPTION_START = :SubscriptionStart

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            class Credit < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The custom currency ID for the credit entitlement
              #
              #   @return [String]
              required :id, String

              # @!attribute amount
              #   Credit grant amount
              #
              #   @return [Float, nil]
              required :amount, Float, nil?: true

              # @!attribute cadence
              #   Credit grant cadence (MONTH or YEAR)
              #
              #   @return [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit::Cadence]
              required :cadence, enum: -> { Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Credit::Cadence }

              # @!attribute type
              #   CreateCreditEntitlementRequest
              #
              #   @return [Symbol, :CREDIT]
              required :type, const: :CREDIT

              # @!attribute behavior
              #   Entitlement behavior (Increment or Override)
              #
              #   @return [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit::Behavior, nil]
              optional :behavior, enum: -> { Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Credit::Behavior }

              # @!attribute dependency_feature_id
              #   The feature ID this entitlement depends on. The entitlement value will be
              #   calculated as: base amount × dependency feature usage limit
              #
              #   @return [String, nil]
              optional :dependency_feature_id, String, api_name: :dependencyFeatureId

              # @!attribute description
              #   Description of the entitlement
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute display_name_override
              #   Override display name for the entitlement
              #
              #   @return [String, nil]
              optional :display_name_override, String, api_name: :displayNameOverride

              # @!attribute hidden_from_widgets
              #   Widget types where this entitlement is hidden
              #
              #   @return [Array<Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget>, nil]
              optional :hidden_from_widgets,
                       -> {
                         Stigg::Internal::Type::ArrayOf[enum: Stigg::V1::Plans::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget]
                       },
                       api_name: :hiddenFromWidgets

              # @!attribute is_custom
              #   Whether this is a custom entitlement
              #
              #   @return [Boolean, nil]
              optional :is_custom, Stigg::Internal::Type::Boolean, api_name: :isCustom

              # @!attribute is_granted
              #   Whether the entitlement is granted
              #
              #   @return [Boolean, nil]
              optional :is_granted, Stigg::Internal::Type::Boolean, api_name: :isGranted

              # @!attribute order
              #   Display order of the entitlement
              #
              #   @return [Float, nil]
              optional :order, Float

              # @!method initialize(id:, amount:, cadence:, behavior: nil, dependency_feature_id: nil, description: nil, display_name_override: nil, hidden_from_widgets: nil, is_custom: nil, is_granted: nil, order: nil, type: :CREDIT)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit} for
              #   more details.
              #
              #   Request to create a credit entitlement
              #
              #   @param id [String] The custom currency ID for the credit entitlement
              #
              #   @param amount [Float, nil] Credit grant amount
              #
              #   @param cadence [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit::Cadence] Credit grant cadence (MONTH or YEAR)
              #
              #   @param behavior [Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit::Behavior] Entitlement behavior (Increment or Override)
              #
              #   @param dependency_feature_id [String] The feature ID this entitlement depends on. The entitlement value will be calcul
              #
              #   @param description [String] Description of the entitlement
              #
              #   @param display_name_override [String] Override display name for the entitlement
              #
              #   @param hidden_from_widgets [Array<Symbol, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit::HiddenFromWidget>] Widget types where this entitlement is hidden
              #
              #   @param is_custom [Boolean] Whether this is a custom entitlement
              #
              #   @param is_granted [Boolean] Whether the entitlement is granted
              #
              #   @param order [Float] Display order of the entitlement
              #
              #   @param type [Symbol, :CREDIT] CreateCreditEntitlementRequest

              # Credit grant cadence (MONTH or YEAR)
              #
              # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit#cadence
              module Cadence
                extend Stigg::Internal::Type::Enum

                MONTH = :MONTH
                YEAR = :YEAR

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Entitlement behavior (Increment or Override)
              #
              # @see Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit#behavior
              module Behavior
                extend Stigg::Internal::Type::Enum

                INCREMENT = :Increment
                OVERRIDE = :Override

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
            end

            # @!method self.variants
            #   @return [Array(Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Feature, Stigg::Models::V1::Plans::EntitlementCreateParams::Entitlement::Credit)]
          end
        end
      end
    end
  end
end
