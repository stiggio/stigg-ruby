# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Credits#list_ledger
      class CreditListLedgerParams < Stigg::Internal::Type::BaseModel
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
        #   Filter by resource ID
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(customer_id:, after: nil, before: nil, currency_id: nil, limit: nil, resource_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param customer_id [String] Filter by customer ID (required)
        #
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param currency_id [String] Filter by currency ID
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param resource_id [String] Filter by resource ID
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
