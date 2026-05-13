# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Credits
          # @see Stigg::Resources::V1::Events::Credits::CustomCurrencies#archive
          class CustomCurrencyArchiveParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute currency_id
            #
            #   @return [String]
            required :currency_id, String

            # @!method initialize(currency_id:, request_options: {})
            #   @param currency_id [String]
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
