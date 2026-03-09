# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Credits
          # @see Stigg::Resources::V1::Events::Credits::Grants#list
          class GrantListParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute customer_id
            #   Filter by customer ID (required)
            #
            #   @return [String]
            required :customer_id, String

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
            #   @return [Stigg::Models::V1::Events::Credits::GrantListParams::CreatedAt, nil]
            optional :created_at, -> { Stigg::V1::Events::Credits::GrantListParams::CreatedAt }

            # @!attribute currency_id
            #   Filter by currency ID
            #
            #   @return [String, nil]
            optional :currency_id, String

            # @!attribute limit
            #   Maximum number of items to return
            #
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!attribute resource_id
            #   Filter by resource ID. When omitted, only grants without a resource are returned
            #
            #   @return [String, nil]
            optional :resource_id, String

            # @!method initialize(customer_id:, after: nil, before: nil, created_at: nil, currency_id: nil, limit: nil, resource_id: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::V1::Events::Credits::GrantListParams} for more details.
            #
            #   @param customer_id [String] Filter by customer ID (required)
            #
            #   @param after [String] Return items that come after this cursor
            #
            #   @param before [String] Return items that come before this cursor
            #
            #   @param created_at [Stigg::Models::V1::Events::Credits::GrantListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
            #
            #   @param currency_id [String] Filter by currency ID
            #
            #   @param limit [Integer] Maximum number of items to return
            #
            #   @param resource_id [String] Filter by resource ID. When omitted, only grants without a resource are returned
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
end
