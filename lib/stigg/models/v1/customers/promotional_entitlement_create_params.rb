# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::PromotionalEntitlements#create
        class PromotionalEntitlementCreateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute promotional_entitlements
          #   Promotional entitlements to grant
          #
          #   @return [Array<Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement>]
          required :promotional_entitlements,
                   -> {
                     Stigg::Internal::Type::ArrayOf[Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement]
                   },
                   api_name: :promotionalEntitlements

          # @!method initialize(promotional_entitlements:, request_options: {})
          #   @param promotional_entitlements [Array<Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement>] Promotional entitlements to grant
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          class PromotionalEntitlement < Stigg::Internal::Type::BaseModel
            # @!attribute custom_end_date
            #   The custom end date of the promotional entitlement
            #
            #   @return [Time, nil]
            required :custom_end_date, Time, api_name: :customEndDate, nil?: true

            # @!attribute enum_values
            #   The enum values of the entitlement
            #
            #   @return [Array<String>, nil]
            required :enum_values, Stigg::Internal::Type::ArrayOf[String], api_name: :enumValues, nil?: true

            # @!attribute feature_id
            #   The unique identifier of the entitlement feature
            #
            #   @return [String]
            required :feature_id, String, api_name: :featureId

            # @!attribute has_soft_limit
            #   Whether the entitlement has a soft limit
            #
            #   @return [Boolean, nil]
            required :has_soft_limit, Stigg::Internal::Type::Boolean, api_name: :hasSoftLimit, nil?: true

            # @!attribute has_unlimited_usage
            #   Whether the entitlement has an unlimited usage
            #
            #   @return [Boolean, nil]
            required :has_unlimited_usage,
                     Stigg::Internal::Type::Boolean,
                     api_name: :hasUnlimitedUsage,
                     nil?: true

            # @!attribute is_visible
            #   Whether the entitlement is visible
            #
            #   @return [Boolean, nil]
            required :is_visible, Stigg::Internal::Type::Boolean, api_name: :isVisible, nil?: true

            # @!attribute monthly_reset_period_configuration
            #   The monthly reset period configuration of the entitlement, defined when reset
            #   period is monthly
            #
            #   @return [Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration, nil]
            required :monthly_reset_period_configuration,
                     -> {
                       Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration
                     },
                     api_name: :monthlyResetPeriodConfiguration,
                     nil?: true

            # @!attribute period
            #   The grant period of the promotional entitlement
            #
            #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::Period]
            required :period,
                     enum: -> { Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::Period }

            # @!attribute reset_period
            #   The reset period of the entitlement
            #
            #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::ResetPeriod, nil]
            required :reset_period,
                     enum: -> {
                       Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::ResetPeriod
                     },
                     api_name: :resetPeriod,
                     nil?: true

            # @!attribute usage_limit
            #   The usage limit of the entitlement
            #
            #   @return [Integer, nil]
            required :usage_limit, Integer, api_name: :usageLimit, nil?: true

            # @!attribute weekly_reset_period_configuration
            #   The weekly reset period configuration of the entitlement, defined when reset
            #   period is weekly
            #
            #   @return [Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration, nil]
            required :weekly_reset_period_configuration,
                     -> {
                       Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration
                     },
                     api_name: :weeklyResetPeriodConfiguration,
                     nil?: true

            # @!attribute yearly_reset_period_configuration
            #   The yearly reset period configuration of the entitlement, defined when reset
            #   period is yearly
            #
            #   @return [Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration, nil]
            required :yearly_reset_period_configuration,
                     -> {
                       Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration
                     },
                     api_name: :yearlyResetPeriodConfiguration,
                     nil?: true

            # @!method initialize(custom_end_date:, enum_values:, feature_id:, has_soft_limit:, has_unlimited_usage:, is_visible:, monthly_reset_period_configuration:, period:, reset_period:, usage_limit:, weekly_reset_period_configuration:, yearly_reset_period_configuration:)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement}
            #   for more details.
            #
            #   Single entitlement grant config
            #
            #   @param custom_end_date [Time, nil] The custom end date of the promotional entitlement
            #
            #   @param enum_values [Array<String>, nil] The enum values of the entitlement
            #
            #   @param feature_id [String] The unique identifier of the entitlement feature
            #
            #   @param has_soft_limit [Boolean, nil] Whether the entitlement has a soft limit
            #
            #   @param has_unlimited_usage [Boolean, nil] Whether the entitlement has an unlimited usage
            #
            #   @param is_visible [Boolean, nil] Whether the entitlement is visible
            #
            #   @param monthly_reset_period_configuration [Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration, nil] The monthly reset period configuration of the entitlement, defined when reset pe
            #
            #   @param period [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::Period] The grant period of the promotional entitlement
            #
            #   @param reset_period [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::ResetPeriod, nil] The reset period of the entitlement
            #
            #   @param usage_limit [Integer, nil] The usage limit of the entitlement
            #
            #   @param weekly_reset_period_configuration [Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration, nil] The weekly reset period configuration of the entitlement, defined when reset per
            #
            #   @param yearly_reset_period_configuration [Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration, nil] The yearly reset period configuration of the entitlement, defined when reset per

            # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement#monthly_reset_period_configuration
            class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   The monthly reset period configuration of the entitlement, defined when reset
              #   period is monthly
              #
              #   @param according_to [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              #
              # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::MonthlyResetPeriodConfiguration#according_to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                SUBSCRIPTION_START = :SubscriptionStart
                START_OF_THE_MONTH = :StartOfTheMonth

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The grant period of the promotional entitlement
            #
            # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement#period
            module Period
              extend Stigg::Internal::Type::Enum

              PERIOD_1_WEEK = :"1 week"
              PERIOD_1_MONTH = :"1 month"
              PERIOD_6_MONTH = :"6 month"
              PERIOD_1_YEAR = :"1 year"
              LIFETIME = :lifetime
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The reset period of the entitlement
            #
            # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement#reset_period
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

            # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement#weekly_reset_period_configuration
            class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart or specific day)
              #
              #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   The weekly reset period configuration of the entitlement, defined when reset
              #   period is weekly
              #
              #   @param according_to [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart or specific day)

              # Reset anchor (SubscriptionStart or specific day)
              #
              # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::WeeklyResetPeriodConfiguration#according_to
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

            # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement#yearly_reset_period_configuration
            class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              # @!attribute according_to
              #   Reset anchor (SubscriptionStart)
              #
              #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo]
              required :according_to,
                       enum: -> {
                         Stigg::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo
                       },
                       api_name: :accordingTo

              # @!method initialize(according_to:)
              #   The yearly reset period configuration of the entitlement, defined when reset
              #   period is yearly
              #
              #   @param according_to [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration::AccordingTo] Reset anchor (SubscriptionStart)

              # Reset anchor (SubscriptionStart)
              #
              # @see Stigg::Models::V1::Customers::PromotionalEntitlementCreateParams::PromotionalEntitlement::YearlyResetPeriodConfiguration#according_to
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                SUBSCRIPTION_START = :SubscriptionStart

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
