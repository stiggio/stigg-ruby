# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Usage#history
      class UsageHistoryResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Historical usage time series
        #
        #   @return [Stigg::Models::V1::UsageHistoryResponse::Data]
        required :data, -> { Stigg::Models::V1::UsageHistoryResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::UsageHistoryResponse::Data] Historical usage time series

        # @see Stigg::Models::V1::UsageHistoryResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute markers
          #   Markers for events that affecting feature usage
          #
          #   @return [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Marker>]
          required :markers,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::UsageHistoryResponse::Data::Marker] }

          # @!attribute series
          #   Series of usage history
          #
          #   @return [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Series>]
          required :series,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::UsageHistoryResponse::Data::Series] }

          # @!method initialize(markers:, series:)
          #   Historical usage time series
          #
          #   @param markers [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Marker>] Markers for events that affecting feature usage
          #
          #   @param series [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Series>] Series of usage history

          class Marker < Stigg::Internal::Type::BaseModel
            # @!attribute timestamp
            #   Timestamp of the marker
            #
            #   @return [Time]
            required :timestamp, Time

            # @!attribute type
            #   Type of marker for a usage history point
            #
            #   @return [Symbol, Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type]
            required :type, enum: -> { Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type }

            # @!method initialize(timestamp:, type:)
            #   Usage reset or change marker
            #
            #   @param timestamp [Time] Timestamp of the marker
            #
            #   @param type [Symbol, Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type] Type of marker for a usage history point

            # Type of marker for a usage history point
            #
            # @see Stigg::Models::V1::UsageHistoryResponse::Data::Marker#type
            module Type
              extend Stigg::Internal::Type::Enum

              PERIODIC_RESET = :PERIODIC_RESET
              SUBSCRIPTION_CHANGE_RESET = :SUBSCRIPTION_CHANGE_RESET

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Series < Stigg::Internal::Type::BaseModel
            # @!attribute points
            #   Points in the usage history series
            #
            #   @return [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point>]
            required :points,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point] }

            # @!attribute tags
            #   Tags for the usage history series
            #
            #   @return [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Series::Tag>]
            required :tags,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::UsageHistoryResponse::Data::Series::Tag] }

            # @!method initialize(points:, tags:)
            #   Usage data points with tags
            #
            #   @param points [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point>] Points in the usage history series
            #
            #   @param tags [Array<Stigg::Models::V1::UsageHistoryResponse::Data::Series::Tag>] Tags for the usage history series

            class Point < Stigg::Internal::Type::BaseModel
              # @!attribute is_reset_point
              #   Indicates whether there was usage reset in this point, see `markers` for details
              #
              #   @return [Boolean]
              required :is_reset_point, Stigg::Internal::Type::Boolean, api_name: :isResetPoint

              # @!attribute timestamp
              #   Timestamp of the usage history point
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute value
              #   Value of the usage history point
              #
              #   @return [Float]
              required :value, Float

              # @!method initialize(is_reset_point:, timestamp:, value:)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point} for more details.
              #
              #   Single usage data point
              #
              #   @param is_reset_point [Boolean] Indicates whether there was usage reset in this point, see `markers` for details
              #
              #   @param timestamp [Time] Timestamp of the usage history point
              #
              #   @param value [Float] Value of the usage history point
            end

            class Tag < Stigg::Internal::Type::BaseModel
              # @!attribute key
              #   Key of the tag
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #   Value of the tag
              #
              #   @return [String]
              required :value, String

              # @!method initialize(key:, value:)
              #   Grouping tag key-value
              #
              #   @param key [String] Key of the tag
              #
              #   @param value [String] Value of the tag
            end
          end
        end
      end
    end
  end
end
