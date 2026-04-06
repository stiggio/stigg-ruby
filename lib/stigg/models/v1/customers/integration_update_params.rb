# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::Integrations#update
        class IntegrationUpdateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute integration_id
          #
          #   @return [String]
          required :integration_id, String

          # @!attribute synced_entity_id
          #   Synced entity id
          #
          #   @return [String, nil]
          required :synced_entity_id, String, api_name: :syncedEntityId, nil?: true

          # @!method initialize(id:, integration_id:, synced_entity_id:, request_options: {})
          #   @param id [String]
          #
          #   @param integration_id [String]
          #
          #   @param synced_entity_id [String, nil] Synced entity id
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
