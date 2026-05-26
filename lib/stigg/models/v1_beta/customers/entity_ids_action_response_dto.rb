# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Entities#archive
        class EntityIDsActionResponseDto < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   List of entity identifiers that were acted on
          #
          #   @return [Stigg::Models::V1Beta::Customers::EntityIDsActionResponseDto::Data]
          required :data, -> { Stigg::V1Beta::Customers::EntityIDsActionResponseDto::Data }

          # @!method initialize(data:)
          #   Wrapped response echoing the ids that were acted on by an archive/unarchive call
          #
          #   @param data [Stigg::Models::V1Beta::Customers::EntityIDsActionResponseDto::Data] List of entity identifiers that were acted on

          # @see Stigg::Models::V1Beta::Customers::EntityIDsActionResponseDto#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute ids
            #   Entity identifiers to act on
            #
            #   @return [Array<String>]
            required :ids, Stigg::Internal::Type::ArrayOf[String]

            # @!method initialize(ids:)
            #   List of entity identifiers that were acted on
            #
            #   @param ids [Array<String>] Entity identifiers to act on
          end
        end
      end
    end
  end
end
