# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class EntityTypes
            # Returns a cursor-paginated list of entity types defined in the environment.
            # Entity types are vendor-defined categories of resource that can be governed
            # (e.g. Org, Team, User).
            #
            # @overload list(after: nil, before: nil, limit: nil, request_options: {})
            #
            # @param after [String] Return items that come after this cursor
            #
            # @param before [String] Return items that come before this cursor
            #
            # @param limit [Integer] Maximum number of items to return
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::Beta::EntityTypeListResponse>]
            #
            # @see Stigg::Models::V1::Events::Beta::EntityTypeListParams
            def list(params = {})
              parsed, options = Stigg::V1::Events::Beta::EntityTypeListParams.dump_request(params)
              query = Stigg::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: "api/v1-beta/entity-types",
                query: query,
                page: Stigg::Internal::MyCursorIDPage,
                model: Stigg::Models::V1::Events::Beta::EntityTypeListResponse,
                options: options
              )
            end

            # Batched create-or-update of entity types. Existing types matched by id are
            # updated; new ids are created. Idempotent — re-submitting the same payload
            # converges to the same state.
            #
            # @overload upsert(types:, request_options: {})
            #
            # @param types [Array<Stigg::Models::V1::Events::Beta::EntityTypeUpsertParams::Type>] Entity types to upsert (1–100 per request)
            #
            # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Stigg::Models::V1::Events::Beta::EntityTypeUpsertResponse]
            #
            # @see Stigg::Models::V1::Events::Beta::EntityTypeUpsertParams
            def upsert(params)
              parsed, options = Stigg::V1::Events::Beta::EntityTypeUpsertParams.dump_request(params)
              @client.request(
                method: :put,
                path: "api/v1-beta/entity-types",
                body: parsed,
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
