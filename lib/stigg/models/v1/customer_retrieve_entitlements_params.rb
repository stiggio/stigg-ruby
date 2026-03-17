# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#retrieve_entitlements
      class CustomerRetrieveEntitlementsParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute resource_id
        #   Resource ID to scope entitlements to a specific resource
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!method initialize(id:, resource_id: nil, request_options: {})
        #   @param id [String]
        #
        #   @param resource_id [String] Resource ID to scope entitlements to a specific resource
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
