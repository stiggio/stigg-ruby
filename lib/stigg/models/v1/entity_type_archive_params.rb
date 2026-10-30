# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::EntityTypes#archive
      class EntityTypeArchiveParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute ids
        #   Entity type identifiers to act on
        #
        #   @return [Array<String>]
        required :ids, Stigg::Internal::Type::ArrayOf[String]

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(ids:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   @param ids [Array<String>] Entity type identifiers to act on
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
