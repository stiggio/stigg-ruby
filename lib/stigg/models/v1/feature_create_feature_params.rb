# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Features#create_feature
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
        #   The type of the feature: BOOLEAN (on/off access), NUMBER (a numeric limit or
        #   quantity), or ENUM (one of a fixed set of values).
        #
        #   @return [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::FeatureType]
        required :feature_type,
                 enum: -> { Stigg::V1::FeatureCreateFeatureParams::FeatureType },
                 api_name: :featureType

        # @!attribute description
        #   The description for the feature
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute enum_configuration
        #   The configuration data for the feature
        #
        #   @return [Array<Stigg::Models::V1::FeatureCreateFeatureParams::EnumConfiguration>, nil]
        optional :enum_configuration,
                 -> {
                   Stigg::Internal::Type::ArrayOf[Stigg::V1::FeatureCreateFeatureParams::EnumConfiguration]
                 },
                 api_name: :enumConfiguration

        # @!attribute feature_status
        #   The status of the feature
        #
        #   @return [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::FeatureStatus, nil]
        optional :feature_status,
                 enum: -> { Stigg::V1::FeatureCreateFeatureParams::FeatureStatus },
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

        # @!attribute meter
        #   Event meter that turns reported events into usage for a metered feature
        #
        #   @return [Stigg::Models::V1::FeatureCreateFeatureParams::Meter, nil]
        optional :meter, -> { Stigg::V1::FeatureCreateFeatureParams::Meter }

        # @!attribute meter_type
        #   How usage accumulates for this feature. `Incremental` and `Fluctuating` features
        #   track usage from reported events; `None` means the feature's value isn't
        #   usage-tracked — it's just a numeric or enum value carried by the plan (for
        #   example, a seat count or a tier setting) rather than something customers
        #   consume.
        #
        #   @return [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::MeterType, nil]
        optional :meter_type,
                 enum: -> {
                   Stigg::V1::FeatureCreateFeatureParams::MeterType
                 },
                 api_name: :meterType

        # @!attribute unit_transformation
        #   Unit transformation to be applied to the reported usage
        #
        #   @return [Stigg::Models::V1::FeatureCreateFeatureParams::UnitTransformation, nil]
        optional :unit_transformation,
                 -> { Stigg::V1::FeatureCreateFeatureParams::UnitTransformation },
                 api_name: :unitTransformation,
                 nil?: true

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(id:, display_name:, feature_type:, description: nil, enum_configuration: nil, feature_status: nil, feature_units: nil, feature_units_plural: nil, metadata: nil, meter: nil, meter_type: nil, unit_transformation: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::FeatureCreateFeatureParams} for more details.
        #
        #   @param id [String] The unique identifier for the feature
        #
        #   @param display_name [String] The display name for the feature
        #
        #   @param feature_type [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::FeatureType] The type of the feature: BOOLEAN (on/off access), NUMBER (a numeric limit or qua
        #
        #   @param description [String] The description for the feature
        #
        #   @param enum_configuration [Array<Stigg::Models::V1::FeatureCreateFeatureParams::EnumConfiguration>] The configuration data for the feature
        #
        #   @param feature_status [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::FeatureStatus] The status of the feature
        #
        #   @param feature_units [String] The units for the feature
        #
        #   @param feature_units_plural [String] The plural units for the feature
        #
        #   @param metadata [Hash{Symbol=>String}] The additional metadata for the feature
        #
        #   @param meter [Stigg::Models::V1::FeatureCreateFeatureParams::Meter] Event meter that turns reported events into usage for a metered feature
        #
        #   @param meter_type [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::MeterType] How usage accumulates for this feature. `Incremental` and `Fluctuating` features
        #
        #   @param unit_transformation [Stigg::Models::V1::FeatureCreateFeatureParams::UnitTransformation, nil] Unit transformation to be applied to the reported usage
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # The type of the feature: BOOLEAN (on/off access), NUMBER (a numeric limit or
        # quantity), or ENUM (one of a fixed set of values).
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

        class Meter < Stigg::Internal::Type::BaseModel
          # @!attribute aggregation
          #   How the matching events are aggregated into a usage value
          #
          #   @return [Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Aggregation]
          required :aggregation, -> { Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation }

          # @!attribute filters
          #   Event filters. Conditions within a filter are ANDed, and filters are ORed
          #
          #   @return [Array<Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Filter>]
          required :filters,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::FeatureCreateFeatureParams::Meter::Filter] }

          # @!method initialize(aggregation:, filters:)
          #   Event meter that turns reported events into usage for a metered feature
          #
          #   @param aggregation [Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Aggregation] How the matching events are aggregated into a usage value
          #
          #   @param filters [Array<Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Filter>] Event filters. Conditions within a filter are ANDed, and filters are ORed

          # @see Stigg::Models::V1::FeatureCreateFeatureParams::Meter#aggregation
          class Aggregation < Stigg::Internal::Type::BaseModel
            # @!attribute function
            #   Aggregation function applied to the matching events
            #
            #   @return [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function]
            required :function, enum: -> { Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function }

            # @!attribute field
            #   Aggregation field name
            #
            #   @return [String, nil]
            optional :field, String

            # @!method initialize(function:, field: nil)
            #   How the matching events are aggregated into a usage value
            #
            #   @param function [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function] Aggregation function applied to the matching events
            #
            #   @param field [String] Aggregation field name

            # Aggregation function applied to the matching events
            #
            # @see Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Aggregation#function
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
            #   @return [Array<Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Filter::Condition>]
            required :conditions,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition] }

            # @!method initialize(conditions:)
            #   @param conditions [Array<Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Filter::Condition>] Conditions the event must match

            class Condition < Stigg::Internal::Type::BaseModel
              # @!attribute field
              #   Condition field name
              #
              #   @return [String]
              required :field, String

              # @!attribute operation
              #   Comparison applied to the condition field
              #
              #   @return [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation]
              required :operation,
                       enum: -> { Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation }

              # @!attribute value
              #   Condition value
              #
              #   @return [String, nil]
              optional :value, String

              # @!attribute values
              #
              #   @return [Array<String>, nil]
              optional :values, Stigg::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operation:, value: nil, values: nil)
              #   @param field [String] Condition field name
              #
              #   @param operation [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation] Comparison applied to the condition field
              #
              #   @param value [String] Condition value
              #
              #   @param values [Array<String>]

              # Comparison applied to the condition field
              #
              # @see Stigg::Models::V1::FeatureCreateFeatureParams::Meter::Filter::Condition#operation
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

        # How usage accumulates for this feature. `Incremental` and `Fluctuating` features
        # track usage from reported events; `None` means the feature's value isn't
        # usage-tracked — it's just a numeric or enum value carried by the plan (for
        # example, a seat count or a tier setting) rather than something customers
        # consume.
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
          #   @return [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::UnitTransformation::Round, nil]
          optional :round, enum: -> { Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round }

          # @!method initialize(divide:, feature_units: nil, feature_units_plural: nil, round: nil)
          #   Unit transformation to be applied to the reported usage
          #
          #   @param divide [Integer] Divide usage by this number
          #
          #   @param feature_units [String] Singular feature units after the transformation
          #
          #   @param feature_units_plural [String] Plural feature units after the transformation
          #
          #   @param round [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::UnitTransformation::Round] After division, either round the result up or down

          # After division, either round the result up or down
          #
          # @see Stigg::Models::V1::FeatureCreateFeatureParams::UnitTransformation#round
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
