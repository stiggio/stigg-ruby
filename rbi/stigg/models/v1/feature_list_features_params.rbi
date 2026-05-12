# typed: strong

module Stigg
  module Models
    module V1
      class FeatureListFeaturesParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::FeatureListFeaturesParams,
              Stigg::Internal::AnyHash
            )
          end

        # Filter by entity ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Return items that come after this cursor
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Return items that come before this cursor
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Filter by creation date using range operators: gt, gte, lt, lte
        sig do
          returns(T.nilable(Stigg::V1::FeatureListFeaturesParams::CreatedAt))
        end
        attr_reader :created_at

        sig do
          params(
            created_at: Stigg::V1::FeatureListFeaturesParams::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Filter by feature type. Supports comma-separated values for multiple types
        sig do
          returns(
            T.nilable(
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::FeatureType::OrSymbol
              ]
            )
          )
        end
        attr_reader :feature_type

        sig do
          params(
            feature_type:
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::FeatureType::OrSymbol
              ]
          ).void
        end
        attr_writer :feature_type

        # Maximum number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by meter type. Supports comma-separated values for multiple types
        sig do
          returns(
            T.nilable(
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::MeterType::OrSymbol
              ]
            )
          )
        end
        attr_reader :meter_type

        sig do
          params(
            meter_type:
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::MeterType::OrSymbol
              ]
          ).void
        end
        attr_writer :meter_type

        # Filter by feature status. Supports comma-separated values for multiple statuses
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::FeatureListFeaturesParams::Status::OrSymbol]
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              T::Array[Stigg::V1::FeatureListFeaturesParams::Status::OrSymbol]
          ).void
        end
        attr_writer :status

        sig do
          params(
            id: String,
            after: String,
            before: String,
            created_at: Stigg::V1::FeatureListFeaturesParams::CreatedAt::OrHash,
            feature_type:
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::FeatureType::OrSymbol
              ],
            limit: Integer,
            meter_type:
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::MeterType::OrSymbol
              ],
            status:
              T::Array[Stigg::V1::FeatureListFeaturesParams::Status::OrSymbol],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by entity ID
          id: nil,
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Filter by feature type. Supports comma-separated values for multiple types
          feature_type: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by meter type. Supports comma-separated values for multiple types
          meter_type: nil,
          # Filter by feature status. Supports comma-separated values for multiple statuses
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              after: String,
              before: String,
              created_at: Stigg::V1::FeatureListFeaturesParams::CreatedAt,
              feature_type:
                T::Array[
                  Stigg::V1::FeatureListFeaturesParams::FeatureType::OrSymbol
                ],
              limit: Integer,
              meter_type:
                T::Array[
                  Stigg::V1::FeatureListFeaturesParams::MeterType::OrSymbol
                ],
              status:
                T::Array[
                  Stigg::V1::FeatureListFeaturesParams::Status::OrSymbol
                ],
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::FeatureListFeaturesParams::CreatedAt,
                Stigg::Internal::AnyHash
              )
            end

          # Greater than the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :gt

          sig { params(gt: Time).void }
          attr_writer :gt

          # Greater than or equal to the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :gte

          sig { params(gte: Time).void }
          attr_writer :gte

          # Less than the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :lt

          sig { params(lt: Time).void }
          attr_writer :lt

          # Less than or equal to the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :lte

          sig { params(lte: Time).void }
          attr_writer :lte

          # Filter by creation date using range operators: gt, gte, lt, lte
          sig do
            params(gt: Time, gte: Time, lt: Time, lte: Time).returns(
              T.attached_class
            )
          end
          def self.new(
            # Greater than the specified createdAt value
            gt: nil,
            # Greater than or equal to the specified createdAt value
            gte: nil,
            # Less than the specified createdAt value
            lt: nil,
            # Less than or equal to the specified createdAt value
            lte: nil
          )
          end

          sig { override.returns({ gt: Time, gte: Time, lt: Time, lte: Time }) }
          def to_hash
          end
        end

        module FeatureType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::FeatureListFeaturesParams::FeatureType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOOLEAN =
            T.let(
              :BOOLEAN,
              Stigg::V1::FeatureListFeaturesParams::FeatureType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :NUMBER,
              Stigg::V1::FeatureListFeaturesParams::FeatureType::TaggedSymbol
            )
          ENUM =
            T.let(
              :ENUM,
              Stigg::V1::FeatureListFeaturesParams::FeatureType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::FeatureType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module MeterType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::FeatureListFeaturesParams::MeterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :None,
              Stigg::V1::FeatureListFeaturesParams::MeterType::TaggedSymbol
            )
          FLUCTUATING =
            T.let(
              :FLUCTUATING,
              Stigg::V1::FeatureListFeaturesParams::MeterType::TaggedSymbol
            )
          INCREMENTAL =
            T.let(
              :INCREMENTAL,
              Stigg::V1::FeatureListFeaturesParams::MeterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::MeterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::FeatureListFeaturesParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEW =
            T.let(
              :NEW,
              Stigg::V1::FeatureListFeaturesParams::Status::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :SUSPENDED,
              Stigg::V1::FeatureListFeaturesParams::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :ACTIVE,
              Stigg::V1::FeatureListFeaturesParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::FeatureListFeaturesParams::Status::TaggedSymbol
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
