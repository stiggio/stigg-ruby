# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::PromotionalEntitlements#list
        class PromotionalEntitlementListParams < Stigg::Internal::Type::BaseModel
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
          #   @return [Stigg::Models::V1::Customers::PromotionalEntitlementListParams::CreatedAt, nil]
          optional :created_at, -> { Stigg::V1::Customers::PromotionalEntitlementListParams::CreatedAt }

          # @!attribute limit
          #   Maximum number of items to return
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute status
          #   Filter by promotional entitlement status. Supports comma-separated values for
          #   multiple statuses
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(after: nil, before: nil, created_at: nil, limit: nil, status: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Customers::PromotionalEntitlementListParams} for more
          #   details.
          #
          #   @param after [String] Return items that come after this cursor
          #
          #   @param before [String] Return items that come before this cursor
          #
          #   @param created_at [Stigg::Models::V1::Customers::PromotionalEntitlementListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
          #
          #   @param limit [Integer] Maximum number of items to return
          #
          #   @param status [String] Filter by promotional entitlement status. Supports comma-separated values for mu
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
end
