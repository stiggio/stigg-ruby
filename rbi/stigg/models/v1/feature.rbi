# typed: strong

module Stigg
  module Models
    module V1
      class Feature < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Stigg::V1::Feature, Stigg::Internal::AnyHash) }

        # Feature configuration object
        sig { returns(Stigg::V1::Feature::Data) }
        attr_reader :data

        sig { params(data: Stigg::V1::Feature::Data::OrHash).void }
        attr_writer :data

        # Response object
        sig do
          params(data: Stigg::V1::Feature::Data::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # Feature configuration object
          data:
        )
        end

        sig { override.returns({ data: Stigg::V1::Feature::Data }) }
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Stigg::V1::Feature::Data, Stigg::Internal::AnyHash)
            end

          # The unique identifier for the feature
          sig { returns(String) }
          attr_accessor :id

          # Timestamp of when the record was created
          sig { returns(Time) }
          attr_accessor :created_at

          # The description for the feature
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The display name for the feature
          sig { returns(String) }
          attr_accessor :display_name

          # The configuration data for the feature
          sig do
            returns(
              T.nilable(T::Array[Stigg::V1::Feature::Data::EnumConfiguration])
            )
          end
          attr_accessor :enum_configuration

          # The status of the feature
          sig { returns(Stigg::V1::Feature::Data::FeatureStatus::TaggedSymbol) }
          attr_accessor :feature_status

          # The type of the feature
          sig { returns(Stigg::V1::Feature::Data::FeatureType::TaggedSymbol) }
          attr_accessor :feature_type

          # The units for the feature
          sig { returns(T.nilable(String)) }
          attr_accessor :feature_units

          # The plural units for the feature
          sig { returns(T.nilable(String)) }
          attr_accessor :feature_units_plural

          # The additional metadata for the feature
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :metadata

          # Event meter that turns reported events into usage for a metered feature
          sig { returns(T.nilable(Stigg::V1::Feature::Data::Meter)) }
          attr_reader :meter

          sig do
            params(
              meter: T.nilable(Stigg::V1::Feature::Data::Meter::OrHash)
            ).void
          end
          attr_writer :meter

          # The meter type for the feature
          sig { returns(Stigg::V1::Feature::Data::MeterType::TaggedSymbol) }
          attr_accessor :meter_type

          # Unit transformation to be applied to the reported usage
          sig do
            returns(T.nilable(Stigg::V1::Feature::Data::UnitTransformation))
          end
          attr_reader :unit_transformation

          sig do
            params(
              unit_transformation:
                T.nilable(Stigg::V1::Feature::Data::UnitTransformation::OrHash)
            ).void
          end
          attr_writer :unit_transformation

          # Timestamp of when the record was last updated
          sig { returns(Time) }
          attr_accessor :updated_at

          # Feature configuration object
          sig do
            params(
              id: String,
              created_at: Time,
              description: T.nilable(String),
              display_name: String,
              enum_configuration:
                T.nilable(
                  T::Array[Stigg::V1::Feature::Data::EnumConfiguration::OrHash]
                ),
              feature_status: Stigg::V1::Feature::Data::FeatureStatus::OrSymbol,
              feature_type: Stigg::V1::Feature::Data::FeatureType::OrSymbol,
              feature_units: T.nilable(String),
              feature_units_plural: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              meter: T.nilable(Stigg::V1::Feature::Data::Meter::OrHash),
              meter_type: Stigg::V1::Feature::Data::MeterType::OrSymbol,
              unit_transformation:
                T.nilable(Stigg::V1::Feature::Data::UnitTransformation::OrHash),
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the feature
            id:,
            # Timestamp of when the record was created
            created_at:,
            # The description for the feature
            description:,
            # The display name for the feature
            display_name:,
            # The configuration data for the feature
            enum_configuration:,
            # The status of the feature
            feature_status:,
            # The type of the feature
            feature_type:,
            # The units for the feature
            feature_units:,
            # The plural units for the feature
            feature_units_plural:,
            # The additional metadata for the feature
            metadata:,
            # Event meter that turns reported events into usage for a metered feature
            meter:,
            # The meter type for the feature
            meter_type:,
            # Unit transformation to be applied to the reported usage
            unit_transformation:,
            # Timestamp of when the record was last updated
            updated_at:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                description: T.nilable(String),
                display_name: String,
                enum_configuration:
                  T.nilable(
                    T::Array[Stigg::V1::Feature::Data::EnumConfiguration]
                  ),
                feature_status:
                  Stigg::V1::Feature::Data::FeatureStatus::TaggedSymbol,
                feature_type:
                  Stigg::V1::Feature::Data::FeatureType::TaggedSymbol,
                feature_units: T.nilable(String),
                feature_units_plural: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                meter: T.nilable(Stigg::V1::Feature::Data::Meter),
                meter_type: Stigg::V1::Feature::Data::MeterType::TaggedSymbol,
                unit_transformation:
                  T.nilable(Stigg::V1::Feature::Data::UnitTransformation),
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          class EnumConfiguration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Feature::Data::EnumConfiguration,
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
                T.all(Symbol, Stigg::V1::Feature::Data::FeatureStatus)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEW =
              T.let(:NEW, Stigg::V1::Feature::Data::FeatureStatus::TaggedSymbol)
            SUSPENDED =
              T.let(
                :SUSPENDED,
                Stigg::V1::Feature::Data::FeatureStatus::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Stigg::V1::Feature::Data::FeatureStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Stigg::V1::Feature::Data::FeatureStatus::TaggedSymbol]
              )
            end
            def self.values
            end
          end

          # The type of the feature
          module FeatureType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::Feature::Data::FeatureType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOOLEAN =
              T.let(
                :BOOLEAN,
                Stigg::V1::Feature::Data::FeatureType::TaggedSymbol
              )
            NUMBER =
              T.let(
                :NUMBER,
                Stigg::V1::Feature::Data::FeatureType::TaggedSymbol
              )
            ENUM =
              T.let(:ENUM, Stigg::V1::Feature::Data::FeatureType::TaggedSymbol)

            sig do
              override.returns(
                T::Array[Stigg::V1::Feature::Data::FeatureType::TaggedSymbol]
              )
            end
            def self.values
            end
          end

          class Meter < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(Stigg::V1::Feature::Data::Meter, Stigg::Internal::AnyHash)
              end

            # How the matching events are aggregated into a usage value
            sig { returns(Stigg::V1::Feature::Data::Meter::Aggregation) }
            attr_reader :aggregation

            sig do
              params(
                aggregation:
                  Stigg::V1::Feature::Data::Meter::Aggregation::OrHash
              ).void
            end
            attr_writer :aggregation

            # Event filters. Conditions within a filter are ANDed, and filters are ORed
            sig { returns(T::Array[Stigg::V1::Feature::Data::Meter::Filter]) }
            attr_accessor :filters

            # Event meter that turns reported events into usage for a metered feature
            sig do
              params(
                aggregation:
                  Stigg::V1::Feature::Data::Meter::Aggregation::OrHash,
                filters:
                  T::Array[Stigg::V1::Feature::Data::Meter::Filter::OrHash]
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
                  aggregation: Stigg::V1::Feature::Data::Meter::Aggregation,
                  filters: T::Array[Stigg::V1::Feature::Data::Meter::Filter]
                }
              )
            end
            def to_hash
            end

            class Aggregation < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Feature::Data::Meter::Aggregation,
                    Stigg::Internal::AnyHash
                  )
                end

              # Aggregation function applied to the matching events
              sig do
                returns(
                  Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
                )
              end
              attr_accessor :function

              # Aggregation field name
              sig { returns(T.nilable(String)) }
              attr_accessor :field

              # How the matching events are aggregated into a usage value
              sig do
                params(
                  function:
                    Stigg::V1::Feature::Data::Meter::Aggregation::Function::OrSymbol,
                  field: T.nilable(String)
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
                      Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol,
                    field: T.nilable(String)
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
                      Stigg::V1::Feature::Data::Meter::Aggregation::Function
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUM =
                  T.let(
                    :SUM,
                    Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
                  )
                MAX =
                  T.let(
                    :MAX,
                    Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
                  )
                MIN =
                  T.let(
                    :MIN,
                    Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
                  )
                AVG =
                  T.let(
                    :AVG,
                    Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
                  )
                COUNT =
                  T.let(
                    :COUNT,
                    Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
                  )
                UNIQUE =
                  T.let(
                    :UNIQUE,
                    Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Feature::Data::Meter::Aggregation::Function::TaggedSymbol
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
                    Stigg::V1::Feature::Data::Meter::Filter,
                    Stigg::Internal::AnyHash
                  )
                end

              # Conditions the event must match
              sig do
                returns(
                  T::Array[Stigg::V1::Feature::Data::Meter::Filter::Condition]
                )
              end
              attr_accessor :conditions

              # A set of conditions an event must all match
              sig do
                params(
                  conditions:
                    T::Array[
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::OrHash
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
                        Stigg::V1::Feature::Data::Meter::Filter::Condition
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
                      Stigg::V1::Feature::Data::Meter::Filter::Condition,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Condition field name
                sig { returns(String) }
                attr_accessor :field

                # Comparison applied to the condition field
                sig do
                  returns(
                    Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                  )
                end
                attr_accessor :operation

                # Condition value
                sig { returns(T.nilable(String)) }
                attr_accessor :value

                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :values

                # Meter filter condition
                sig do
                  params(
                    field: String,
                    operation:
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::OrSymbol,
                    value: T.nilable(String),
                    values: T.nilable(T::Array[String])
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
                        Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol,
                      value: T.nilable(String),
                      values: T.nilable(T::Array[String])
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
                        Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  EQUALS =
                    T.let(
                      :EQUALS,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  NOT_EQUALS =
                    T.let(
                      :NOT_EQUALS,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  GREATER_THAN =
                    T.let(
                      :GREATER_THAN,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  GREATER_THAN_OR_EQUAL =
                    T.let(
                      :GREATER_THAN_OR_EQUAL,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  LESS_THAN =
                    T.let(
                      :LESS_THAN,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  LESS_THAN_OR_EQUAL =
                    T.let(
                      :LESS_THAN_OR_EQUAL,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  IS_NULL =
                    T.let(
                      :IS_NULL,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  IS_NOT_NULL =
                    T.let(
                      :IS_NOT_NULL,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  CONTAINS =
                    T.let(
                      :CONTAINS,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  STARTS_WITH =
                    T.let(
                      :STARTS_WITH,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  ENDS_WITH =
                    T.let(
                      :ENDS_WITH,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )
                  IN =
                    T.let(
                      :IN,
                      Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Feature::Data::Meter::Filter::Condition::Operation::TaggedSymbol
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
                T.all(Symbol, Stigg::V1::Feature::Data::MeterType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(:None, Stigg::V1::Feature::Data::MeterType::TaggedSymbol)
            FLUCTUATING =
              T.let(
                :FLUCTUATING,
                Stigg::V1::Feature::Data::MeterType::TaggedSymbol
              )
            INCREMENTAL =
              T.let(
                :INCREMENTAL,
                Stigg::V1::Feature::Data::MeterType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Stigg::V1::Feature::Data::MeterType::TaggedSymbol]
              )
            end
            def self.values
            end
          end

          class UnitTransformation < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Feature::Data::UnitTransformation,
                  Stigg::Internal::AnyHash
                )
              end

            # Divide usage by this number
            sig { returns(Float) }
            attr_accessor :divide

            # Singular feature units after the transformation
            sig { returns(T.nilable(String)) }
            attr_accessor :feature_units

            # Plural feature units after the transformation
            sig { returns(T.nilable(String)) }
            attr_accessor :feature_units_plural

            # After division, either round the result up or down
            sig do
              returns(
                Stigg::V1::Feature::Data::UnitTransformation::Round::TaggedSymbol
              )
            end
            attr_accessor :round

            # Unit transformation to be applied to the reported usage
            sig do
              params(
                divide: Float,
                feature_units: T.nilable(String),
                feature_units_plural: T.nilable(String),
                round:
                  Stigg::V1::Feature::Data::UnitTransformation::Round::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Divide usage by this number
              divide:,
              # Singular feature units after the transformation
              feature_units:,
              # Plural feature units after the transformation
              feature_units_plural:,
              # After division, either round the result up or down
              round:
            )
            end

            sig do
              override.returns(
                {
                  divide: Float,
                  feature_units: T.nilable(String),
                  feature_units_plural: T.nilable(String),
                  round:
                    Stigg::V1::Feature::Data::UnitTransformation::Round::TaggedSymbol
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
                    Stigg::V1::Feature::Data::UnitTransformation::Round
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UP =
                T.let(
                  :UP,
                  Stigg::V1::Feature::Data::UnitTransformation::Round::TaggedSymbol
                )
              DOWN =
                T.let(
                  :DOWN,
                  Stigg::V1::Feature::Data::UnitTransformation::Round::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Feature::Data::UnitTransformation::Round::TaggedSymbol
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
