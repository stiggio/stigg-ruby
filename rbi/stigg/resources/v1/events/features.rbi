# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Features
          # Archives a feature, preventing it from being used in new entitlements.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::FeatureArchiveFeatureResponse)
          end
          def archive_feature(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Creates a new feature with the specified type, metering, and configuration.
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
            ).returns(Stigg::Models::V1::Events::FeatureCreateFeatureResponse)
          end
          def create_feature(
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

          # Retrieves a paginated list of features in the environment.
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
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1::Events::FeatureListFeaturesResponse
              ]
            )
          end
          def list_features(
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

          # Retrieves a feature by its unique identifier.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::FeatureRetrieveFeatureResponse)
          end
          def retrieve_feature(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Restores an archived feature, allowing it to be used in entitlements again.
          sig do
            params(
              id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Events::FeatureUnarchiveFeatureResponse
            )
          end
          def unarchive_feature(
            # The unique identifier of the entity
            id,
            request_options: {}
          )
          end

          # Updates an existing feature's properties such as display name, description, and
          # configuration.
          sig do
            params(
              id: String,
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
            ).returns(Stigg::Models::V1::Events::FeatureUpdateFeatureResponse)
          end
          def update_feature(
            # The unique identifier of the entity
            id,
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

          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
