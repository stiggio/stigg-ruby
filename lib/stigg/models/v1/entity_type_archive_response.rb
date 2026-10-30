# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::EntityTypes#archive
      class EntityTypeArchiveResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #   List of entity type identifiers that were acted on
        #
        #   @return [Stigg::Models::V1::EntityTypeArchiveResponse::Data]
        required :data, -> { Stigg::Models::V1::EntityTypeArchiveResponse::Data }

        # @!method initialize(data:)
        #   Wrapped response echoing the entity type ids that were acted on by an archive
        #   call
        #
        #   @param data [Stigg::Models::V1::EntityTypeArchiveResponse::Data] List of entity type identifiers that were acted on

        # @see Stigg::Models::V1::EntityTypeArchiveResponse#data
        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute ids
          #   Entity type identifiers to act on
          #
          #   @return [Array<String>]
          required :ids, Stigg::Internal::Type::ArrayOf[String]

          # @!method initialize(ids:)
          #   List of entity type identifiers that were acted on
          #
          #   @param ids [Array<String>] Entity type identifiers to act on
        end
      end
    end
  end
end
