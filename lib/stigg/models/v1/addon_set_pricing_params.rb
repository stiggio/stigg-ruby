# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Addons#set_pricing
      class AddonSetPricingParams < Stigg::Models::V1::SetPackagePricing
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:, request_options: {})
        #   @param id [String]
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
