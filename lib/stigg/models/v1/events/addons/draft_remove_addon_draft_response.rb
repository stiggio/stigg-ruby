# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Addons
          # @see Stigg::Resources::V1::Events::Addons::Draft#remove_addon_draft
          class DraftRemoveAddonDraftResponse < Stigg::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse::Data]
            required :data, -> { Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse::Data }

            # @!method initialize(data:)
            #   Response confirming the addon draft was removed.
            #
            #   @param data [Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse::Data]

            # @see Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse#data
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
