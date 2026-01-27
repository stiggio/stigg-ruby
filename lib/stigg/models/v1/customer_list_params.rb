# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list
      class CustomerListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute after
        #   Starting after this UUID for pagination
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Ending before this UUID for pagination
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute limit
        #   Items per page
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, before: nil, limit: nil, request_options: {})
        #   @param after [String] Starting after this UUID for pagination
        #
        #   @param before [String] Ending before this UUID for pagination
        #
        #   @param limit [Integer] Items per page
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
