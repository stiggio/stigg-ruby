# frozen_string_literal: true

module Stigg
  module Models
    module V2
      # @see Stigg::Resources::V2::Customers#retrieve
      class CustomerRetrieveParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute x_api_key
        #
        #   @return [String]
        required :x_api_key, String

        # @!attribute x_environment_id
        #
        #   @return [String]
        required :x_environment_id, String

        # @!method initialize(x_api_key:, x_environment_id:, request_options: {})
        #   @param x_api_key [String]
        #   @param x_environment_id [String]
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
