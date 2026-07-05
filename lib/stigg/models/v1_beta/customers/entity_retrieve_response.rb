# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Entities#retrieve
        class EntityRetrieveResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   A stored entity instance tracked by the governance service for a given customer
          #
          #   @return [Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data]
          required :data, -> { Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data] A stored entity instance tracked by the governance service for a given customer

          # @see Stigg::Models::V1Beta::Customers::EntityRetrieveResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The unique identifier for the entity
            #
            #   @return [String]
            required :id, String

            # @!attribute archived_at
            #   Timestamp of when the record was deleted
            #
            #   @return [Time, nil]
            required :archived_at, Time, api_name: :archivedAt, nil?: true

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute entity_type_id
            #   The entity type identifier this entity instantiates
            #
            #   @return [String]
            required :entity_type_id, String, api_name: :entityTypeId

            # @!attribute metadata
            #   Free-form key/value metadata attached to the entity
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!method initialize(id:, archived_at:, created_at:, entity_type_id:, metadata:, updated_at:)
            #   A stored entity instance tracked by the governance service for a given customer
            #
            #   @param id [String] The unique identifier for the entity
            #
            #   @param archived_at [Time, nil] Timestamp of when the record was deleted
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param entity_type_id [String] The entity type identifier this entity instantiates
            #
            #   @param metadata [Hash{Symbol=>String}] Free-form key/value metadata attached to the entity
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
          end
        end
      end
    end
  end
end
