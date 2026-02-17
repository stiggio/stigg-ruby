# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Addons
          class Draft
            # Creates a draft version of an existing addon for modification before publishing.
            sig do
              params(
                id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::Addons::DraftCreateAddonDraftResponse
              )
            end
            def create_addon_draft(
              # The unique identifier of the entity
              id,
              request_options: {}
            )
            end

            # Removes a draft version of an addon.
            sig do
              params(
                id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse
              )
            end
            def remove_addon_draft(
              # The unique identifier of the entity
              id,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: Stigg::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
