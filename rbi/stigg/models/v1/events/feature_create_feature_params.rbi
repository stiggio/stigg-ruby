# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class FeatureCreateFeatureParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::FeatureCreateFeatureParams,
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
            returns(
              Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType::OrSymbol
            )
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
                T::Array[
                  Stigg::V1::Events::FeatureCreateFeatureParams::EnumConfiguration
                ]
              )
            )
          end
          attr_reader :enum_configuration

          sig do
            params(
              enum_configuration:
                T::Array[
                  Stigg::V1::Events::FeatureCreateFeatureParams::EnumConfiguration::OrHash
                ]
            ).void
          end
          attr_writer :enum_configuration

          # The status of the feature
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::OrSymbol
              )
            )
          end
          attr_reader :feature_status

          sig do
            params(
              feature_status:
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::OrSymbol
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

          # The meter type for the feature
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::OrSymbol
              )
            )
          end
          attr_reader :meter_type

          sig do
            params(
              meter_type:
                Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::OrSymbol
            ).void
          end
          attr_writer :meter_type

          # Unit transformation to be applied to the reported usage
          sig do
            returns(
              T.nilable(
                Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation
              )
            )
          end
          attr_reader :unit_transformation

          sig do
            params(
              unit_transformation:
                T.nilable(
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::OrHash
                )
            ).void
          end
          attr_writer :unit_transformation

          sig do
            params(
              id: String,
              display_name: String,
              feature_type:
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType::OrSymbol,
              description: String,
              enum_configuration:
                T::Array[
                  Stigg::V1::Events::FeatureCreateFeatureParams::EnumConfiguration::OrHash
                ],
              feature_status:
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::OrSymbol,
              feature_units: String,
              feature_units_plural: String,
              metadata: T::Hash[Symbol, String],
              meter_type:
                Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::OrSymbol,
              unit_transformation:
                T.nilable(
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::OrHash
                ),
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
            # The meter type for the feature
            meter_type: nil,
            # Unit transformation to be applied to the reported usage
            unit_transformation: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                display_name: String,
                feature_type:
                  Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType::OrSymbol,
                description: String,
                enum_configuration:
                  T::Array[
                    Stigg::V1::Events::FeatureCreateFeatureParams::EnumConfiguration
                  ],
                feature_status:
                  Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::OrSymbol,
                feature_units: String,
                feature_units_plural: String,
                metadata: T::Hash[Symbol, String],
                meter_type:
                  Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::OrSymbol,
                unit_transformation:
                  T.nilable(
                    Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation
                  ),
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
                T.all(
                  Symbol,
                  Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOOLEAN =
              T.let(
                :BOOLEAN,
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
              )
            NUMBER =
              T.let(
                :NUMBER,
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
              )
            ENUM =
              T.let(
                :ENUM,
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::FeatureCreateFeatureParams::FeatureType::TaggedSymbol
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
                  Stigg::V1::Events::FeatureCreateFeatureParams::EnumConfiguration,
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
                  Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEW =
              T.let(
                :NEW,
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
              )
            SUSPENDED =
              T.let(
                :SUSPENDED,
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::FeatureCreateFeatureParams::FeatureStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The meter type for the feature
          module MeterType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Events::FeatureCreateFeatureParams::MeterType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :None,
                Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::TaggedSymbol
              )
            FLUCTUATING =
              T.let(
                :FLUCTUATING,
                Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::TaggedSymbol
              )
            INCREMENTAL =
              T.let(
                :INCREMENTAL,
                Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::FeatureCreateFeatureParams::MeterType::TaggedSymbol
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
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation,
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
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
                )
              )
            end
            attr_reader :round

            sig do
              params(
                round:
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
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
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
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
                    Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round::OrSymbol
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
                    Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UP =
                T.let(
                  :UP,
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round::TaggedSymbol
                )
              DOWN =
                T.let(
                  :DOWN,
                  Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::FeatureCreateFeatureParams::UnitTransformation::Round::TaggedSymbol
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
