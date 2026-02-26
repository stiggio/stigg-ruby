# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Plans
          class Draft
            # Creates a draft version of an existing plan for modification before publishing.
            #
            # @overload create(id, request_options: {})
            #
            # @param id [String] The unique identifier of the entity
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Plan]
            #
            # @see Stigg::Models::V1::Events::Plans::DraftCreateParams
            def create(id, params = {})
              @client.request(
                method: :post,
                path: ["api/v1/plans/%1$s/draft", id],
                model: Stigg::V1::Events::Plan,
                options: params[:request_options]
              )
            end

            # Removes a draft version of a plan.
            #
            # @overload remove(id, request_options: {})
            #
            # @param id [String] The unique identifier of the entity
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Plans::DraftRemoveResponse]
            #
            # @see Stigg::Models::V1::Events::Plans::DraftRemoveParams
            def remove(id, params = {})
              @client.request(
                method: :delete,
                path: ["api/v1/plans/%1$s/draft", id],
                model: Stigg::Models::V1::Events::Plans::DraftRemoveResponse,
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
