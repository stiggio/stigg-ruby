# typed: strong

module Stigg
  module Models
    module V1
      class FeatureCreateFeatureParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::FeatureCreateFeatureParams,
              Stigg::Internal::AnyHash
            )
          end

        # The unique identifier for the feature
        sig { returns(String) }
        attr_accessor :id

        # The display name for the feature
        sig { returns(String) }
        attr_accessor :display_name

        # The type of the feature
        sig do
          returns(Stigg::V1::FeatureCreateFeatureParams::FeatureType::OrSymbol)
        end
        attr_accessor :feature_type

        # The description for the feature
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The configuration data for the feature
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::FeatureCreateFeatureParams::EnumConfiguration]
            )
          )
        end
        attr_reader :enum_configuration

        sig do
          params(
            enum_configuration:
              T::Array[
                Stigg::V1::FeatureCreateFeatureParams::EnumConfiguration::OrHash
              ]
          ).void
        end
        attr_writer :enum_configuration

        # The status of the feature
        sig do
          returns(
            T.nilable(
              Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::OrSymbol
            )
          )
        end
        attr_reader :feature_status

        sig do
          params(
            feature_status:
              Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::OrSymbol
          ).void
        end
        attr_writer :feature_status

        # The units for the feature
        sig { returns(T.nilable(String)) }
        attr_reader :feature_units

        sig { params(feature_units: String).void }
        attr_writer :feature_units

        # The plural units for the feature
        sig { returns(T.nilable(String)) }
        attr_reader :feature_units_plural

        sig { params(feature_units_plural: String).void }
        attr_writer :feature_units_plural

        # The additional metadata for the feature
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # Event meter that turns reported events into usage for a metered feature
        sig { returns(T.nilable(Stigg::V1::FeatureCreateFeatureParams::Meter)) }
        attr_reader :meter

        sig do
          params(
            meter: Stigg::V1::FeatureCreateFeatureParams::Meter::OrHash
          ).void
        end
        attr_writer :meter

        # The meter type for the feature
        sig do
          returns(
            T.nilable(
              Stigg::V1::FeatureCreateFeatureParams::MeterType::OrSymbol
            )
          )
        end
        attr_reader :meter_type

        sig do
          params(
            meter_type:
              Stigg::V1::FeatureCreateFeatureParams::MeterType::OrSymbol
          ).void
        end
        attr_writer :meter_type

        # Unit transformation to be applied to the reported usage
        sig do
          returns(
            T.nilable(Stigg::V1::FeatureCreateFeatureParams::UnitTransformation)
          )
        end
        attr_reader :unit_transformation

        sig do
          params(
            unit_transformation:
              T.nilable(
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::OrHash
              )
          ).void
        end
        attr_writer :unit_transformation

        sig { returns(T.nilable(String)) }
        attr_reader :x_account_id

        sig { params(x_account_id: String).void }
        attr_writer :x_account_id

        sig { returns(T.nilable(String)) }
        attr_reader :x_environment_id

        sig { params(x_environment_id: String).void }
        attr_writer :x_environment_id

        sig do
          params(
            id: String,
            display_name: String,
            feature_type:
              Stigg::V1::FeatureCreateFeatureParams::FeatureType::OrSymbol,
            description: String,
            enum_configuration:
              T::Array[
                Stigg::V1::FeatureCreateFeatureParams::EnumConfiguration::OrHash
              ],
            feature_status:
              Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::OrSymbol,
            feature_units: String,
            feature_units_plural: String,
            metadata: T::Hash[Symbol, String],
            meter: Stigg::V1::FeatureCreateFeatureParams::Meter::OrHash,
            meter_type:
              Stigg::V1::FeatureCreateFeatureParams::MeterType::OrSymbol,
            unit_transformation:
              T.nilable(
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::OrHash
              ),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the feature
          id:,
          # The display name for the feature
          display_name:,
          # The type of the feature
          feature_type:,
          # The description for the feature
          description: nil,
          # The configuration data for the feature
          enum_configuration: nil,
          # The status of the feature
          feature_status: nil,
          # The units for the feature
          feature_units: nil,
          # The plural units for the feature
          feature_units_plural: nil,
          # The additional metadata for the feature
          metadata: nil,
          # Event meter that turns reported events into usage for a metered feature
          meter: nil,
          # The meter type for the feature
          meter_type: nil,
          # Unit transformation to be applied to the reported usage
          unit_transformation: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              display_name: String,
              feature_type:
                Stigg::V1::FeatureCreateFeatureParams::FeatureType::OrSymbol,
              description: String,
              enum_configuration:
                T::Array[
                  Stigg::V1::FeatureCreateFeatureParams::EnumConfiguration
                ],
              feature_status:
                Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::OrSymbol,
              feature_units: String,
              feature_units_plural: String,
              metadata: T::Hash[Symbol, String],
              meter: Stigg::V1::FeatureCreateFeatureParams::Meter,
              meter_type:
                Stigg::V1::FeatureCreateFeatureParams::MeterType::OrSymbol,
              unit_transformation:
                T.nilable(
                  Stigg::V1::FeatureCreateFeatureParams::UnitTransformation
                ),
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The type of the feature
        module FeatureType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::FeatureCreateFeatureParams::FeatureType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN =
            T.let(
              :BOOLEAN,
              Stigg::V1::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :NUMBER,
              Stigg::V1::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
            )
          ENUM =
            T.let(
              :ENUM,
              Stigg::V1::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class EnumConfiguration < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::FeatureCreateFeatureParams::EnumConfiguration,
                Stigg::Internal::AnyHash
              )
            end

          # The display name for the enum configuration entity
          sig { returns(String) }
          attr_accessor :display_name

          # The unique value identifier for the enum configuration entity
          sig { returns(String) }
          attr_accessor :value

          sig do
            params(display_name: String, value: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The display name for the enum configuration entity
            display_name:,
            # The unique value identifier for the enum configuration entity
            value:
          )
          end

          sig { override.returns({ display_name: String, value: String }) }
          def to_hash
          end
        end

        # The status of the feature
        module FeatureStatus
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::FeatureCreateFeatureParams::FeatureStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEW =
            T.let(
              :NEW,
              Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :SUSPENDED,
              Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :ACTIVE,
              Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Meter < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::FeatureCreateFeatureParams::Meter,
                Stigg::Internal::AnyHash
              )
            end

          # How the matching events are aggregated into a usage value
          sig do
            returns(Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation)
          end
          attr_reader :aggregation

          sig do
            params(
              aggregation:
                Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::OrHash
            ).void
          end
          attr_writer :aggregation

          # Event filters. Conditions within a filter are ANDed, and filters are ORed
          sig do
            returns(
              T::Array[Stigg::V1::FeatureCreateFeatureParams::Meter::Filter]
            )
          end
          attr_accessor :filters

          # Event meter that turns reported events into usage for a metered feature
          sig do
            params(
              aggregation:
                Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::OrHash,
              filters:
                T::Array[
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # How the matching events are aggregated into a usage value
            aggregation:,
            # Event filters. Conditions within a filter are ANDed, and filters are ORed
            filters:
          )
          end

          sig do
            override.returns(
              {
                aggregation:
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation,
                filters:
                  T::Array[Stigg::V1::FeatureCreateFeatureParams::Meter::Filter]
              }
            )
          end
          def to_hash
          end

          class Aggregation < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation,
                  Stigg::Internal::AnyHash
                )
              end

            # Aggregation function applied to the matching events
            sig do
              returns(
                Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::OrSymbol
              )
            end
            attr_accessor :function

            # Aggregation field name
            sig { returns(T.nilable(String)) }
            attr_reader :field

            sig { params(field: String).void }
            attr_writer :field

            # How the matching events are aggregated into a usage value
            sig do
              params(
                function:
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::OrSymbol,
                field: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Aggregation function applied to the matching events
              function:,
              # Aggregation field name
              field: nil
            )
            end

            sig do
              override.returns(
                {
                  function:
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::OrSymbol,
                  field: String
                }
              )
            end
            def to_hash
            end

            # Aggregation function applied to the matching events
            module Function
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUM =
                T.let(
                  :SUM,
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                )
              MAX =
                T.let(
                  :MAX,
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                )
              MIN =
                T.let(
                  :MIN,
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                )
              AVG =
                T.let(
                  :AVG,
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                )
              COUNT =
                T.let(
                  :COUNT,
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                )
              UNIQUE =
                T.let(
                  :UNIQUE,
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Filter < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Filter,
                  Stigg::Internal::AnyHash
                )
              end

            # Conditions the event must match
            sig do
              returns(
                T::Array[
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition
                ]
              )
            end
            attr_accessor :conditions

            sig do
              params(
                conditions:
                  T::Array[
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Conditions the event must match
              conditions:
            )
            end

            sig do
              override.returns(
                {
                  conditions:
                    T::Array[
                      Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition
                    ]
                }
              )
            end
            def to_hash
            end

            class Condition < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition,
                    Stigg::Internal::AnyHash
                  )
                end

              # Condition field name
              sig { returns(String) }
              attr_accessor :field

              # Comparison applied to the condition field
              sig do
                returns(
                  Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::OrSymbol
                )
              end
              attr_accessor :operation

              # Condition value
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :values

              sig { params(values: T::Array[String]).void }
              attr_writer :values

              sig do
                params(
                  field: String,
                  operation:
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::OrSymbol,
                  value: String,
                  values: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                # Condition field name
                field:,
                # Comparison applied to the condition field
                operation:,
                # Condition value
                value: nil,
                values: nil
              )
              end

              sig do
                override.returns(
                  {
                    field: String,
                    operation:
                      Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::OrSymbol,
                    value: String,
                    values: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              # Comparison applied to the condition field
              module Operation
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                EQUALS =
                  T.let(
                    :EQUALS,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                NOT_EQUALS =
                  T.let(
                    :NOT_EQUALS,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                GREATER_THAN =
                  T.let(
                    :GREATER_THAN,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                GREATER_THAN_OR_EQUAL =
                  T.let(
                    :GREATER_THAN_OR_EQUAL,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                LESS_THAN =
                  T.let(
                    :LESS_THAN,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                LESS_THAN_OR_EQUAL =
                  T.let(
                    :LESS_THAN_OR_EQUAL,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                IS_NULL =
                  T.let(
                    :IS_NULL,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                IS_NOT_NULL =
                  T.let(
                    :IS_NOT_NULL,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                CONTAINS =
                  T.let(
                    :CONTAINS,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                STARTS_WITH =
                  T.let(
                    :STARTS_WITH,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                ENDS_WITH =
                  T.let(
                    :ENDS_WITH,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                IN =
                  T.let(
                    :IN,
                    Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::FeatureCreateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        # The meter type for the feature
        module MeterType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::FeatureCreateFeatureParams::MeterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :None,
              Stigg::V1::FeatureCreateFeatureParams::MeterType::TaggedSymbol
            )
          FLUCTUATING =
            T.let(
              :FLUCTUATING,
              Stigg::V1::FeatureCreateFeatureParams::MeterType::TaggedSymbol
            )
          INCREMENTAL =
            T.let(
              :INCREMENTAL,
              Stigg::V1::FeatureCreateFeatureParams::MeterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::FeatureCreateFeatureParams::MeterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class UnitTransformation < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation,
                Stigg::Internal::AnyHash
              )
            end

          # Divide usage by this number
          sig { returns(Integer) }
          attr_accessor :divide

          # Singular feature units after the transformation
          sig { returns(T.nilable(String)) }
          attr_reader :feature_units

          sig { params(feature_units: String).void }
          attr_writer :feature_units

          # Plural feature units after the transformation
          sig { returns(T.nilable(String)) }
          attr_reader :feature_units_plural

          sig { params(feature_units_plural: String).void }
          attr_writer :feature_units_plural

          # After division, either round the result up or down
          sig do
            returns(
              T.nilable(
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
              )
            )
          end
          attr_reader :round

          sig do
            params(
              round:
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
            ).void
          end
          attr_writer :round

          # Unit transformation to be applied to the reported usage
          sig do
            params(
              divide: Integer,
              feature_units: String,
              feature_units_plural: String,
              round:
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Divide usage by this number
            divide:,
            # Singular feature units after the transformation
            feature_units: nil,
            # Plural feature units after the transformation
            feature_units_plural: nil,
            # After division, either round the result up or down
            round: nil
          )
          end

          sig do
            override.returns(
              {
                divide: Integer,
                feature_units: String,
                feature_units_plural: String,
                round:
                  Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
              }
            )
          end
          def to_hash
          end

          # After division, either round the result up or down
          module Round
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UP =
              T.let(
                :UP,
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round::TaggedSymbol
              )
            DOWN =
              T.let(
                :DOWN,
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::Round::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
