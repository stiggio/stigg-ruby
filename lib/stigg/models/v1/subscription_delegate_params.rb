# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#delegate
      class SubscriptionDelegateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute target_customer_id
        #   The customer ID to delegate the subscription to
        #
        #   @return [String]
        required :target_customer_id, String, api_name: :targetCustomerId

        # @!method initialize(target_customer_id:, request_options: {})
        #   @param target_customer_id [String] The customer ID to delegate the subscription to
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
