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

        # @!attribute created_at
        #   Filter by creation date using range operators: gt, gte, lt, lte
        #
        #   @return [Stigg::Models::V1::SubscriptionListParams::CreatedAt, nil]
        optional :created_at, -> { Stigg::V1::SubscriptionListParams::CreatedAt }

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

        # @!attribute plan_id
        #   Filter by plan ID
        #
        #   @return [String, nil]
        optional :plan_id, String

        # @!attribute pricing_type
        #   Filter by pricing type. Supports comma-separated values for multiple types
        #
        #   @return [String, nil]
        optional :pricing_type, String

        # @!attribute resource_id
        #   Filter by resource ID
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!attribute status
        #   Filter by subscription status. Supports comma-separated values for multiple
        #   statuses
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(after: nil, before: nil, created_at: nil, customer_id: nil, limit: nil, plan_id: nil, pricing_type: nil, resource_id: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::SubscriptionListParams} for more details.
        #
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param created_at [Stigg::Models::V1::SubscriptionListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
        #
        #   @param customer_id [String] Filter by customer ID
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param plan_id [String] Filter by plan ID
        #
        #   @param pricing_type [String] Filter by pricing type. Supports comma-separated values for multiple types
        #
        #   @param resource_id [String] Filter by resource ID
        #
        #   @param status [String] Filter by subscription status. Supports comma-separated values for multiple stat
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class CreatedAt < Stigg::Internal::Type::BaseModel
          # @!attribute gt
          #   Greater than the specified createdAt value
          #
          #   @return [Time, nil]
          optional :gt, Time

          # @!attribute gte
          #   Greater than or equal to the specified createdAt value
          #
          #   @return [Time, nil]
          optional :gte, Time

          # @!attribute lt
          #   Less than the specified createdAt value
          #
          #   @return [Time, nil]
          optional :lt, Time

          # @!attribute lte
          #   Less than or equal to the specified createdAt value
          #
          #   @return [Time, nil]
          optional :lte, Time

          # @!method initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          #   Filter by creation date using range operators: gt, gte, lt, lte
          #
          #   @param gt [Time] Greater than the specified createdAt value
          #
          #   @param gte [Time] Greater than or equal to the specified createdAt value
          #
          #   @param lt [Time] Less than the specified createdAt value
          #
          #   @param lte [Time] Less than or equal to the specified createdAt value
        end
      end
    end
  end
end
