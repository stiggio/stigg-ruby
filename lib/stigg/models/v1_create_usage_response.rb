# frozen_string_literal: true

module Stigg
  module Models
    # @see Stigg::Resources::V1#create_usage
    class V1CreateUsageResponse < Stigg::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Stigg::Models::V1CreateUsageResponse::Data>]
      required :data, -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1CreateUsageResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Stigg::Models::V1CreateUsageResponse::Data>]

      class Data < Stigg::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the entity
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the record was created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute customer_id
        #   Customer id
        #
        #   @return [String]
        required :customer_id, String, api_name: :customerId

        # @!attribute feature_id
        #   Feature id
        #
        #   @return [String]
        required :feature_id, String, api_name: :featureId

        # @!attribute timestamp
        #   Timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute value
        #   The usage measurement record
        #
        #   @return [Float]
        required :value, Float

        # @!attribute current_usage
        #   The current measured usage value
        #
        #   @return [Float, nil]
        optional :current_usage, Float, api_name: :currentUsage, nil?: true

        # @!attribute next_reset_date
        #   The date when the next usage reset will occur
        #
        #   @return [Time, nil]
        optional :next_reset_date, Time, api_name: :nextResetDate, nil?: true

        # @!attribute resource_id
        #   Resource id
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId, nil?: true

        # @!attribute usage_period_end
        #   The end date of the usage period in which this measurement resides (for
        #   entitlements with a reset period)
        #
        #   @return [Time, nil]
        optional :usage_period_end, Time, api_name: :usagePeriodEnd, nil?: true

        # @!attribute usage_period_start
        #   The start date of the usage period in which this measurement resides (for
        #   entitlements with a reset period)
        #
        #   @return [Time, nil]
        optional :usage_period_start, Time, api_name: :usagePeriodStart, nil?: true

        # @!method initialize(id:, created_at:, customer_id:, feature_id:, timestamp:, value:, current_usage: nil, next_reset_date: nil, resource_id: nil, usage_period_end: nil, usage_period_start: nil)
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1CreateUsageResponse::Data} for more details.
        #
        #   @param id [String] Unique identifier for the entity
        #
        #   @param created_at [Time] Timestamp of when the record was created
        #
        #   @param customer_id [String] Customer id
        #
        #   @param feature_id [String] Feature id
        #
        #   @param timestamp [Time] Timestamp
        #
        #   @param value [Float] The usage measurement record
        #
        #   @param current_usage [Float, nil] The current measured usage value
        #
        #   @param next_reset_date [Time, nil] The date when the next usage reset will occur
        #
        #   @param resource_id [String, nil] Resource id
        #
        #   @param usage_period_end [Time, nil] The end date of the usage period in which this measurement resides (for entitlem
        #
        #   @param usage_period_start [Time, nil] The start date of the usage period in which this measurement resides (for entitl
      end
    end
  end
end
