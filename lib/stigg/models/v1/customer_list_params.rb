# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list
      class CustomerListParams < Stigg::Internal::Type::BaseModel
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
        #   @return [Stigg::Models::V1::CustomerListParams::CreatedAt, nil]
        optional :created_at, -> { Stigg::V1::CustomerListParams::CreatedAt }

        # @!attribute email
        #   Filter by exact customer email address
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute limit
        #   Maximum number of items to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #   Filter by exact customer name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(after: nil, before: nil, created_at: nil, email: nil, limit: nil, name: nil, request_options: {})
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param created_at [Stigg::Models::V1::CustomerListParams::CreatedAt] Filter by creation date using range operators: gt, gte, lt, lte
        #
        #   @param email [String] Filter by exact customer email address
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param name [String] Filter by exact customer name
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
