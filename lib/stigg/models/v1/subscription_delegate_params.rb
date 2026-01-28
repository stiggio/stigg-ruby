# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#delegate
      class SubscriptionDelegateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute target_customer_id
        #   The unique identifier of the customer who will assume payment responsibility for
        #   this subscription. This customer must already exist in your Stigg account and
        #   have a valid payment method if the subscription requires payment.
        #
        #   @return [String]
        required :target_customer_id, String, api_name: :targetCustomerId

        # @!method initialize(target_customer_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::SubscriptionDelegateParams} for more details.
        #
        #   @param target_customer_id [String] The unique identifier of the customer who will assume payment responsibility for
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
