# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            # @see Stigg::Resources::V1::Events::Beta::Customers::Entities#unarchive
            class EntityUnarchiveResponse < Stigg::Internal::Type::BaseModel
              # @!attribute data
              #   List of entity identifiers that were acted on
              #
              #   @return [Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data]
              required :data, -> { Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data }

              # @!method initialize(data:)
              #   Wrapped response echoing the ids that were acted on by an archive/unarchive call
              #
              #   @param data [Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data] List of entity identifiers that were acted on

              # @see Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse#data
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
  end
end
