# frozen_string_literal: true

module Stigg
  module Resources
    class V2
      class Permissions
        # Check multiple permissions for a user
        #
        # @overload check(user_id:, resources_and_actions:, request_options: {})
        #
        # @param user_id [String] Query param: ID of the user to check permissions for
        #
        # @param resources_and_actions [Array<Stigg::Models::V2::PermissionCheckParams::ResourcesAndAction>] Body param: List of resources and actions to check permissions for
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V2::PermissionCheckResponse]
        #
        # @see Stigg::Models::V2::PermissionCheckParams
        def check(params)
          parsed, options = Stigg::V2::PermissionCheckParams.dump_request(params)
          query_params = [:user_id]
          @client.request(
            method: :post,
            path: "api/v1/permissions/check",
            query: parsed.slice(*query_params).transform_keys(user_id: "userId"),
            body: parsed.except(*query_params),
            model: Stigg::Models::V2::PermissionCheckResponse,
            options: options
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
