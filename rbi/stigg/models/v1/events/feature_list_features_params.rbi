# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class FeatureListFeaturesParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::FeatureListFeaturesParams,
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
            returns(
              T.nilable(Stigg::V1::Events::FeatureListFeaturesParams::CreatedAt)
            )
          end
          attr_reader :created_at

          sig do
            params(
              created_at:
                Stigg::V1::Events::FeatureListFeaturesParams::CreatedAt::OrHash
            ).void
          end
          attr_writer :created_at

          # Filter by feature type. Supports comma-separated values for multiple types
          sig { returns(T.nilable(String)) }
          attr_reader :feature_type

          sig { params(feature_type: String).void }
          attr_writer :feature_type

          # Maximum number of items to return
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Filter by meter type. Supports comma-separated values for multiple types
          sig { returns(T.nilable(String)) }
          attr_reader :meter_type

          sig { params(meter_type: String).void }
          attr_writer :meter_type

          # Filter by feature status. Supports comma-separated values for multiple statuses
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              id: String,
              after: String,
              before: String,
              created_at:
                Stigg::V1::Events::FeatureListFeaturesParams::CreatedAt::OrHash,
              feature_type: String,
              limit: Integer,
              meter_type: String,
              status: String,
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
                created_at:
                  Stigg::V1::Events::FeatureListFeaturesParams::CreatedAt,
                feature_type: String,
                limit: Integer,
                meter_type: String,
                status: String,
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
                  Stigg::V1::Events::FeatureListFeaturesParams::CreatedAt,
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

            sig do
              override.returns({ gt: Time, gte: Time, lt: Time, lte: Time })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
