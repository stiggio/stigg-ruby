# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Plans#create
      class PlanCreateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #   The unique identifier for the entity
        #
        #   @return [String]
        required :id, String

        # @!attribute display_name
        #   The display name of the package
        #
        #   @return [String]
        required :display_name, String, api_name: :displayName

        # @!attribute product_id
        #   The product ID to associate the plan with
        #
        #   @return [String]
        required :product_id, String, api_name: :productId

        # @!attribute billing_id
        #   The unique identifier for the entity in the billing provider
        #
        #   @return [String, nil]
        optional :billing_id, String, api_name: :billingId, nil?: true

        # @!attribute default_trial_config
        #   Default trial configuration for the plan
        #
        #   @return [Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig, nil]
        optional :default_trial_config,
                 -> { Stigg::V1::PlanCreateParams::DefaultTrialConfig },
                 api_name: :defaultTrialConfig,
                 nil?: true

        # @!attribute description
        #   The description of the package
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

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

        # @!attribute pricing_type
        #   The pricing type of the package
        #
        #   @return [Symbol, Stigg::Models::V1::PlanCreateParams::PricingType, nil]
        optional :pricing_type,
                 enum: -> { Stigg::V1::PlanCreateParams::PricingType },
                 api_name: :pricingType,
                 nil?: true

        # @!attribute status
        #   The status of the package
        #
        #   @return [Symbol, Stigg::Models::V1::PlanCreateParams::Status, nil]
        optional :status, enum: -> { Stigg::V1::PlanCreateParams::Status }

        # @!method initialize(id:, display_name:, product_id:, billing_id: nil, default_trial_config: nil, description: nil, metadata: nil, parent_plan_id: nil, pricing_type: nil, status: nil, request_options: {})
        #   @param id [String] The unique identifier for the entity
        #
        #   @param display_name [String] The display name of the package
        #
        #   @param product_id [String] The product ID to associate the plan with
        #
        #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
        #
        #   @param default_trial_config [Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig, nil] Default trial configuration for the plan
        #
        #   @param description [String, nil] The description of the package
        #
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
        #
        #   @param parent_plan_id [String, nil] The ID of the parent plan, if applicable
        #
        #   @param pricing_type [Symbol, Stigg::Models::V1::PlanCreateParams::PricingType, nil] The pricing type of the package
        #
        #   @param status [Symbol, Stigg::Models::V1::PlanCreateParams::Status] The status of the package
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
          #   @return [Symbol, Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig::Units]
          required :units, enum: -> { Stigg::V1::PlanCreateParams::DefaultTrialConfig::Units }

          # @!attribute budget
          #   Budget configuration for the trial
          #
          #   @return [Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig::Budget, nil]
          optional :budget, -> { Stigg::V1::PlanCreateParams::DefaultTrialConfig::Budget }, nil?: true

          # @!attribute trial_end_behavior
          #   Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
          #
          #   @return [Symbol, Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior, nil]
          optional :trial_end_behavior,
                   enum: -> { Stigg::V1::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior },
                   api_name: :trialEndBehavior,
                   nil?: true

          # @!method initialize(duration:, units:, budget: nil, trial_end_behavior: nil)
          #   Default trial configuration for the plan
          #
          #   @param duration [Float] The duration of the trial in the specified units
          #
          #   @param units [Symbol, Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig::Units] The time unit for the trial duration (DAY or MONTH)
          #
          #   @param budget [Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig::Budget, nil] Budget configuration for the trial
          #
          #   @param trial_end_behavior [Symbol, Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig::TrialEndBehavior, nil] Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)

          # The time unit for the trial duration (DAY or MONTH)
          #
          # @see Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig#units
          module Units
            extend Stigg::Internal::Type::Enum

            DAY = :DAY
            MONTH = :MONTH

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig#budget
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
          # @see Stigg::Models::V1::PlanCreateParams::DefaultTrialConfig#trial_end_behavior
          module TrialEndBehavior
            extend Stigg::Internal::Type::Enum

            CONVERT_TO_PAID = :CONVERT_TO_PAID
            CANCEL_SUBSCRIPTION = :CANCEL_SUBSCRIPTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The pricing type of the package
        module PricingType
          extend Stigg::Internal::Type::Enum

          FREE = :FREE
          PAID = :PAID
          CUSTOM = :CUSTOM

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the package
        module Status
          extend Stigg::Internal::Type::Enum

          DRAFT = :DRAFT
          PUBLISHED = :PUBLISHED
          ARCHIVED = :ARCHIVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
