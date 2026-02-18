# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Addons
          class Draft
            # Creates a draft version of an existing addon for modification before publishing.
            #
            # @overload create_addon_draft(id, request_options: {})
            #
            # @param id [String] The unique identifier of the entity
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Addons::DraftCreateAddonDraftResponse]
            #
            # @see Stigg::Models::V1::Events::Addons::DraftCreateAddonDraftParams
            def create_addon_draft(id, params = {})
              @client.request(
                method: :post,
                path: ["api/v1/addons/%1$s/draft", id],
                model: Stigg::Models::V1::Events::Addons::DraftCreateAddonDraftResponse,
                options: params[:request_options]
              )
            end

            # Removes a draft version of an addon.
            #
            # @overload remove_addon_draft(id, request_options: {})
            #
            # @param id [String] The unique identifier of the entity
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse]
            #
            # @see Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftParams
            def remove_addon_draft(id, params = {})
              @client.request(
                method: :delete,
                path: ["api/v1/addons/%1$s/draft", id],
                model: Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse,
                options: params[:request_options]
              )
            end

            # @api private
            #
            # @param client [Stigg::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
