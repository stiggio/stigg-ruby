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
          #   The external entity ID this record is linked to in the vendor system (e.g. the
          #   Stripe customer ID). Null until the link has synced; required when creating the
          #   link.
          #
          #   @return [String, nil]
          required :synced_entity_id, String, api_name: :syncedEntityId, nil?: true

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(id:, integration_id:, synced_entity_id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::Customers::IntegrationUpdateParams} for more details.
          #
          #   @param id [String]
          #
          #   @param integration_id [String]
          #
          #   @param synced_entity_id [String, nil] The external entity ID this record is linked to in the vendor system (e.g. the S
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
end
