# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Features#create_feature
        class FeatureCreateFeatureParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #   The unique identifier for the feature
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #   The display name for the feature
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute feature_type
          #   The type of the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::FeatureType]
          required :feature_type,
                   enum: -> { Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType },
                   api_name: :featureType

          # @!attribute description
          #   The description for the feature
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute enum_configuration
          #   The configuration data for the feature
          #
          #   @return [Array<Stigg::Models::V1::Events::FeatureCreateFeatureParams::EnumConfiguration>, nil]
          optional :enum_configuration,
                   -> {
                     Stigg::Internal::Type::ArrayOf[Stigg::V1::Events::FeatureCreateFeatureParams::EnumConfiguration]
                   },
                   api_name: :enumConfiguration

          # @!attribute feature_status
          #   The status of the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::FeatureStatus, nil]
          optional :feature_status,
                   enum: -> { Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus },
                   api_name: :featureStatus

          # @!attribute feature_units
          #   The units for the feature
          #
          #   @return [String, nil]
          optional :feature_units, String, api_name: :featureUnits

          # @!attribute feature_units_plural
          #   The plural units for the feature
          #
          #   @return [String, nil]
          optional :feature_units_plural, String, api_name: :featureUnitsPlural

          # @!attribute metadata
          #   The additional metadata for the feature
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :metadata, Stigg::Internal::Type::HashOf[String]

          # @!attribute meter_type
          #   The meter type for the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::MeterType, nil]
          optional :meter_type,
                   enum: -> { Stigg::V1::Events::FeatureCreateFeatureParams::MeterType },
                   api_name: :meterType

          # @!attribute unit_transformation
          #   Unit transformation to be applied to the reported usage
          #
          #   @return [Stigg::Models::V1::Events::FeatureCreateFeatureParams::UnitTransformation, nil]
          optional :unit_transformation,
                   -> { Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation },
                   api_name: :unitTransformation,
                   nil?: true

          # @!method initialize(id:, display_name:, feature_type:, description: nil, enum_configuration: nil, feature_status: nil, feature_units: nil, feature_units_plural: nil, metadata: nil, meter_type: nil, unit_transformation: nil, request_options: {})
          #   @param id [String] The unique identifier for the feature
          #
          #   @param display_name [String] The display name for the feature
          #
          #   @param feature_type [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::FeatureType] The type of the feature
          #
          #   @param description [String] The description for the feature
          #
          #   @param enum_configuration [Array<Stigg::Models::V1::Events::FeatureCreateFeatureParams::EnumConfiguration>] The configuration data for the feature
          #
          #   @param feature_status [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::FeatureStatus] The status of the feature
          #
          #   @param feature_units [String] The units for the feature
          #
          #   @param feature_units_plural [String] The plural units for the feature
          #
          #   @param metadata [Hash{Symbol=>String}] The additional metadata for the feature
          #
          #   @param meter_type [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::MeterType] The meter type for the feature
          #
          #   @param unit_transformation [Stigg::Models::V1::Events::FeatureCreateFeatureParams::UnitTransformation, nil] Unit transformation to be applied to the reported usage
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # The type of the feature
          module FeatureType
            extend Stigg::Internal::Type::Enum

            BOOLEAN = :BOOLEAN
            NUMBER = :NUMBER
            ENUM = :ENUM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

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
          module FeatureStatus
            extend Stigg::Internal::Type::Enum

            NEW = :NEW
            SUSPENDED = :SUSPENDED
            ACTIVE = :ACTIVE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The meter type for the feature
          module MeterType
            extend Stigg::Internal::Type::Enum

            NONE = :None
            FLUCTUATING = :FLUCTUATING
            INCREMENTAL = :INCREMENTAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class UnitTransformation < Stigg::Internal::Type::BaseModel
            # @!attribute divide
            #   Divide usage by this number
            #
            #   @return [Integer]
            required :divide, Integer

            # @!attribute feature_units
            #   Singular feature units after the transformation
            #
            #   @return [String, nil]
            optional :feature_units, String, api_name: :featureUnits

            # @!attribute feature_units_plural
            #   Plural feature units after the transformation
            #
            #   @return [String, nil]
            optional :feature_units_plural, String, api_name: :featureUnitsPlural

            # @!attribute round
            #   After division, either round the result up or down
            #
            #   @return [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round, nil]
            optional :round, enum: -> { Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round }

            # @!method initialize(divide:, feature_units: nil, feature_units_plural: nil, round: nil)
            #   Unit transformation to be applied to the reported usage
            #
            #   @param divide [Integer] Divide usage by this number
            #
            #   @param feature_units [String] Singular feature units after the transformation
            #
            #   @param feature_units_plural [String] Plural feature units after the transformation
            #
            #   @param round [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round] After division, either round the result up or down

            # After division, either round the result up or down
            #
            # @see Stigg::Models::V1::Events::FeatureCreateFeatureParams::UnitTransformation#round
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
