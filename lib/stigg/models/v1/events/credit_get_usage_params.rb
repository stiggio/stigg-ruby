# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Credits#get_usage
        class CreditGetUsageParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute customer_id
          #   Filter by customer ID (required)
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute currency_id
          #   Filter by currency ID
          #
          #   @return [String, nil]
          optional :currency_id, String

          # @!attribute end_date
          #   End date for the credit usage time range (ISO 8601). Defaults to now when
          #   startDate is provided
          #
          #   @return [Time, nil]
          optional :end_date, Time

          # @!attribute resource_id
          #   Filter by resource ID
          #
          #   @return [String, nil]
          optional :resource_id, String

          # @!attribute start_date
          #   Start date for the credit usage time range (ISO 8601). Takes precedence over
          #   timeRange when provided
          #
          #   @return [Time, nil]
          optional :start_date, Time

          # @!attribute time_range
          #   Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
          #   to LAST_MONTH
          #
          #   @return [Symbol, Stigg::Models::V1::Events::CreditGetUsageParams::TimeRange, nil]
          optional :time_range, enum: -> { Stigg::V1::Events::CreditGetUsageParams::TimeRange }

          # @!method initialize(customer_id:, currency_id: nil, end_date: nil, resource_id: nil, start_date: nil, time_range: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Events::CreditGetUsageParams} for more details.
          #
          #   @param customer_id [String] Filter by customer ID (required)
          #
          #   @param currency_id [String] Filter by currency ID
          #
          #   @param end_date [Time] End date for the credit usage time range (ISO 8601). Defaults to now when startD
          #
          #   @param resource_id [String] Filter by resource ID
          #
          #   @param start_date [Time] Start date for the credit usage time range (ISO 8601). Takes precedence over tim
          #
          #   @param time_range [Symbol, Stigg::Models::V1::Events::CreditGetUsageParams::TimeRange] Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # Time range for usage data (LAST_DAY, LAST_WEEK, LAST_MONTH, LAST_YEAR). Defaults
          # to LAST_MONTH
          module TimeRange
            extend Stigg::Internal::Type::Enum

            LAST_DAY = :LAST_DAY
            LAST_WEEK = :LAST_WEEK
            LAST_MONTH = :LAST_MONTH
            LAST_YEAR = :LAST_YEAR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
