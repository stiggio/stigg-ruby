# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#retrieve
      class CustomerRetrieveResponse < Stigg::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the entity
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The email of the customer
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute name
        #   The name of the customer
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!method initialize(id:, email:, name:)
        #   @param id [String] Unique identifier for the entity
        #
        #   @param email [String, nil] The email of the customer
        #
        #   @param name [String, nil] The name of the customer
      end
    end
  end
end
