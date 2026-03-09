# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::Credits#get_auto_recharge
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

          # @!method initialize(currency_id:, customer_id:, request_options: {})
          #   @param currency_id [String] Filter by currency ID (required)
          #
          #   @param customer_id [String] Filter by customer ID (required)
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
