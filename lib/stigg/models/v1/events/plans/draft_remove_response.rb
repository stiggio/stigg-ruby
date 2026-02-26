# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Plans
          # @see Stigg::Resources::V1::Events::Plans::Draft#remove
          class DraftRemoveResponse < Stigg::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Stigg::Models::V1::Events::Plans::DraftRemoveResponse::Data]
            required :data, -> { Stigg::Models::V1::Events::Plans::DraftRemoveResponse::Data }

            # @!method initialize(data:)
            #   Response confirming the plan draft was removed.
            #
            #   @param data [Stigg::Models::V1::Events::Plans::DraftRemoveResponse::Data]

            # @see Stigg::Models::V1::Events::Plans::DraftRemoveResponse#data
            class Data < Stigg::Internal::Type::BaseModel
              # @!attribute id
              #   The unique identifier for the entity
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String] The unique identifier for the entity
            end
          end
        end
      end
    end
  end
end
