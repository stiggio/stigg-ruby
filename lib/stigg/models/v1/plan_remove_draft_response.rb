# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Plans#remove_draft
      class PlanRemoveDraftResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Stigg::Models::V1::PlanRemoveDraftResponse::Data]
        required :data, -> { Stigg::Models::V1::PlanRemoveDraftResponse::Data }

        # @!method initialize(data:)
        #   Response confirming the plan draft was removed.
        #
        #   @param data [Stigg::Models::V1::PlanRemoveDraftResponse::Data]

        # @see Stigg::Models::V1::PlanRemoveDraftResponse#data
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
