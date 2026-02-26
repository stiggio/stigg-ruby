# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Plans#update
        class PlanUpdateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute billing_id
          #   The unique identifier for the entity in the billing provider
          #
          #   @return [String, nil]
          optional :billing_id, String, api_name: :billingId, nil?: true

          # @!attribute compatible_addon_ids
          #
          #   @return [Array<String>, nil]
          optional :compatible_addon_ids,
                   Stigg::Internal::Type::ArrayOf[String],
                   api_name: :compatibleAddonIds,
                   nil?: true

          # @!attribute default_trial_config
          #   Default trial configuration for the plan
          #
          #   @return [Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig, nil]
          optional :default_trial_config,
                   -> { Stigg::V1::Events::PlanUpdateParams::DefaultTrialConfig },
                   api_name: :defaultTrialConfig,
                   nil?: true

          # @!attribute description
          #   The description of the package
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute display_name
          #   The display name of the package
          #
          #   @return [String, nil]
          optional :display_name, String, api_name: :displayName

          # @!attribute metadata
          #   Metadata associated with the entity
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute parent_plan_id
          #   The ID of the parent plan, if applicable
          #
          #   @return [String, nil]
          optional :parent_plan_id, String, api_name: :parentPlanId, nil?: true

          # @!method initialize(billing_id: nil, compatible_addon_ids: nil, default_trial_config: nil, description: nil, display_name: nil, metadata: nil, parent_plan_id: nil, request_options: {})
          #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
          #
          #   @param compatible_addon_ids [Array<String>, nil]
          #
          #   @param default_trial_config [Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig, nil] Default trial configuration for the plan
          #
          #   @param description [String, nil] The description of the package
          #
          #   @param display_name [String] The display name of the package
          #
          #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
          #
          #   @param parent_plan_id [String, nil] The ID of the parent plan, if applicable
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          class DefaultTrialConfig < Stigg::Internal::Type::BaseModel
            # @!attribute duration
            #   The duration of the trial in the specified units
            #
            #   @return [Float]
            required :duration, Float

            # @!attribute units
            #   The time unit for the trial duration (DAY or MONTH)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig::Units]
            required :units, enum: -> { Stigg::V1::Events::PlanUpdateParams::DefaultTrialConfig::Units }

            # @!attribute budget
            #   Budget configuration for the trial
            #
            #   @return [Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig::Budget, nil]
            optional :budget,
                     -> {
                       Stigg::V1::Events::PlanUpdateParams::DefaultTrialConfig::Budget
                     },
                     nil?: true

            # @!attribute trial_end_behavior
            #   Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig::TrialEndBehavior, nil]
            optional :trial_end_behavior,
                     enum: -> { Stigg::V1::Events::PlanUpdateParams::DefaultTrialConfig::TrialEndBehavior },
                     api_name: :trialEndBehavior,
                     nil?: true

            # @!method initialize(duration:, units:, budget: nil, trial_end_behavior: nil)
            #   Default trial configuration for the plan
            #
            #   @param duration [Float] The duration of the trial in the specified units
            #
            #   @param units [Symbol, Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig::Units] The time unit for the trial duration (DAY or MONTH)
            #
            #   @param budget [Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig::Budget, nil] Budget configuration for the trial
            #
            #   @param trial_end_behavior [Symbol, Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig::TrialEndBehavior, nil] Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)

            # The time unit for the trial duration (DAY or MONTH)
            #
            # @see Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig#units
            module Units
              extend Stigg::Internal::Type::Enum

              DAY = :DAY
              MONTH = :MONTH

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig#budget
            class Budget < Stigg::Internal::Type::BaseModel
              # @!attribute has_soft_limit
              #   Whether the budget limit is a soft limit (allows overage) or hard limit
              #
              #   @return [Boolean]
              required :has_soft_limit, Stigg::Internal::Type::Boolean, api_name: :hasSoftLimit

              # @!attribute limit
              #   The budget limit amount
              #
              #   @return [Float]
              required :limit, Float

              # @!method initialize(has_soft_limit:, limit:)
              #   Budget configuration for the trial
              #
              #   @param has_soft_limit [Boolean] Whether the budget limit is a soft limit (allows overage) or hard limit
              #
              #   @param limit [Float] The budget limit amount
            end

            # Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
            #
            # @see Stigg::Models::V1::Events::PlanUpdateParams::DefaultTrialConfig#trial_end_behavior
            module TrialEndBehavior
              extend Stigg::Internal::Type::Enum

              CONVERT_TO_PAID = :CONVERT_TO_PAID
              CANCEL_SUBSCRIPTION = :CANCEL_SUBSCRIPTION

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
