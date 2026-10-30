# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::EntityTypes#check_active_entities
      class EntityTypeCheckActiveEntitiesResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   Whether an entity type has active entities
        #
        #   @return [Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data]
        required :data, -> { Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data }

        # @!method initialize(data:)
        #   Wrapped response with whether an entity type has active entities
        #
        #   @param data [Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data] Whether an entity type has active entities

        # @see Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute has_active_entities
          #   Whether at least one active (non-archived) entity of the entity type exists,
          #   across every customer
          #
          #   @return [Boolean]
          required :has_active_entities, Stigg::Internal::Type::Boolean, api_name: :hasActiveEntities

          # @!method initialize(has_active_entities:)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data} for more
          #   details.
          #
          #   Whether an entity type has active entities
          #
          #   @param has_active_entities [Boolean] Whether at least one active (non-archived) entity of the entity type exists, acr
        end
      end
    end
  end
end
