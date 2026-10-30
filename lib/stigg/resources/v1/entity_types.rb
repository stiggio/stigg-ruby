# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class EntityTypes
        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::EntityTypeListParams} for more details.
        #
        # Returns a cursor-paginated list of entity types defined in the environment.
        # Entity types are vendor-defined categories of resource that can be governed
        # (e.g. Org, Team, User). Archived entity types are excluded unless
        # includeArchived=true.
        #
        # @overload list(after: nil, before: nil, include_archived: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param after [String] Query param: Return items that come after this cursor
        #
        # @param before [String] Query param: Return items that come before this cursor
        #
        # @param include_archived [Symbol, Stigg::Models::V1::EntityTypeListParams::IncludeArchived] Query param: Whether to include archived entity types. One of: true, false
        #
        # @param limit [Integer] Query param: Maximum number of items to return
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::EntityTypeListResponse>]
        #
        # @see Stigg::Models::V1::EntityTypeListParams
        def list(params = {})
          query_params = [:after, :before, :include_archived, :limit]
          parsed, options = Stigg::V1::EntityTypeListParams.dump_request(params)
          query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :get,
            path: "api/v1/entity-types",
            query: query.transform_keys(include_archived: "includeArchived"),
            headers: parsed.except(*query_params).transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            page: Stigg::Internal::MyCursorIDPage,
            model: Stigg::Models::V1::EntityTypeListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::EntityTypeArchiveParams} for more details.
        #
        # Archives entity types in bulk by id. An entity type with active entities cannot
        # be archived: archive its entities first, or the whole request fails with 400.
        #
        # @overload archive(ids:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param ids [Array<String>] Body param: Entity type identifiers to act on
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::EntityTypeArchiveResponse]
        #
        # @see Stigg::Models::V1::EntityTypeArchiveParams
        def archive(params)
          parsed, options = Stigg::V1::EntityTypeArchiveParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :post,
            path: "api/v1/entity-types/archive",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::EntityTypeArchiveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::EntityTypeCheckActiveEntitiesParams} for more details.
        #
        # Returns whether any active entity of this entity type exists, across every
        # customer. An entity type can be archived only when this is false. An unknown
        # entity type returns false.
        #
        # @overload check_active_entities(id, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier for the entity type
        #
        # @param x_account_id [String] Account ID — optional when authenticating with a user JWT (Bearer token); falls
        #
        # @param x_environment_id [String] Environment ID — required when authenticating with a user JWT (Bearer token) on
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse]
        #
        # @see Stigg::Models::V1::EntityTypeCheckActiveEntitiesParams
        def check_active_entities(id, params = {})
          parsed, options = Stigg::V1::EntityTypeCheckActiveEntitiesParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["api/v1/entity-types/%1$s/has-active-entities", id],
            headers: parsed.transform_keys(
              x_account_id: "x-account-id",
              x_environment_id: "x-environment-id"
            ),
            model: Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Stigg::Models::V1::EntityTypeUpsertParams} for more details.
        #
        # Batched create-or-update of entity types. Existing types matched by id are
        # updated; new ids are created. Idempotent — re-submitting the same payload
        # converges to the same state. An upsert of an archived entity type restores it.
        #
        # @overload upsert(types:, x_account_id: nil, x_environment_id: nil, request_options: {})
        #
        # @param types [Array<Stigg::Models::V1::EntityTypeUpsertParams::Type>] Body param: Entity types to upsert (1–100 per request)
        #
        # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
        #
        # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
        #
        # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Stigg::Models::V1::EntityTypeUpsertResponse]
        #
        # @see Stigg::Models::V1::EntityTypeUpsertParams
        def upsert(params)
          parsed, options = Stigg::V1::EntityTypeUpsertParams.dump_request(params)
          header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
          @client.request(
            method: :put,
            path: "api/v1/entity-types",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Stigg::Models::V1::EntityTypeUpsertResponse,
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
