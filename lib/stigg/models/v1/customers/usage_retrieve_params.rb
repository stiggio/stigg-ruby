# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::Usage#retrieve
        class UsageRetrieveParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

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

          # @!attribute resource_id
          #   Resource id
          #
          #   @return [String, nil]
          optional :resource_id, String, nil?: true

          # @!method initialize(customer_id:, start_date:, end_date: nil, group_by: nil, resource_id: nil, request_options: {})
          #   @param customer_id [String]
          #
          #   @param start_date [Time] The start date of the range
          #
          #   @param end_date [Time] The end date of the range
          #
          #   @param group_by [String]
          #
          #   @param resource_id [String, nil] Resource id
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
