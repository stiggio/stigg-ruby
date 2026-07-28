# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Contracts#list
      class ContractListParams < Stigg::Internal::Type::BaseModel
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

        # @!attribute customer_external_id
        #   Filter by the exact external ID of the customer the contract belongs to
        #
        #   @return [String, nil]
        optional :customer_external_id, String

        # @!attribute limit
        #   Maximum number of items to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #   Filter by exact contract name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute state
        #   Filter by contract state. Supports comma-separated values for multiple states
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(after: nil, before: nil, customer_external_id: nil, limit: nil, name: nil, state: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param customer_external_id [String] Filter by the exact external ID of the customer the contract belongs to
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param name [String] Filter by exact contract name
        #
        #   @param state [String] Filter by contract state. Supports comma-separated values for multiple states
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
