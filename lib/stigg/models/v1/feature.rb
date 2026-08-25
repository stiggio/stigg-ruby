# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Features#archive_feature
      class Feature < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Feature configuration object
        #
        #   @return [Stigg::Models::V1::Feature::Data]
        required :data, -> { Stigg::V1::Feature::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::Feature::Data] Feature configuration object

        # @see Stigg::Models::V1::Feature#data
        class Data < Stigg::Internal::Type::BaseModel
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
          #   @return [Array<Stigg::Models::V1::Feature::Data::EnumConfiguration>, nil]
          required :enum_configuration,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::Feature::Data::EnumConfiguration] },
                   api_name: :enumConfiguration,
                   nil?: true

          # @!attribute feature_status
          #   The status of the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Feature::Data::FeatureStatus]
          required :feature_status,
                   enum: -> {
                     Stigg::V1::Feature::Data::FeatureStatus
                   },
                   api_name: :featureStatus

          # @!attribute feature_type
          #   The type of the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Feature::Data::FeatureType]
          required :feature_type, enum: -> { Stigg::V1::Feature::Data::FeatureType }, api_name: :featureType

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

          # @!attribute meter
          #   Event meter that turns reported events into usage for a metered feature
          #
          #   @return [Stigg::Models::V1::Feature::Data::Meter, nil]
          required :meter, -> { Stigg::V1::Feature::Data::Meter }, nil?: true

          # @!attribute meter_type
          #   The meter type for the feature
          #
          #   @return [Symbol, Stigg::Models::V1::Feature::Data::MeterType]
          required :meter_type, enum: -> { Stigg::V1::Feature::Data::MeterType }, api_name: :meterType

          # @!attribute unit_transformation
          #   Unit transformation to be applied to the reported usage
          #
          #   @return [Stigg::Models::V1::Feature::Data::UnitTransformation, nil]
          required :unit_transformation,
                   -> { Stigg::V1::Feature::Data::UnitTransformation },
                   api_name: :unitTransformation,
                   nil?: true

          # @!attribute updated_at
          #   Timestamp of when the record was last updated
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!method initialize(id:, created_at:, description:, display_name:, enum_configuration:, feature_status:, feature_type:, feature_units:, feature_units_plural:, metadata:, meter:, meter_type:, unit_transformation:, updated_at:)
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
          #   @param enum_configuration [Array<Stigg::Models::V1::Feature::Data::EnumConfiguration>, nil] The configuration data for the feature
          #
          #   @param feature_status [Symbol, Stigg::Models::V1::Feature::Data::FeatureStatus] The status of the feature
          #
          #   @param feature_type [Symbol, Stigg::Models::V1::Feature::Data::FeatureType] The type of the feature
          #
          #   @param feature_units [String, nil] The units for the feature
          #
          #   @param feature_units_plural [String, nil] The plural units for the feature
          #
          #   @param metadata [Hash{Symbol=>String}] The additional metadata for the feature
          #
          #   @param meter [Stigg::Models::V1::Feature::Data::Meter, nil] Event meter that turns reported events into usage for a metered feature
          #
          #   @param meter_type [Symbol, Stigg::Models::V1::Feature::Data::MeterType] The meter type for the feature
          #
          #   @param unit_transformation [Stigg::Models::V1::Feature::Data::UnitTransformation, nil] Unit transformation to be applied to the reported usage
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
          # @see Stigg::Models::V1::Feature::Data#feature_status
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
          # @see Stigg::Models::V1::Feature::Data#feature_type
          module FeatureType
            extend Stigg::Internal::Type::Enum

            BOOLEAN = :BOOLEAN
            NUMBER = :NUMBER
            ENUM = :ENUM

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Stigg::Models::V1::Feature::Data#meter
          class Meter < Stigg::Internal::Type::BaseModel
            # @!attribute aggregation
            #   How the matching events are aggregated into a usage value
            #
            #   @return [Stigg::Models::V1::Feature::Data::Meter::Aggregation]
            required :aggregation, -> { Stigg::V1::Feature::Data::Meter::Aggregation }

            # @!attribute filters
            #   Event filters. Conditions within a filter are ANDed, and filters are ORed
            #
            #   @return [Array<Stigg::Models::V1::Feature::Data::Meter::Filter>]
            required :filters, -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::Feature::Data::Meter::Filter] }

            # @!method initialize(aggregation:, filters:)
            #   Event meter that turns reported events into usage for a metered feature
            #
            #   @param aggregation [Stigg::Models::V1::Feature::Data::Meter::Aggregation] How the matching events are aggregated into a usage value
            #
            #   @param filters [Array<Stigg::Models::V1::Feature::Data::Meter::Filter>] Event filters. Conditions within a filter are ANDed, and filters are ORed

            # @see Stigg::Models::V1::Feature::Data::Meter#aggregation
            class Aggregation < Stigg::Internal::Type::BaseModel
              # @!attribute function
              #   Aggregation function applied to the matching events
              #
              #   @return [Symbol, Stigg::Models::V1::Feature::Data::Meter::Aggregation::Function]
              required :function, enum: -> { Stigg::V1::Feature::Data::Meter::Aggregation::Function }

              # @!attribute field
              #   Aggregation field name
              #
              #   @return [String, nil]
              optional :field, String, nil?: true

              # @!method initialize(function:, field: nil)
              #   How the matching events are aggregated into a usage value
              #
              #   @param function [Symbol, Stigg::Models::V1::Feature::Data::Meter::Aggregation::Function] Aggregation function applied to the matching events
              #
              #   @param field [String, nil] Aggregation field name

              # Aggregation function applied to the matching events
              #
              # @see Stigg::Models::V1::Feature::Data::Meter::Aggregation#function
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
              #   Conditions the event must match
              #
              #   @return [Array<Stigg::Models::V1::Feature::Data::Meter::Filter::Condition>]
              required :conditions,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::Feature::Data::Meter::Filter::Condition] }

              # @!method initialize(conditions:)
              #   A set of conditions an event must all match
              #
              #   @param conditions [Array<Stigg::Models::V1::Feature::Data::Meter::Filter::Condition>] Conditions the event must match

              class Condition < Stigg::Internal::Type::BaseModel
                # @!attribute field
                #   Condition field name
                #
                #   @return [String]
                required :field, String

                # @!attribute operation
                #   Comparison applied to the condition field
                #
                #   @return [Symbol, Stigg::Models::V1::Feature::Data::Meter::Filter::Condition::Operation]
                required :operation, enum: -> { Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation }

                # @!attribute value
                #   Condition value
                #
                #   @return [String, nil]
                optional :value, String, nil?: true

                # @!attribute values
                #
                #   @return [Array<String>, nil]
                optional :values, Stigg::Internal::Type::ArrayOf[String], nil?: true

                # @!method initialize(field:, operation:, value: nil, values: nil)
                #   Meter filter condition
                #
                #   @param field [String] Condition field name
                #
                #   @param operation [Symbol, Stigg::Models::V1::Feature::Data::Meter::Filter::Condition::Operation] Comparison applied to the condition field
                #
                #   @param value [String, nil] Condition value
                #
                #   @param values [Array<String>, nil]

                # Comparison applied to the condition field
                #
                # @see Stigg::Models::V1::Feature::Data::Meter::Filter::Condition#operation
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

          # The meter type for the feature
          #
          # @see Stigg::Models::V1::Feature::Data#meter_type
          module MeterType
            extend Stigg::Internal::Type::Enum

            NONE = :None
            FLUCTUATING = :FLUCTUATING
            INCREMENTAL = :INCREMENTAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Stigg::Models::V1::Feature::Data#unit_transformation
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
            #   @return [Symbol, Stigg::Models::V1::Feature::Data::UnitTransformation::Round]
            required :round, enum: -> { Stigg::V1::Feature::Data::UnitTransformation::Round }

            # @!method initialize(divide:, feature_units:, feature_units_plural:, round:)
            #   Unit transformation to be applied to the reported usage
            #
            #   @param divide [Float] Divide usage by this number
            #
            #   @param feature_units [String, nil] Singular feature units after the transformation
            #
            #   @param feature_units_plural [String, nil] Plural feature units after the transformation
            #
            #   @param round [Symbol, Stigg::Models::V1::Feature::Data::UnitTransformation::Round] After division, either round the result up or down

            # After division, either round the result up or down
            #
            # @see Stigg::Models::V1::Feature::Data::UnitTransformation#round
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
