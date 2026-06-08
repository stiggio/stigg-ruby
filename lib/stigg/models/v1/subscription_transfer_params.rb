# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#transfer
      class SubscriptionTransferParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute destination_resource_id
        #   Resource ID to transfer the subscription to
        #
        #   @return [String]
        required :destination_resource_id, String, api_name: :destinationResourceId

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(id:, destination_resource_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param id [String]
        #
        #   @param destination_resource_id [String] Resource ID to transfer the subscription to
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
