# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list_resources
      class CustomerListResourcesResponse < Stigg::Internal::Type::BaseModel
        # @!attribute id
        #   Resource slug
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the record was created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute updated_at
        #   Timestamp of when the record was last updated
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, created_at:, updated_at:)
        #   Resource object that belongs to a customer
        #
        #   @param id [String] Resource slug
        #
        #   @param created_at [Time] Timestamp of when the record was created
        #
        #   @param updated_at [Time] Timestamp of when the record was last updated
      end
    end
  end
end
