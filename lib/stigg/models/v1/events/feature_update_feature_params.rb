# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Features#update_feature
        class FeatureUpdateFeatureParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute description
          #   The description for the feature
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute display_name
          #   The display name for the feature
          #
          #   @return [String, nil]
          optional :display_name, String, api_name: :displayName

          # @!attribute enum_configuration
          #   The configuration data for the feature
          #
          #   @return [Array<Stigg::Models::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration>, nil]
          optional :enum_configuration,
                   -> {
                     Stigg::Internal::Type::ArrayOf[Stigg::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration]
                   },
                   api_name: :enumConfiguration

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

          # @!attribute meter
          #
          #   @return [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter, nil]
          optional :meter, -> { Stigg::V1::Events::FeatureUpdateFeatureParams::Meter }

          # @!attribute unit_transformation
          #   Unit transformation to be applied to the reported usage
          #
          #   @return [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::UnitTransformation, nil]
          optional :unit_transformation,
                   -> { Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation },
                   api_name: :unitTransformation,
                   nil?: true

          # @!method initialize(description: nil, display_name: nil, enum_configuration: nil, feature_units: nil, feature_units_plural: nil, metadata: nil, meter: nil, unit_transformation: nil, request_options: {})
          #   @param description [String] The description for the feature
          #
          #   @param display_name [String] The display name for the feature
          #
          #   @param enum_configuration [Array<Stigg::Models::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration>] The configuration data for the feature
          #
          #   @param feature_units [String] The units for the feature
          #
          #   @param feature_units_plural [String] The plural units for the feature
          #
          #   @param metadata [Hash{Symbol=>String}] The additional metadata for the feature
          #
          #   @param meter [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter]
          #
          #   @param unit_transformation [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::UnitTransformation, nil] Unit transformation to be applied to the reported usage
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

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

          class Meter < Stigg::Internal::Type::BaseModel
            # @!attribute aggregation
            #
            #   @return [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation]
            required :aggregation, -> { Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation }

            # @!attribute filters
            #
            #   @return [Array<Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Filter>]
            required :filters,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter] }

            # @!method initialize(aggregation:, filters:)
            #   @param aggregation [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation]
            #   @param filters [Array<Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Filter>]

            # @see Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter#aggregation
            class Aggregation < Stigg::Internal::Type::BaseModel
              # @!attribute function
              #
              #   @return [Symbol, Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function]
              required :function,
                       enum: -> { Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function }

              # @!attribute field
              #
              #   @return [String, nil]
              optional :field, String

              # @!method initialize(function:, field: nil)
              #   @param function [Symbol, Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function]
              #   @param field [String]

              # @see Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation#function
              module Function
                extend Stigg::Internal::Type::Enum

                SUM = :SUM
                MAX = :MAX
                MIN = :MIN
                AVG = :AVG
                COUNT = :COUNT
                UNIQUE = :UNIQUE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Filter < Stigg::Internal::Type::BaseModel
              # @!attribute conditions
              #
              #   @return [Array<Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition>]
              required :conditions,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition] }

              # @!method initialize(conditions:)
              #   @param conditions [Array<Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition>]

              class Condition < Stigg::Internal::Type::BaseModel
                # @!attribute field
                #
                #   @return [String]
                required :field, String

                # @!attribute operation
                #
                #   @return [Symbol, Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation]
                required :operation,
                         enum: -> { Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation }

                # @!attribute value
                #
                #   @return [String, nil]
                optional :value, String

                # @!attribute values
                #
                #   @return [Array<String>, nil]
                optional :values, Stigg::Internal::Type::ArrayOf[String]

                # @!method initialize(field:, operation:, value: nil, values: nil)
                #   @param field [String]
                #   @param operation [Symbol, Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation]
                #   @param value [String]
                #   @param values [Array<String>]

                # @see Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition#operation
                module Operation
                  extend Stigg::Internal::Type::Enum

                  EQUALS = :EQUALS
                  NOT_EQUALS = :NOT_EQUALS
                  GREATER_THAN = :GREATER_THAN
                  GREATER_THAN_OR_EQUAL = :GREATER_THAN_OR_EQUAL
                  LESS_THAN = :LESS_THAN
                  LESS_THAN_OR_EQUAL = :LESS_THAN_OR_EQUAL
                  IS_NULL = :IS_NULL
                  IS_NOT_NULL = :IS_NOT_NULL
                  CONTAINS = :CONTAINS
                  STARTS_WITH = :STARTS_WITH
                  ENDS_WITH = :ENDS_WITH
                  IN = :IN

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
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
            #   @return [Symbol, Stigg::Models::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round, nil]
            optional :round, enum: -> { Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round }

            # @!method initialize(divide:, feature_units: nil, feature_units_plural: nil, round: nil)
            #   Unit transformation to be applied to the reported usage
            #
            #   @param divide [Integer] Divide usage by this number
            #
            #   @param feature_units [String] Singular feature units after the transformation
            #
            #   @param feature_units_plural [String] Plural feature units after the transformation
            #
            #   @param round [Symbol, Stigg::Models::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round] After division, either round the result up or down

            # After division, either round the result up or down
            #
            # @see Stigg::Models::V1::Events::FeatureUpdateFeatureParams::UnitTransformation#round
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
