# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Features#list_features
      class FeatureListFeaturesParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #   Filter by entity ID
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute after
        #   Return items that come after this cursor
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Return items that come before this cursor
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute created_at
        #   Filter by creation date using range operators: gt, gte, lt, lte
        #
        #   @return [Stigg::Models::V1::FeatureListFeaturesParams::CreatedAt, nil]
        optional :created_at, -> { Stigg::V1::FeatureListFeaturesParams::CreatedAt }

        # @!attribute feature_type
        #   Filter by feature type. Supports comma-separated values for multiple types
        #
        #   @return [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::FeatureType>, nil]
        optional :feature_type,
                 -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::V1::FeatureListFeaturesParams::FeatureType] }

        # @!attribute limit
        #   Maximum number of items to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute meter_type
        #   Filter by meter type. Supports comma-separated values for multiple types
        #
        #   @return [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::MeterType>, nil]
        optional :meter_type,
                 -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::V1::FeatureListFeaturesParams::MeterType] }

        # @!attribute status
        #   Filter by feature status. Supports comma-separated values for multiple statuses
        #
        #   @return [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::Status>, nil]
        optional :status,
                 -> { Stigg::Internal::Type::ArrayOf[enum: Stigg::V1::FeatureListFeaturesParams::Status] }

        # @!method initialize(id: nil, after: nil, before: nil, created_at: nil, feature_type: nil, limit: nil, meter_type: nil, status: nil, request_options: {})
        #   @param id [String] Filter by entity ID
        #
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param created_at [Stigg::Models::V1::FeatureListFeaturesParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
        #
        #   @param feature_type [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::FeatureType>] Filter by feature type. Supports comma-separated values for multiple types
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param meter_type [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::MeterType>] Filter by meter type. Supports comma-separated values for multiple types
        #
        #   @param status [Array<Symbol, Stigg::Models::V1::FeatureListFeaturesParams::Status>] Filter by feature status. Supports comma-separated values for multiple statuses
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class CreatedAt < Stigg::Internal::Type::BaseModel
          # @!attribute gt
          #   Greater than the specified createdAt value
          #
          #   @return [Time, nil]
          optional :gt, Time

          # @!attribute gte
          #   Greater than or equal to the specified createdAt value
          #
          #   @return [Time, nil]
          optional :gte, Time

          # @!attribute lt
          #   Less than the specified createdAt value
          #
          #   @return [Time, nil]
          optional :lt, Time

          # @!attribute lte
          #   Less than or equal to the specified createdAt value
          #
          #   @return [Time, nil]
          optional :lte, Time

          # @!method initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          #   Filter by creation date using range operators: gt, gte, lt, lte
          #
          #   @param gt [Time] Greater than the specified createdAt value
          #
          #   @param gte [Time] Greater than or equal to the specified createdAt value
          #
          #   @param lt [Time] Less than the specified createdAt value
          #
          #   @param lte [Time] Less than or equal to the specified createdAt value
        end

        module FeatureType
          extend Stigg::Internal::Type::Enum

          BOOLEAN = :BOOLEAN
          NUMBER = :NUMBER
          ENUM = :ENUM

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module MeterType
          extend Stigg::Internal::Type::Enum

          NONE = :None
          FLUCTUATING = :FLUCTUATING
          INCREMENTAL = :INCREMENTAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Status
          extend Stigg::Internal::Type::Enum

          NEW = :NEW
          SUSPENDED = :SUSPENDED
          ACTIVE = :ACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
