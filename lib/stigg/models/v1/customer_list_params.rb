# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list
      class CustomerListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

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

        # @!method initialize(ending_before: nil, limit: nil, starting_after: nil, request_options: {})
        #   @param ending_before [String] Ending before this UUID for pagination
        #
        #   @param limit [Integer] Items per page
        #
        #   @param starting_after [String] Starting after this UUID for pagination
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
