# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            # @see Stigg::Resources::V1::Events::Beta::Customers::Entities#retrieve
            class EntityRetrieveParams < Stigg::Internal::Type::BaseModel
              extend Stigg::Internal::Type::RequestParameters::Converter
              include Stigg::Internal::Type::RequestParameters

              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute entity_id
              #
              #   @return [String]
              required :entity_id, String

              # @!method initialize(id:, entity_id:, request_options: {})
              #   @param id [String]
              #   @param entity_id [String]
              #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
