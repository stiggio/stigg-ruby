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
