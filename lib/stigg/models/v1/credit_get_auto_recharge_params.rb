# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Credits#get_auto_recharge
      class CreditGetAutoRechargeParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute currency_id
        #   Filter by currency ID (required)
        #
        #   @return [String]
        required :currency_id, String

        # @!attribute customer_id
        #   Filter by customer ID (required)
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(currency_id:, customer_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param currency_id [String] Filter by currency ID (required)
        #
        #   @param customer_id [String] Filter by customer ID (required)
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
