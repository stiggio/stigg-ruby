# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Entities#unarchive
        class EntityUnarchiveParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute ids
          #   Entity identifiers to act on
          #
          #   @return [Array<String>]
          required :ids, Stigg::Internal::Type::ArrayOf[String]

          # @!method initialize(id:, ids:, request_options: {})
          #   @param id [String]
          #
          #   @param ids [Array<String>] Entity identifiers to act on
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
