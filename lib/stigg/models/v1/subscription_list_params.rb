# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#list
      class SubscriptionListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute customer_id
        #   Filter by customer ID
        #
        #   @return [String, nil]
        optional :customer_id, String

        # @!attribute ending_before
        #   Ending before this UUID for pagination
        #
        #   @return [String, nil]
        optional :ending_before, String

        # @!attribute limit
        #   Items per page
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute starting_after
        #   Starting after this UUID for pagination
        #
        #   @return [String, nil]
        optional :starting_after, String

        # @!attribute status
        #   Filter by subscription status (comma-separated for multiple statuses, e.g.,
        #   ACTIVE,IN_TRIAL)
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(customer_id: nil, ending_before: nil, limit: nil, starting_after: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::SubscriptionListParams} for more details.
        #
        #   @param customer_id [String] Filter by customer ID
        #
        #   @param ending_before [String] Ending before this UUID for pagination
        #
        #   @param limit [Integer] Items per page
        #
        #   @param starting_after [String] Starting after this UUID for pagination
        #
        #   @param status [String] Filter by subscription status (comma-separated for multiple statuses, e.g., ACTI
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
