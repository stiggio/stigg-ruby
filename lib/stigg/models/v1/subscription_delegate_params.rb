# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#delegate
      class SubscriptionDelegateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute target_customer_id
        #   The unique identifier of the customer who will assume payment responsibility for
        #   this subscription. This customer must already exist in your Stigg account and
        #   have a valid payment method if the subscription requires payment.
        #
        #   @return [String]
        required :target_customer_id, String, api_name: :targetCustomerId

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(id:, target_customer_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::SubscriptionDelegateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param target_customer_id [String] The unique identifier of the customer who will assume payment responsibility for
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
