# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Credits#get_usage
        class CreditGetUsageResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Credit usage data grouped by feature with time-series points
          #
          #   @return [Stigg::Models::V1::Events::CreditGetUsageResponse::Data]
          required :data, -> { Stigg::Models::V1::Events::CreditGetUsageResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::CreditGetUsageResponse::Data] Credit usage data grouped by feature with time-series points

          # @see Stigg::Models::V1::Events::CreditGetUsageResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute currency
            #   The custom currency used for credit measurement
            #
            #   @return [Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency, nil]
            required :currency, -> { Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency }, nil?: true

            # @!attribute series
            #   Credit usage series grouped by feature
            #
            #   @return [Array<Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series>]
            required :series,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series] }

            # @!method initialize(currency:, series:)
            #   Credit usage data grouped by feature with time-series points
            #
            #   @param currency [Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency, nil] The custom currency used for credit measurement
            #
            #   @param series [Array<Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series>] Credit usage series grouped by feature

            # @see Stigg::Models::V1::Events::CreditGetUsageResponse::Data#currency
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

            class Series < Stigg::Internal::Type::BaseModel
              # @!attribute feature_id
              #   The feature ID
              #
              #   @return [String]
              required :feature_id, String, api_name: :featureId

              # @!attribute feature_name
              #   The display name of the feature
              #
              #   @return [String]
              required :feature_name, String, api_name: :featureName

              # @!attribute points
              #   Time-series data points for this feature
              #
              #   @return [Array<Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::Point>]
              required :points,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::Point] }

              # @!attribute total_credits
              #   Total credits consumed by this feature in the time range
              #
              #   @return [Float]
              required :total_credits, Float, api_name: :totalCredits

              # @!method initialize(feature_id:, feature_name:, points:, total_credits:)
              #   Credit usage data for a single feature
              #
              #   @param feature_id [String] The feature ID
              #
              #   @param feature_name [String] The display name of the feature
              #
              #   @param points [Array<Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::Point>] Time-series data points for this feature
              #
              #   @param total_credits [Float] Total credits consumed by this feature in the time range

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
            end
          end
        end
      end
    end
  end
end
