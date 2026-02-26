# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Plans#create
        class PlanCreateResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Plan configuration object
          #
          #   @return [Stigg::Models::V1::Events::PlanCreateResponse::Data]
          required :data, -> { Stigg::Models::V1::Events::PlanCreateResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::PlanCreateResponse::Data] Plan configuration object

          # @see Stigg::Models::V1::Events::PlanCreateResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the entity
            #
            #   @return [String]
            required :id, String

            # @!attribute billing_id
            #   The unique identifier for the entity in the billing provider
            #
            #   @return [String, nil]
            required :billing_id, String, api_name: :billingId, nil?: true

            # @!attribute compatible_addon_ids
            #
            #   @return [Array<String>, nil]
            required :compatible_addon_ids,
                     Stigg::Internal::Type::ArrayOf[String],
                     api_name: :compatibleAddonIds,
                     nil?: true

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute default_trial_config
            #   Default trial configuration for the plan
            #
            #   @return [Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig, nil]
            required :default_trial_config,
                     -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig },
                     api_name: :defaultTrialConfig,
                     nil?: true

            # @!attribute description
            #   The description of the package
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute display_name
            #   The display name of the package
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute entitlements
            #   List of entitlements of the package
            #
            #   @return [Array<Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement>]
            required :entitlements,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement] }

            # @!attribute is_latest
            #   Indicates if the package is the latest version
            #
            #   @return [Boolean, nil]
            required :is_latest, Stigg::Internal::Type::Boolean, api_name: :isLatest, nil?: true

            # @!attribute metadata
            #   Metadata associated with the entity
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute parent_plan_id
            #   The ID of the parent plan, if applicable
            #
            #   @return [String, nil]
            required :parent_plan_id, String, api_name: :parentPlanId, nil?: true

            # @!attribute pricing_type
            #   The pricing type of the package
            #
            #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType, nil]
            required :pricing_type,
                     enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType },
                     api_name: :pricingType,
                     nil?: true

            # @!attribute product_id
            #   The product id of the package
            #
            #   @return [String]
            required :product_id, String, api_name: :productId

            # @!attribute status
            #   The status of the package
            #
            #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Status]
            required :status, enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::Status }

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute version_number
            #   The version number of the package
            #
            #   @return [Integer]
            required :version_number, Integer, api_name: :versionNumber

            # @!method initialize(id:, billing_id:, compatible_addon_ids:, created_at:, default_trial_config:, description:, display_name:, entitlements:, is_latest:, metadata:, parent_plan_id:, pricing_type:, product_id:, status:, updated_at:, version_number:)
            #   Plan configuration object
            #
            #   @param id [String] The unique identifier for the entity
            #
            #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
            #
            #   @param compatible_addon_ids [Array<String>, nil]
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param default_trial_config [Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig, nil] Default trial configuration for the plan
            #
            #   @param description [String, nil] The description of the package
            #
            #   @param display_name [String] The display name of the package
            #
            #   @param entitlements [Array<Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement>] List of entitlements of the package
            #
            #   @param is_latest [Boolean, nil] Indicates if the package is the latest version
            #
            #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
            #
            #   @param parent_plan_id [String, nil] The ID of the parent plan, if applicable
            #
            #   @param pricing_type [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::PricingType, nil] The pricing type of the package
            #
            #   @param product_id [String] The product id of the package
            #
            #   @param status [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Status] The status of the package
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
            #
            #   @param version_number [Integer] The version number of the package

            # @see Stigg::Models::V1::Events::PlanCreateResponse::Data#default_trial_config
            class DefaultTrialConfig < Stigg::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the trial in the specified units
              #
              #   @return [Float]
              required :duration, Float

              # @!attribute units
              #   The time unit for the trial duration (DAY or MONTH)
              #
              #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units]
              required :units,
                       enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units }

              # @!attribute budget
              #   Budget configuration for the trial
              #
              #   @return [Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget, nil]
              optional :budget,
                       -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget },
                       nil?: true

              # @!attribute trial_end_behavior
              #   Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)
              #
              #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior, nil]
              optional :trial_end_behavior,
                       enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior },
                       api_name: :trialEndBehavior,
                       nil?: true

              # @!method initialize(duration:, units:, budget: nil, trial_end_behavior: nil)
              #   Default trial configuration for the plan
              #
              #   @param duration [Float] The duration of the trial in the specified units
              #
              #   @param units [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Units] The time unit for the trial duration (DAY or MONTH)
              #
              #   @param budget [Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::Budget, nil] Budget configuration for the trial
              #
              #   @param trial_end_behavior [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig::TrialEndBehavior, nil] Behavior when the trial ends (CONVERT_TO_PAID or CANCEL_SUBSCRIPTION)

              # The time unit for the trial duration (DAY or MONTH)
              #
              # @see Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig#units
              module Units
                extend Stigg::Internal::Type::Enum

                DAY = :DAY
                MONTH = :MONTH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig#budget
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
              # @see Stigg::Models::V1::Events::PlanCreateResponse::Data::DefaultTrialConfig#trial_end_behavior
              module TrialEndBehavior
                extend Stigg::Internal::Type::Enum

                CONVERT_TO_PAID = :CONVERT_TO_PAID
                CANCEL_SUBSCRIPTION = :CANCEL_SUBSCRIPTION

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Entitlement < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The unique identifier for the entity
              #
              #   @return [String]
              required :id, String

              # @!attribute type
              #
              #   @return [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type]
              required :type, enum: -> { Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type }

              # @!method initialize(id:, type:)
              #   Entitlement reference with type and identifier
              #
              #   @param id [String] The unique identifier for the entity
              #
              #   @param type [Symbol, Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement::Type]

              # @see Stigg::Models::V1::Events::PlanCreateResponse::Data::Entitlement#type
              module Type
                extend Stigg::Internal::Type::Enum

                FEATURE = :FEATURE
                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The pricing type of the package
            #
            # @see Stigg::Models::V1::Events::PlanCreateResponse::Data#pricing_type
            module PricingType
              extend Stigg::Internal::Type::Enum

              FREE = :FREE
              PAID = :PAID
              CUSTOM = :CUSTOM

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The status of the package
            #
            # @see Stigg::Models::V1::Events::PlanCreateResponse::Data#status
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
  end
end
