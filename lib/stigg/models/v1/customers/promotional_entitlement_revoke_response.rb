# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::PromotionalEntitlements#revoke
        class PromotionalEntitlementRevokeResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Granted feature entitlement
          #
          #   @return [Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data]
          required :data, -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data] Granted feature entitlement

          # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier for the entity
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute description
            #   The description of the entitlement
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute end_date
            #   The end date of the promotional entitlement
            #
            #   @return [Time, nil]
            required :end_date, Time, api_name: :endDate, nil?: true

            # @!attribute enum_values
            #   The enum values of the entitlement
            #
            #   @return [Array<String>, nil]
            required :enum_values, Stigg::Internal::Type::ArrayOf[String], api_name: :enumValues, nil?: true

            # @!attribute environment_id
            #   The unique identifier for the environment
            #
            #   @return [String]
            required :environment_id, String, api_name: :environmentId

            # @!attribute feature_group_ids
            #   Feature group IDs associated with this entitlement
            #
            #   @return [Array<String>, nil]
            required :feature_group_ids,
                     Stigg::Internal::Type::ArrayOf[String],
                     api_name: :featureGroupIds,
                     nil?: true

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
            #   @return [Boolean]
            required :is_visible, Stigg::Internal::Type::Boolean, api_name: :isVisible

            # @!attribute period
            #   The grant period of the promotional entitlement
            #
            #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period]
            required :period,
                     enum: -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period }

            # @!attribute reset_period
            #   The reset period of the entitlement
            #
            #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod, nil]
            required :reset_period,
                     enum: -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod },
                     api_name: :resetPeriod,
                     nil?: true

            # @!attribute reset_period_configuration
            #   The reset period configuration of the entitlement
            #
            #   @return [Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig, nil]
            required :reset_period_configuration,
                     union: -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration },
                     api_name: :resetPeriodConfiguration,
                     nil?: true

            # @!attribute start_date
            #   The start date of the entitlement
            #
            #   @return [Time]
            required :start_date, Time, api_name: :startDate

            # @!attribute status
            #   The status of the entitlement
            #
            #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status]
            required :status,
                     enum: -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status }

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute usage_limit
            #   The usage limit of the entitlement
            #
            #   @return [Float, nil]
            required :usage_limit, Float, api_name: :usageLimit, nil?: true

            # @!method initialize(id:, created_at:, description:, end_date:, enum_values:, environment_id:, feature_group_ids:, feature_id:, has_soft_limit:, has_unlimited_usage:, is_visible:, period:, reset_period:, reset_period_configuration:, start_date:, status:, updated_at:, usage_limit:)
            #   Granted feature entitlement
            #
            #   @param id [String] Unique identifier for the entity
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param description [String, nil] The description of the entitlement
            #
            #   @param end_date [Time, nil] The end date of the promotional entitlement
            #
            #   @param enum_values [Array<String>, nil] The enum values of the entitlement
            #
            #   @param environment_id [String] The unique identifier for the environment
            #
            #   @param feature_group_ids [Array<String>, nil] Feature group IDs associated with this entitlement
            #
            #   @param feature_id [String] The unique identifier of the entitlement feature
            #
            #   @param has_soft_limit [Boolean, nil] Whether the entitlement has a soft limit
            #
            #   @param has_unlimited_usage [Boolean, nil] Whether the entitlement has an unlimited usage
            #
            #   @param is_visible [Boolean] Whether the entitlement is visible
            #
            #   @param period [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Period] The grant period of the promotional entitlement
            #
            #   @param reset_period [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriod, nil] The reset period of the entitlement
            #
            #   @param reset_period_configuration [Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig, nil] The reset period configuration of the entitlement
            #
            #   @param start_date [Time] The start date of the entitlement
            #
            #   @param status [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::Status] The status of the entitlement
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
            #
            #   @param usage_limit [Float, nil] The usage limit of the entitlement

            # The grant period of the promotional entitlement
            #
            # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data#period
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
            # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data#reset_period
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

            # The reset period configuration of the entitlement
            #
            # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data#reset_period_configuration
            module ResetPeriodConfiguration
              extend Stigg::Internal::Type::Union

              # Yearly reset configuration
              variant -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig }

              # Monthly reset configuration
              variant -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig }

              # Weekly reset configuration
              variant -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig }

              class YearlyResetPeriodConfig < Stigg::Internal::Type::BaseModel
                # @!attribute according_to
                #   Reset anchor (SubscriptionStart)
                #
                #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo]
                required :according_to,
                         enum: -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Yearly reset configuration
                #
                #   @param according_to [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig::AccordingTo] Reset anchor (SubscriptionStart)

                # Reset anchor (SubscriptionStart)
                #
                # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig#according_to
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
                #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo]
                required :according_to,
                         enum: -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Monthly reset configuration
                #
                #   @param according_to [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig::AccordingTo] Reset anchor (SubscriptionStart or StartOfTheMonth)

                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                #
                # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig#according_to
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
                #   @return [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo]
                required :according_to,
                         enum: -> { Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo },
                         api_name: :accordingTo

                # @!method initialize(according_to:)
                #   Weekly reset configuration
                #
                #   @param according_to [Symbol, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig::AccordingTo] Reset anchor (SubscriptionStart or specific day)

                # Reset anchor (SubscriptionStart or specific day)
                #
                # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig#according_to
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
              #   @return [Array(Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::YearlyResetPeriodConfig, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::MonthlyResetPeriodConfig, Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data::ResetPeriodConfiguration::WeeklyResetPeriodConfig)]
            end

            # The status of the entitlement
            #
            # @see Stigg::Models::V1::Customers::PromotionalEntitlementRevokeResponse::Data#status
            module Status
              extend Stigg::Internal::Type::Enum

              ACTIVE = :Active
              EXPIRED = :Expired
              PAUSED = :Paused

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
