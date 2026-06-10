# frozen_string_literal: true

module Stigg
  module Resources
    class V1Beta
      class Customers
        class Entities
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1Beta::Customers::EntityRetrieveParams} for more details.
          #
          # Retrieves a single entity for the given customer by its identifier.
          #
          # @overload retrieve(entity_id, id:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param entity_id [String] Path param: The entity identifier (refId)
          #
          # @param id [String] Path param: The customer identifier (owner) the entity belongs to
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1Beta::Customers::EntityRetrieveResponse]
          #
          # @see Stigg::Models::V1Beta::Customers::EntityRetrieveParams
          def retrieve(entity_id, params)
            parsed, options = Stigg::V1Beta::Customers::EntityRetrieveParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["api/v1-beta/customers/%1$s/entities/%2$s", id, entity_id],
              headers: parsed.transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              model: Stigg::Models::V1Beta::Customers::EntityRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1Beta::Customers::EntityListParams} for more details.
          #
          # Retrieves a paginated list of entities for the given customer.
          #
          # @overload list(id, after: nil, before: nil, include_archived: nil, limit: nil, type_ref_id: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The customer identifier (owner) the entities belong to
          #
          # @param after [String] Query param: Return items that come after this cursor
          #
          # @param before [String] Query param: Return items that come before this cursor
          #
          # @param include_archived [Symbol, Stigg::Models::V1Beta::Customers::EntityListParams::IncludeArchived] Query param: Whether to include archived entities. One of: true, false
          #
          # @param limit [Integer] Query param: Maximum number of items to return
          #
          # @param type_ref_id [String] Query param: Filter results to entities of a specific entity type, by the type's
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1Beta::Customers::EntityListResponse>]
          #
          # @see Stigg::Models::V1Beta::Customers::EntityListParams
          def list(id, params = {})
            query_params = [:after, :before, :include_archived, :limit, :type_ref_id]
            parsed, options = Stigg::V1Beta::Customers::EntityListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :get,
              path: ["api/v1-beta/customers/%1$s/entities", id],
              query: query.transform_keys(include_archived: "includeArchived", type_ref_id: "typeRefId"),
              headers: parsed.except(*query_params).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1Beta::Customers::EntityListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1Beta::Customers::EntityArchiveParams} for more details.
          #
          # Archives entities in bulk for the given customer by id.
          #
          # @overload archive(id, ids:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The customer identifier (owner) the entities belong to
          #
          # @param ids [Array<String>] Body param: Entity identifiers to act on
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1Beta::Customers::EntityArchiveResponse]
          #
          # @see Stigg::Models::V1Beta::Customers::EntityArchiveParams
          def archive(id, params)
            parsed, options = Stigg::V1Beta::Customers::EntityArchiveParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1-beta/customers/%1$s/entities/archive", id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1Beta::Customers::EntityArchiveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1Beta::Customers::EntityUnarchiveParams} for more details.
          #
          # Restores previously archived entities in bulk for the given customer by id.
          #
          # @overload unarchive(id, ids:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The customer identifier (owner) the entities belong to
          #
          # @param ids [Array<String>] Body param: Entity identifiers to act on
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1Beta::Customers::EntityUnarchiveResponse]
          #
          # @see Stigg::Models::V1Beta::Customers::EntityUnarchiveParams
          def unarchive(id, params)
            parsed, options = Stigg::V1Beta::Customers::EntityUnarchiveParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :post,
              path: ["api/v1-beta/customers/%1$s/entities/unarchive", id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1Beta::Customers::EntityUnarchiveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1Beta::Customers::EntityUpsertParams} for more details.
          #
          # Creates or updates entities in bulk for the given customer. Existing entities
          # matched by id are updated; new ids are created.
          #
          # @overload upsert(id, entities:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The customer identifier (owner) the entities belong to
          #
          # @param entities [Array<Stigg::Models::V1Beta::Customers::EntityUpsertParams::Entity>] Body param: List of entities to create or update (1-100 entries)
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1Beta::Customers::EntityUpsertResponse]
          #
          # @see Stigg::Models::V1Beta::Customers::EntityUpsertParams
          def upsert(id, params)
            parsed, options = Stigg::V1Beta::Customers::EntityUpsertParams.dump_request(params)
            header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
            @client.request(
              method: :put,
              path: ["api/v1-beta/customers/%1$s/entities", id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Stigg::Models::V1Beta::Customers::EntityUpsertResponse,
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
