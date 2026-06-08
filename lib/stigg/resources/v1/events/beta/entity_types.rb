# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class EntityTypes
            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Events::Beta::EntityTypeListParams} for more details.
            #
            # Returns a cursor-paginated list of entity types defined in the environment.
            # Entity types are vendor-defined categories of resource that can be governed
            # (e.g. Org, Team, User).
            #
            # @overload list(after: nil, before: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
            #
            # @param after [String] Query param: Return items that come after this cursor
            #
            # @param before [String] Query param: Return items that come before this cursor
            #
            # @param limit [Integer] Query param: Maximum number of items to return
            #
            # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
            #
            # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::Beta::EntityTypeListResponse>]
            #
            # @see Stigg::Models::V1::Events::Beta::EntityTypeListParams
            def list(params = {})
              query_params = [:after, :before, :limit]
              parsed, options = Stigg::V1::Events::Beta::EntityTypeListParams.dump_request(params)
              query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :get,
                path: "api/v1-beta/entity-types",
                query: query,
                headers: parsed.except(*query_params).transform_keys(
                  x_account_id: "x-account-id",
                  x_environment_id: "x-environment-id"
                ),
                page: Stigg::Internal::MyCursorIDPage,
                model: Stigg::Models::V1::Events::Beta::EntityTypeListResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Stigg::Models::V1::Events::Beta::EntityTypeUpsertParams} for more details.
            #
            # Batched create-or-update of entity types. Existing types matched by id are
            # updated; new ids are created. Idempotent — re-submitting the same payload
            # converges to the same state.
            #
            # @overload upsert(types:, x_account_id: nil, x_environment_id: nil, request_options: {})
            #
            # @param types [Array<Stigg::Models::V1::Events::Beta::EntityTypeUpsertParams::Type>] Body param: Entity types to upsert (1–100 per request)
            #
            # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
            #
            # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Beta::EntityTypeUpsertResponse]
            #
            # @see Stigg::Models::V1::Events::Beta::EntityTypeUpsertParams
            def upsert(params)
              parsed, options = Stigg::V1::Events::Beta::EntityTypeUpsertParams.dump_request(params)
              header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
              @client.request(
                method: :put,
                path: "api/v1-beta/entity-types",
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Stigg::Models::V1::Events::Beta::EntityTypeUpsertResponse,
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
  end
end
