# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#transfer
      class SubscriptionTransferParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute destination_resource_id
        #   The resource ID to transfer the subscription to. The destination resource must
        #   belong to the same customer.
        #
        #   @return [String]
        required :destination_resource_id, String, api_name: :destinationResourceId

        # @!method initialize(destination_resource_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::SubscriptionTransferParams} for more details.
        #
        #   @param destination_resource_id [String] The resource ID to transfer the subscription to. The destination resource must b
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
