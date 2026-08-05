# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Events#estimate
      class EventEstimateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   Customer id
        #
        #   @return [String]
        required :customer_id, String, api_name: :customerId

        # @!attribute event_name
        #   The name of the usage event
        #
        #   @return [String]
        required :event_name, String, api_name: :eventName

        # @!attribute dimensions
        #   Dimensions associated with the usage event
        #
        #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
        optional :dimensions,
                 -> { Stigg::Internal::Type::HashOf[union: Stigg::V1::EventEstimateParams::Dimension] }

        # @!attribute resource_id
        #   Resource id
        #
        #   @return [String, nil]
        optional :resource_id, String, api_name: :resourceId, nil?: true

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(customer_id:, event_name:, dimensions: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param customer_id [String] Customer id
        #
        #   @param event_name [String] The name of the usage event
        #
        #   @param dimensions [Hash{Symbol=>String, Float, Boolean}] Dimensions associated with the usage event
        #
        #   @param resource_id [String, nil] Resource id
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        module Dimension
          extend Stigg::Internal::Type::Union

          variant String

          variant Float

          variant Stigg::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Float, Boolean)]
        end
      end
    end
  end
end
