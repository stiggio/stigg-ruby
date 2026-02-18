# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Features
          # Archives a feature, preventing it from being used in new entitlements.
          #
          # @overload archive_feature(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::FeatureArchiveFeatureResponse]
          #
          # @see Stigg::Models::V1::Events::FeatureArchiveFeatureParams
          def archive_feature(id, params = {})
            @client.request(
              method: :post,
              path: ["api/v1/features/%1$s/archive", id],
              model: Stigg::Models::V1::Events::FeatureArchiveFeatureResponse,
              options: params[:request_options]
            )
          end

          # Creates a new feature with the specified type, metering, and configuration.
          #
          # @overload create_feature(id:, display_name:, feature_type:, description: nil, enum_configuration: nil, feature_status: nil, feature_units: nil, feature_units_plural: nil, metadata: nil, meter_type: nil, unit_transformation: nil, request_options: {})
          #
          # @param id [String] The unique identifier for the feature
          #
          # @param display_name [String] The display name for the feature
          #
          # @param feature_type [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::FeatureType] The type of the feature
          #
          # @param description [String] The description for the feature
          #
          # @param enum_configuration [Array<Stigg::Models::V1::Events::FeatureCreateFeatureParams::EnumConfiguration>] The configuration data for the feature
          #
          # @param feature_status [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::FeatureStatus] The status of the feature
          #
          # @param feature_units [String] The units for the feature
          #
          # @param feature_units_plural [String] The plural units for the feature
          #
          # @param metadata [Hash{Symbol=>String}] The additional metadata for the feature
          #
          # @param meter_type [Symbol, Stigg::Models::V1::Events::FeatureCreateFeatureParams::MeterType] The meter type for the feature
          #
          # @param unit_transformation [Stigg::Models::V1::Events::FeatureCreateFeatureParams::UnitTransformation, nil] Unit transformation to be applied to the reported usage
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::FeatureCreateFeatureResponse]
          #
          # @see Stigg::Models::V1::Events::FeatureCreateFeatureParams
          def create_feature(params)
            parsed, options = Stigg::V1::Events::FeatureCreateFeatureParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/features",
              body: parsed,
              model: Stigg::Models::V1::Events::FeatureCreateFeatureResponse,
              options: options
            )
          end

          # Retrieves a paginated list of features in the environment.
          #
          # @overload list_features(id: nil, after: nil, before: nil, created_at: nil, feature_type: nil, limit: nil, meter_type: nil, status: nil, request_options: {})
          #
          # @param id [String] Filter by entity ID
          #
          # @param after [String] Return items that come after this cursor
          #
          # @param before [String] Return items that come before this cursor
          #
          # @param created_at [Stigg::Models::V1::Events::FeatureListFeaturesParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
          #
          # @param feature_type [String] Filter by feature type. Supports comma-separated values for multiple types
          #
          # @param limit [Integer] Maximum number of items to return
          #
          # @param meter_type [String] Filter by meter type. Supports comma-separated values for multiple types
          #
          # @param status [String] Filter by feature status. Supports comma-separated values for multiple statuses
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::FeatureListFeaturesResponse>]
          #
          # @see Stigg::Models::V1::Events::FeatureListFeaturesParams
          def list_features(params = {})
            parsed, options = Stigg::V1::Events::FeatureListFeaturesParams.dump_request(params)
            @client.request(
              method: :get,
              path: "api/v1/features",
              query: parsed.transform_keys(
                created_at: "createdAt",
                feature_type: "featureType",
                meter_type: "meterType"
              ),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1::Events::FeatureListFeaturesResponse,
              options: options
            )
          end

          # Retrieves a feature by its unique identifier.
          #
          # @overload retrieve_feature(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::FeatureRetrieveFeatureResponse]
          #
          # @see Stigg::Models::V1::Events::FeatureRetrieveFeatureParams
          def retrieve_feature(id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/features/%1$s", id],
              model: Stigg::Models::V1::Events::FeatureRetrieveFeatureResponse,
              options: params[:request_options]
            )
          end

          # Restores an archived feature, allowing it to be used in entitlements again.
          #
          # @overload unarchive_feature(id, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::FeatureUnarchiveFeatureResponse]
          #
          # @see Stigg::Models::V1::Events::FeatureUnarchiveFeatureParams
          def unarchive_feature(id, params = {})
            @client.request(
              method: :post,
              path: ["api/v1/features/%1$s/unarchive", id],
              model: Stigg::Models::V1::Events::FeatureUnarchiveFeatureResponse,
              options: params[:request_options]
            )
          end

          # Updates an existing feature's properties such as display name, description, and
          # configuration.
          #
          # @overload update_feature(id, description: nil, display_name: nil, enum_configuration: nil, feature_units: nil, feature_units_plural: nil, metadata: nil, meter: nil, unit_transformation: nil, request_options: {})
          #
          # @param id [String] The unique identifier of the entity
          #
          # @param description [String] The description for the feature
          #
          # @param display_name [String] The display name for the feature
          #
          # @param enum_configuration [Array<Stigg::Models::V1::Events::FeatureUpdateFeatureParams::EnumConfiguration>] The configuration data for the feature
          #
          # @param feature_units [String] The units for the feature
          #
          # @param feature_units_plural [String] The plural units for the feature
          #
          # @param metadata [Hash{Symbol=>String}] The additional metadata for the feature
          #
          # @param meter [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::Meter]
          #
          # @param unit_transformation [Stigg::Models::V1::Events::FeatureUpdateFeatureParams::UnitTransformation, nil] Unit transformation to be applied to the reported usage
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1::Events::FeatureUpdateFeatureResponse]
          #
          # @see Stigg::Models::V1::Events::FeatureUpdateFeatureParams
          def update_feature(id, params = {})
            parsed, options = Stigg::V1::Events::FeatureUpdateFeatureParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["api/v1/features/%1$s", id],
              body: parsed,
              model: Stigg::Models::V1::Events::FeatureUpdateFeatureResponse,
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
end
