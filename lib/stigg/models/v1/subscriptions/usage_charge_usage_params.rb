# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Subscriptions
        # @see Stigg::Resources::V1::Subscriptions::Usage#charge_usage
        class UsageChargeUsageParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute until_date
          #   Cutoff date for usage calculation. If not provided, the current time is used.
          #
          #   @return [Time, nil]
          optional :until_date, Time, api_name: :untilDate

          # @!method initialize(until_date: nil, request_options: {})
          #   @param until_date [Time] Cutoff date for usage calculation. If not provided, the current time is used.
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
