# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class FeatureUpdateFeatureParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::FeatureUpdateFeatureParams,
                Stigg::Internal::AnyHash
              )
            end

          # The description for the feature
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # The display name for the feature
          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          # The configuration data for the feature
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration
                ]
              )
            )
          end
          attr_reader :enum_configuration

          sig do
            params(
              enum_configuration:
                T::Array[
                  Stigg::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration::OrHash
                ]
            ).void
          end
          attr_writer :enum_configuration

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

          sig do
            returns(
              T.nilable(Stigg::V1::Events::FeatureUpdateFeatureParams::Meter)
            )
          end
          attr_reader :meter

          sig do
            params(
              meter:
                Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::OrHash
            ).void
          end
          attr_writer :meter

          # Unit transformation to be applied to the reported usage
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation
              )
            )
          end
          attr_reader :unit_transformation

          sig do
            params(
              unit_transformation:
                T.nilable(
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::OrHash
                )
            ).void
          end
          attr_writer :unit_transformation

          sig do
            params(
              description: String,
              display_name: String,
              enum_configuration:
                T::Array[
                  Stigg::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration::OrHash
                ],
              feature_units: String,
              feature_units_plural: String,
              metadata: T::Hash[Symbol, String],
              meter:
                Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::OrHash,
              unit_transformation:
                T.nilable(
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::OrHash
                ),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The description for the feature
            description: nil,
            # The display name for the feature
            display_name: nil,
            # The configuration data for the feature
            enum_configuration: nil,
            # The units for the feature
            feature_units: nil,
            # The plural units for the feature
            feature_units_plural: nil,
            # The additional metadata for the feature
            metadata: nil,
            meter: nil,
            # Unit transformation to be applied to the reported usage
            unit_transformation: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                description: String,
                display_name: String,
                enum_configuration:
                  T::Array[
                    Stigg::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration
                  ],
                feature_units: String,
                feature_units_plural: String,
                metadata: T::Hash[Symbol, String],
                meter: Stigg::V1::Events::FeatureUpdateFeatureParams::Meter,
                unit_transformation:
                  T.nilable(
                    Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation
                  ),
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          class EnumConfiguration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration,
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

          class Meter < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::FeatureUpdateFeatureParams::Meter,
                  Stigg::Internal::AnyHash
                )
              end

            sig do
              returns(
                Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation
              )
            end
            attr_reader :aggregation

            sig do
              params(
                aggregation:
                  Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::OrHash
              ).void
            end
            attr_writer :aggregation

            sig do
              returns(
                T::Array[
                  Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter
                ]
              )
            end
            attr_accessor :filters

            sig do
              params(
                aggregation:
                  Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::OrHash,
                filters:
                  T::Array[
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(aggregation:, filters:)
            end

            sig do
              override.returns(
                {
                  aggregation:
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation,
                  filters:
                    T::Array[
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter
                    ]
                }
              )
            end
            def to_hash
            end

            class Aggregation < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation,
                    Stigg::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::OrSymbol
                )
              end
              attr_accessor :function

              sig { returns(T.nilable(String)) }
              attr_reader :field

              sig { params(field: String).void }
              attr_writer :field

              sig do
                params(
                  function:
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::OrSymbol,
                  field: String
                ).returns(T.attached_class)
              end
              def self.new(function:, field: nil)
              end

              sig do
                override.returns(
                  {
                    function:
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::OrSymbol,
                    field: String
                  }
                )
              end
              def to_hash
              end

              module Function
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUM =
                  T.let(
                    :SUM,
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                  )
                MAX =
                  T.let(
                    :MAX,
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                  )
                MIN =
                  T.let(
                    :MIN,
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                  )
                AVG =
                  T.let(
                    :AVG,
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                  )
                COUNT =
                  T.let(
                    :COUNT,
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                  )
                UNIQUE =
                  T.let(
                    :UNIQUE,
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Aggregation::Function::TaggedSymbol
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
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter,
                    Stigg::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T::Array[
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition
                  ]
                )
              end
              attr_accessor :conditions

              sig do
                params(
                  conditions:
                    T::Array[
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(conditions:)
              end

              sig do
                override.returns(
                  {
                    conditions:
                      T::Array[
                        Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition
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
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition,
                      Stigg::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :field

                sig do
                  returns(
                    Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::OrSymbol
                  )
                end
                attr_accessor :operation

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
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::OrSymbol,
                    value: String,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(field:, operation:, value: nil, values: nil)
                end

                sig do
                  override.returns(
                    {
                      field: String,
                      operation:
                        Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::OrSymbol,
                      value: String,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                module Operation
                  extend Stigg::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  EQUALS =
                    T.let(
                      :EQUALS,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  NOT_EQUALS =
                    T.let(
                      :NOT_EQUALS,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  GREATER_THAN =
                    T.let(
                      :GREATER_THAN,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  GREATER_THAN_OR_EQUAL =
                    T.let(
                      :GREATER_THAN_OR_EQUAL,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  LESS_THAN =
                    T.let(
                      :LESS_THAN,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  LESS_THAN_OR_EQUAL =
                    T.let(
                      :LESS_THAN_OR_EQUAL,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  IS_NULL =
                    T.let(
                      :IS_NULL,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  IS_NOT_NULL =
                    T.let(
                      :IS_NOT_NULL,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  CONTAINS =
                    T.let(
                      :CONTAINS,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  STARTS_WITH =
                    T.let(
                      :STARTS_WITH,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  ENDS_WITH =
                    T.let(
                      :ENDS_WITH,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  IN =
                    T.let(
                      :IN,
                      Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Events::FeatureUpdateFeatureParams::Meter::Filter::Condition::Operation::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          class UnitTransformation < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation,
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
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round::OrSymbol
                )
              )
            end
            attr_reader :round

            sig do
              params(
                round:
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round::OrSymbol
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
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round::OrSymbol
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
                    Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round::OrSymbol
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
                    Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UP =
                T.let(
                  :UP,
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round::TaggedSymbol
                )
              DOWN =
                T.let(
                  :DOWN,
                  Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::FeatureUpdateFeatureParams::UnitTransformation::Round::TaggedSymbol
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
end
