# typed: strong

module Stigg
  module Resources
    class V1
      # Operations related to features
      class Features
        # Archives a feature, preventing it from being used in new entitlements.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Feature)
        end
        def archive_feature(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Creates a new feature with the specified type, metering, and configuration.
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
            meter_type:
              Stigg::V1::FeatureCreateFeatureParams::MeterType::OrSymbol,
            unit_transformation:
              T.nilable(
                Stigg::V1::FeatureCreateFeatureParams::UnitTransformation::OrHash
              ),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Feature)
        end
        def create_feature(
          # Body param: The unique identifier for the feature
          id:,
          # Body param: The display name for the feature
          display_name:,
          # Body param: The type of the feature
          feature_type:,
          # Body param: The description for the feature
          description: nil,
          # Body param: The configuration data for the feature
          enum_configuration: nil,
          # Body param: The status of the feature
          feature_status: nil,
          # Body param: The units for the feature
          feature_units: nil,
          # Body param: The plural units for the feature
          feature_units_plural: nil,
          # Body param: The additional metadata for the feature
          metadata: nil,
          # Body param: The meter type for the feature
          meter_type: nil,
          # Body param: Unit transformation to be applied to the reported usage
          unit_transformation: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves a paginated list of features in the environment.
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
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1::FeatureListFeaturesResponse
            ]
          )
        end
        def list_features(
          # Query param: Filter by entity ID
          id: nil,
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Query param: Filter by feature type. Supports comma-separated values for
          # multiple types
          feature_type: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Query param: Filter by meter type. Supports comma-separated values for multiple
          # types
          meter_type: nil,
          # Query param: Filter by feature status. Supports comma-separated values for
          # multiple statuses
          status: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Retrieves a feature by its unique identifier.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Feature)
        end
        def retrieve_feature(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Restores an archived feature, allowing it to be used in entitlements again.
        sig do
          params(
            id: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Feature)
        end
        def unarchive_feature(
          # The unique identifier of the entity
          id,
          # Account ID — optional when authenticating with a user JWT (Bearer token); falls
          # back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Environment ID — required when authenticating with a user JWT (Bearer token) on
          # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
          # key).
          x_environment_id: nil,
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
                Stigg::V1::FeatureUpdateFeatureParams::EnumConfiguration::OrHash
              ],
            feature_units: String,
            feature_units_plural: String,
            metadata: T::Hash[Symbol, String],
            meter: Stigg::V1::FeatureUpdateFeatureParams::Meter::OrHash,
            unit_transformation:
              T.nilable(
                Stigg::V1::FeatureUpdateFeatureParams::UnitTransformation::OrHash
              ),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::V1::Feature)
        end
        def update_feature(
          # Path param: The unique identifier of the entity
          id,
          # Body param: The description for the feature
          description: nil,
          # Body param: The display name for the feature
          display_name: nil,
          # Body param: The configuration data for the feature
          enum_configuration: nil,
          # Body param: The units for the feature
          feature_units: nil,
          # Body param: The plural units for the feature
          feature_units_plural: nil,
          # Body param: The additional metadata for the feature
          metadata: nil,
          # Body param
          meter: nil,
          # Body param: Unit transformation to be applied to the reported usage
          unit_transformation: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
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
