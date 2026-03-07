# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Usage#history
      class UsageHistoryParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute feature_id
        #
        #   @return [String]
        required :feature_id, String

        # @!attribute start_date
        #   The start date of the range
        #
        #   @return [Time]
        required :start_date, Time

        # @!attribute end_date
        #   The end date of the range
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute group_by
        #
        #   @return [String, nil]
        optional :group_by, String

        # @!attribute include_historical_usage
        #   When true, includes usage data from the most recent cancelled or expired
        #   subscription
        #
        #   @return [Boolean, nil]
        optional :include_historical_usage, Stigg::Internal::Type::Boolean

        # @!attribute resource_id
        #   Resource id
        #
        #   @return [String, nil]
        optional :resource_id, String, nil?: true

        # @!method initialize(customer_id:, feature_id:, start_date:, end_date: nil, group_by: nil, include_historical_usage: nil, resource_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::UsageHistoryParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param feature_id [String]
        #
        #   @param start_date [Time] The start date of the range
        #
        #   @param end_date [Time] The end date of the range
        #
        #   @param group_by [String]
        #
        #   @param include_historical_usage [Boolean] When true, includes usage data from the most recent cancelled or expired subscri
        #
        #   @param resource_id [String, nil] Resource id
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
