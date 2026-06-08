# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      # Operations related to features
      class Features
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::FeatureArchiveFeatureParams} for more details.
        #
        # Archives a feature, preventing it from being used in new entitlements.
        #
        # @overload archive_feature(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Feature]
        #
        # @see Stigg::Models::V1::FeatureArchiveFeatureParams
        def archive_feature(id, params = {})
          parsed, options = Stigg::V1::FeatureArchiveFeatureParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/features/%1$s/archive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Feature,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::FeatureCreateFeatureParams} for more details.
        #
        # Creates a new feature with the specified type, metering, and configuration.
        #
        # @overload create_feature(id:, display_name:, feature_type:, description: nil, enum_configuration: nil, feature_status: nil, feature_units: nil, feature_units_plural: nil, metadata: nil, meter_type: nil, unit_transformation: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Body param: The unique identifier for the feature
        #
        # @param display_name [String] Body param: The display name for the feature
        #
        # @param feature_type [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::FeatureType] Body param: The type of the feature
        #
        # @param description [String] Body param: The description for the feature
        #
        # @param enum_configuration [Array<Stigg::Models::V1::FeatureCreateFeatureParams::EnumConfiguration>] Body param: The configuration data for the feature
        #
        # @param feature_status [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::FeatureStatus] Body param: The status of the feature
        #
        # @param feature_units [String] Body param: The units for the feature
        #
        # @param feature_units_plural [String] Body param: The plural units for the feature
        #
        # @param metadata [Hash{Symbol=>String}] Body param: The additional metadata for the feature
        #
        # @param meter_type [Symbol, Stigg::Models::V1::FeatureCreateFeatureParams::MeterType] Body param: The meter type for the feature
        #
        # @param unit_transformation [Stigg::Models::V1::FeatureCreateFeatureParams::UnitTransformation, nil] Body param: Unit transformation to be applied to the reported usage
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Feature]
        #
        # @see Stigg::Models::V1::FeatureCreateFeatureParams
        def create_feature(params)
          parsed, options = Stigg::V1::FeatureCreateFeatureParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/features",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Feature,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::FeatureListFeaturesParams} for more details.
        #
        # Retrieves a paginated list of features in the environment.
        #
        # @overload list_features(id: nil, after: nil, before: nil, created_at: nil, feature_type: nil, limit: nil, meter_type: nil, status: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Query param: Filter by entity ID
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param created_at [Stigg::Models::V1::FeatureListFeaturesParams::CreatedAt] Query param: Filter by creation date using range operators: gt, gte, lt, lte
        #
        # @param feature_type [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::FeatureType>] Query param: Filter by feature type. Supports comma-separated values for multipl
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param meter_type [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::MeterType>] Query param: Filter by meter type. Supports comma-separated values for multiple
        #
        # @param status [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::Status>] Query param: Filter by feature status. Supports comma-separated values for multi
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::FeatureListFeaturesResponse>]
        #
        # @see Stigg::Models::V1::FeatureListFeaturesParams
        def list_features(params = {})
          query_params = [:id, :after, :before, :created_at, :feature_type, :limit, :meter_type, :status]
          parsed, options = Stigg::V1::FeatureListFeaturesParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/features",
            query: query.transform_keys(
              created_at: "createdAt",
              feature_type: "featureType",
              meter_type: "meterType"
            ),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::FeatureListFeaturesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::FeatureRetrieveFeatureParams} for more details.
        #
        # Retrieves a feature by its unique identifier.
        #
        # @overload retrieve_feature(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Feature]
        #
        # @see Stigg::Models::V1::FeatureRetrieveFeatureParams
        def retrieve_feature(id, params = {})
          parsed, options = Stigg::V1::FeatureRetrieveFeatureParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/features/%1$s", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Feature,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::FeatureUnarchiveFeatureParams} for more details.
        #
        # Restores an archived feature, allowing it to be used in entitlements again.
        #
        # @overload unarchive_feature(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the entity
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Feature]
        #
        # @see Stigg::Models::V1::FeatureUnarchiveFeatureParams
        def unarchive_feature(id, params = {})
          parsed, options = Stigg::V1::FeatureUnarchiveFeatureParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/v1/features/%1$s/unarchive", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::V1::Feature,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::FeatureUpdateFeatureParams} for more details.
        #
        # Updates an existing feature's properties such as display name, description, and
        # configuration.
        #
        # @overload update_feature(id, description: nil, display_name: nil, enum_configuration: nil, feature_units: nil, feature_units_plural: nil, metadata: nil, meter: nil, unit_transformation: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] Path param: The unique identifier of the entity
        #
        # @param description [String] Body param: The description for the feature
        #
        # @param display_name [String] Body param: The display name for the feature
        #
        # @param enum_configuration [Array<Stigg::Models::V1::FeatureUpdateFeatureParams::EnumConfiguration>] Body param: The configuration data for the feature
        #
        # @param feature_units [String] Body param: The units for the feature
        #
        # @param feature_units_plural [String] Body param: The plural units for the feature
        #
        # @param metadata [Hash{Symbol=>String}] Body param: The additional metadata for the feature
        #
        # @param meter [Stigg::Models::V1::FeatureUpdateFeatureParams::Meter] Body param
        #
        # @param unit_transformation [Stigg::Models::V1::FeatureUpdateFeatureParams::UnitTransformation, nil] Body param: Unit transformation to be applied to the reported usage
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::Feature]
        #
        # @see Stigg::Models::V1::FeatureUpdateFeatureParams
        def update_feature(id, params = {})
          parsed, options = Stigg::V1::FeatureUpdateFeatureParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :patch,
            path: ["api/v1/features/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::V1::Feature,
            options: options
          )
        end

        # @api private
        #
        # @param client [Stigg::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
