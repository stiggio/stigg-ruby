# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#transfer
      class SubscriptionTransferParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute destination_resource_id
        #   Resource ID to transfer the subscription to
        #
        #   @return [String]
        required :destination_resource_id, String, api_name: :destinationResourceId

        # @!method initialize(destination_resource_id:, request_options: {})
        #   @param destination_resource_id [String] Resource ID to transfer the subscription to
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
