# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Subscriptions#list
      class SubscriptionListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute after
        #   Return items that come after this cursor
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Return items that come before this cursor
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute customer_id
        #   Filter by customer ID
        #
        #   @return [String, nil]
        optional :customer_id, String

        # @!attribute limit
        #   Maximum number of items to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute status
        #   Filter by status (comma-separated)
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(after: nil, before: nil, customer_id: nil, limit: nil, status: nil, request_options: {})
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param customer_id [String] Filter by customer ID
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param status [String] Filter by status (comma-separated)
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
