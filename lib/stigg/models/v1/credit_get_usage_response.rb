# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Credits#get_usage
      class CreditGetUsageResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Credit usage data grouped by feature with time-series points
        #
        #   @return [Stigg::Models::V1::CreditGetUsageResponse::Data]
        required :data, -> { Stigg::Models::V1::CreditGetUsageResponse::Data }

        # @!method initialize(data:)
        #   Response object
        #
        #   @param data [Stigg::Models::V1::CreditGetUsageResponse::Data] Credit usage data grouped by feature with time-series points

        # @see Stigg::Models::V1::CreditGetUsageResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute currency
          #   The custom currency used for credit measurement
          #
          #   @return [Stigg::Models::V1::CreditGetUsageResponse::Data::Currency, nil]
          required :currency, -> { Stigg::Models::V1::CreditGetUsageResponse::Data::Currency }, nil?: true

          # @!attribute pagination
          #   Cursor-based pagination for the returned series. `next`/`prev` are opaque
          #   cursors; pass them back as `after`/`before` to traverse pages. The series axis
          #   is `groupBy` when provided, otherwise `featureId`
          #
          #   @return [Stigg::Models::V1::CreditGetUsageResponse::Data::Pagination]
          required :pagination, -> { Stigg::Models::V1::CreditGetUsageResponse::Data::Pagination }

          # @!attribute series
          #   Credit usage series grouped by feature
          #
          #   @return [Array<Stigg::Models::V1::CreditGetUsageResponse::Data::Series>]
          required :series,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CreditGetUsageResponse::Data::Series] }

          # @!method initialize(currency:, pagination:, series:)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::CreditGetUsageResponse::Data} for more details.
          #
          #   Credit usage data grouped by feature with time-series points
          #
          #   @param currency [Stigg::Models::V1::CreditGetUsageResponse::Data::Currency, nil] The custom currency used for credit measurement
          #
          #   @param pagination [Stigg::Models::V1::CreditGetUsageResponse::Data::Pagination] Cursor-based pagination for the returned series. `next`/`prev` are opaque cursor
          #
          #   @param series [Array<Stigg::Models::V1::CreditGetUsageResponse::Data::Series>] Credit usage series grouped by feature

          # @see Stigg::Models::V1::CreditGetUsageResponse::Data#currency
          class Currency < Stigg::Internal::Type::BaseModel
            # @!attribute currency_id
            #   The currency identifier
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute display_name
            #   The display name of the currency
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute plural
            #   Plural unit label
            #
            #   @return [String, nil]
            required :plural, String, nil?: true

            # @!attribute singular
            #   Singular unit label
            #
            #   @return [String, nil]
            required :singular, String, nil?: true

            # @!attribute symbol
            #   The currency symbol
            #
            #   @return [String, nil]
            required :symbol, String, nil?: true

            # @!method initialize(currency_id:, display_name:, plural:, singular:, symbol:)
            #   The custom currency used for credit measurement
            #
            #   @param currency_id [String] The currency identifier
            #
            #   @param display_name [String] The display name of the currency
            #
            #   @param plural [String, nil] Plural unit label
            #
            #   @param singular [String, nil] Singular unit label
            #
            #   @param symbol [String, nil] The currency symbol
          end

          # @see Stigg::Models::V1::CreditGetUsageResponse::Data#pagination
          class Pagination < Stigg::Internal::Type::BaseModel
            # @!attribute next_
            #   Cursor for fetching the next page of results, or null if no additional pages
            #   exist
            #
            #   @return [String, nil]
            required :next_, String, api_name: :next, nil?: true

            # @!attribute prev
            #   Cursor for fetching the previous page of results, or null if at the beginning
            #
            #   @return [String, nil]
            required :prev, String, nil?: true

            # @!method initialize(next_:, prev:)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::CreditGetUsageResponse::Data::Pagination} for more details.
            #
            #   Cursor-based pagination for the returned series. `next`/`prev` are opaque
            #   cursors; pass them back as `after`/`before` to traverse pages. The series axis
            #   is `groupBy` when provided, otherwise `featureId`
            #
            #   @param next_ [String, nil] Cursor for fetching the next page of results, or null if no additional pages exi
            #
            #   @param prev [String, nil] Cursor for fetching the previous page of results, or null if at the beginning
          end

          class Series < Stigg::Internal::Type::BaseModel
            # @!attribute feature_id
            #   The feature ID; null when grouping by dimensions only
            #
            #   @return [String, nil]
            required :feature_id, String, api_name: :featureId, nil?: true

            # @!attribute feature_name
            #   The display name of the feature; null when grouping by dimensions only
            #
            #   @return [String, nil]
            required :feature_name, String, api_name: :featureName, nil?: true

            # @!attribute points
            #   Time-series data points for this feature
            #
            #   @return [Array<Stigg::Models::V1::CreditGetUsageResponse::Data::Series::Point>]
            required :points,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CreditGetUsageResponse::Data::Series::Point] }

            # @!attribute total_credits
            #   Total credits consumed by this feature in the time range
            #
            #   @return [Float]
            required :total_credits, Float, api_name: :totalCredits

            # @!attribute tags
            #   Dimension key/value pairs identifying this series when groupBy is applied
            #
            #   @return [Array<Stigg::Models::V1::CreditGetUsageResponse::Data::Series::Tag>, nil]
            optional :tags,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CreditGetUsageResponse::Data::Series::Tag] }

            # @!method initialize(feature_id:, feature_name:, points:, total_credits:, tags: nil)
            #   Credit usage data for a single feature
            #
            #   @param feature_id [String, nil] The feature ID; null when grouping by dimensions only
            #
            #   @param feature_name [String, nil] The display name of the feature; null when grouping by dimensions only
            #
            #   @param points [Array<Stigg::Models::V1::CreditGetUsageResponse::Data::Series::Point>] Time-series data points for this feature
            #
            #   @param total_credits [Float] Total credits consumed by this feature in the time range
            #
            #   @param tags [Array<Stigg::Models::V1::CreditGetUsageResponse::Data::Series::Tag>] Dimension key/value pairs identifying this series when groupBy is applied

            class Point < Stigg::Internal::Type::BaseModel
              # @!attribute timestamp
              #   The timestamp of the data point
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute value
              #   The credit usage value at this point
              #
              #   @return [Float]
              required :value, Float

              # @!method initialize(timestamp:, value:)
              #   A single data point in the credit usage time series
              #
              #   @param timestamp [Time] The timestamp of the data point
              #
              #   @param value [Float] The credit usage value at this point
            end

            class Tag < Stigg::Internal::Type::BaseModel
              # @!attribute key
              #   The dimension key
              #
              #   @return [String]
              required :key, String

              # @!attribute value
              #   The dimension value for this series
              #
              #   @return [String]
              required :value, String

              # @!method initialize(key:, value:)
              #   Dimension key/value pair identifying a credit usage series
              #
              #   @param key [String] The dimension key
              #
              #   @param value [String] The dimension value for this series
            end
          end
        end
      end
    end
  end
end
