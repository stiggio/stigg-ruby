# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Features#list_features
        class FeatureListFeaturesResponse < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the feature
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   Timestamp of when the record was created
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute description
          #   The description for the feature
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!attribute display_name
          #   The display name for the feature
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute enum_configuration
          #   The configuration data for the feature
          #
          #   @return [Array<Stigg::Models::V1::Events::FeatureListFeaturesResponse::EnumConfiguration>, nil]
          required :enum_configuration,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::FeatureListFeaturesResponse::EnumConfiguration] },
                   api_name: :enumConfiguration,
                   nil?: true

          # @!attribute feature_status
          #   The status of the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureStatus]
          required :feature_status,
                   enum: -> { Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureStatus },
                   api_name: :featureStatus

          # @!attribute feature_type
          #   The type of the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureType]
          required :feature_type,
                   enum: -> { Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureType },
                   api_name: :featureType

          # @!attribute feature_units
          #   The units for the feature
          #
          #   @return [String, nil]
          required :feature_units, String, api_name: :featureUnits, nil?: true

          # @!attribute feature_units_plural
          #   The plural units for the feature
          #
          #   @return [String, nil]
          required :feature_units_plural, String, api_name: :featureUnitsPlural, nil?: true

          # @!attribute metadata
          #   The additional metadata for the feature
          #
          #   @return [Hash{Symbol=>String}]
          required :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute meter_type
          #   The meter type for the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::MeterType]
          required :meter_type,
                   enum: -> { Stigg::Models::V1::Events::FeatureListFeaturesResponse::MeterType },
                   api_name: :meterType

          # @!attribute unit_transformation
          #   Unit transformation to be applied to the reported usage
          #
          #   @return [Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation, nil]
          required :unit_transformation,
                   -> { Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation },
                   api_name: :unitTransformation,
                   nil?: true

          # @!attribute updated_at
          #   Timestamp of when the record was last updated
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!method initialize(id:, created_at:, description:, display_name:, enum_configuration:, feature_status:, feature_type:, feature_units:, feature_units_plural:, metadata:, meter_type:, unit_transformation:, updated_at:)
          #   Feature configuration object
          #
          #   @param id [String] The unique identifier for the feature
          #
          #   @param created_at [Time] Timestamp of when the record was created
          #
          #   @param description [String, nil] The description for the feature
          #
          #   @param display_name [String] The display name for the feature
          #
          #   @param enum_configuration [Array<Stigg::Models::V1::Events::FeatureListFeaturesResponse::EnumConfiguration>, nil] The configuration data for the feature
          #
          #   @param feature_status [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureStatus] The status of the feature
          #
          #   @param feature_type [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::FeatureType] The type of the feature
          #
          #   @param feature_units [String, nil] The units for the feature
          #
          #   @param feature_units_plural [String, nil] The plural units for the feature
          #
          #   @param metadata [Hash{Symbol=>String}] The additional metadata for the feature
          #
          #   @param meter_type [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::MeterType] The meter type for the feature
          #
          #   @param unit_transformation [Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation, nil] Unit transformation to be applied to the reported usage
          #
          #   @param updated_at [Time] Timestamp of when the record was last updated

          class EnumConfiguration < Stigg::Internal::Type::BaseModel
            # @!attribute display_name
            #   The display name for the enum configuration entity
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute value
            #   The unique value identifier for the enum configuration entity
            #
            #   @return [String]
            required :value, String

            # @!method initialize(display_name:, value:)
            #   @param display_name [String] The display name for the enum configuration entity
            #
            #   @param value [String] The unique value identifier for the enum configuration entity
          end

          # The status of the feature
          #
          # @see Stigg::Models::V1::Events::FeatureListFeaturesResponse#feature_status
          module FeatureStatus
            extend Stigg::Internal::Type::Enum

            NEW = :NEW
            SUSPENDED = :SUSPENDED
            ACTIVE = :ACTIVE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The type of the feature
          #
          # @see Stigg::Models::V1::Events::FeatureListFeaturesResponse#feature_type
          module FeatureType
            extend Stigg::Internal::Type::Enum

            BOOLEAN = :BOOLEAN
            NUMBER = :NUMBER
            ENUM = :ENUM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The meter type for the feature
          #
          # @see Stigg::Models::V1::Events::FeatureListFeaturesResponse#meter_type
          module MeterType
            extend Stigg::Internal::Type::Enum

            NONE = :None
            FLUCTUATING = :FLUCTUATING
            INCREMENTAL = :INCREMENTAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Stigg::Models::V1::Events::FeatureListFeaturesResponse#unit_transformation
          class UnitTransformation < Stigg::Internal::Type::BaseModel
            # @!attribute divide
            #   Divide usage by this number
            #
            #   @return [Float]
            required :divide, Float

            # @!attribute feature_units
            #   Singular feature units after the transformation
            #
            #   @return [String, nil]
            required :feature_units, String, api_name: :featureUnits, nil?: true

            # @!attribute feature_units_plural
            #   Plural feature units after the transformation
            #
            #   @return [String, nil]
            required :feature_units_plural, String, api_name: :featureUnitsPlural, nil?: true

            # @!attribute round
            #   After division, either round the result up or down
            #
            #   @return [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation::Round]
            required :round,
                     enum: -> { Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation::Round }

            # @!method initialize(divide:, feature_units:, feature_units_plural:, round:)
            #   Unit transformation to be applied to the reported usage
            #
            #   @param divide [Float] Divide usage by this number
            #
            #   @param feature_units [String, nil] Singular feature units after the transformation
            #
            #   @param feature_units_plural [String, nil] Plural feature units after the transformation
            #
            #   @param round [Symbol, Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation::Round] After division, either round the result up or down

            # After division, either round the result up or down
            #
            # @see Stigg::Models::V1::Events::FeatureListFeaturesResponse::UnitTransformation#round
            module Round
              extend Stigg::Internal::Type::Enum

              UP = :UP
              DOWN = :DOWN

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
