# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            class Entities
              # Retrieves a single entity for the given customer by its identifier.
              #
              # @overload retrieve(entity_id, id:, request_options: {})
              #
              # @param entity_id [String] The entity identifier (refId)
              #
              # @param id [String] The customer identifier (owner) the entity belongs to
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Models::V1::Events::Beta::Customers::EntityRetrieveResponse]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::EntityRetrieveParams
              def retrieve(entity_id, params)
                parsed, options = Stigg::V1::Events::Beta::Customers::EntityRetrieveParams.dump_request(params)
                id =
                  parsed.delete(:id) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: ["api/v1-beta/customers/%1$s/entities/%2$s", id, entity_id],
                  model: Stigg::Models::V1::Events::Beta::Customers::EntityRetrieveResponse,
                  options: options
                )
              end

              # Retrieves a paginated list of entities for the given customer.
              #
              # @overload list(id, after: nil, before: nil, include_archived: nil, limit: nil, type_ref_id: nil, request_options: {})
              #
              # @param id [String] The customer identifier (owner) the entities belong to
              #
              # @param after [String] Return items that come after this cursor
              #
              # @param before [String] Return items that come before this cursor
              #
              # @param include_archived [Symbol, Stigg::Models::V1::Events::Beta::Customers::EntityListParams::IncludeArchived] Whether to include archived entities. One of: true, false
              #
              # @param limit [Integer] Maximum number of items to return
              #
              # @param type_ref_id [String] Filter results to entities of a specific entity type, by the type's refId
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::Beta::Customers::EntityListResponse>]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::EntityListParams
              def list(id, params = {})
                parsed, options = Stigg::V1::Events::Beta::Customers::EntityListParams.dump_request(params)
                query = Stigg::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: ["api/v1-beta/customers/%1$s/entities", id],
                  query: query.transform_keys(include_archived: "includeArchived", type_ref_id: "typeRefId"),
                  page: Stigg::Internal::MyCursorIDPage,
                  model: Stigg::Models::V1::Events::Beta::Customers::EntityListResponse,
                  options: options
                )
              end

              # Archives entities in bulk for the given customer by id.
              #
              # @overload archive(id, ids:, request_options: {})
              #
              # @param id [String] The customer identifier (owner) the entities belong to
              #
              # @param ids [Array<String>] Entity identifiers to act on
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Models::V1::Events::Beta::Customers::EntityArchiveResponse]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::EntityArchiveParams
              def archive(id, params)
                parsed, options = Stigg::V1::Events::Beta::Customers::EntityArchiveParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: ["api/v1-beta/customers/%1$s/entities/archive", id],
                  body: parsed,
                  model: Stigg::Models::V1::Events::Beta::Customers::EntityArchiveResponse,
                  options: options
                )
              end

              # Restores previously archived entities in bulk for the given customer by id.
              #
              # @overload unarchive(id, ids:, request_options: {})
              #
              # @param id [String] The customer identifier (owner) the entities belong to
              #
              # @param ids [Array<String>] Entity identifiers to act on
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveParams
              def unarchive(id, params)
                parsed, options = Stigg::V1::Events::Beta::Customers::EntityUnarchiveParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: ["api/v1-beta/customers/%1$s/entities/unarchive", id],
                  body: parsed,
                  model: Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse,
                  options: options
                )
              end

              # Creates or updates entities in bulk for the given customer. Existing entities
              # matched by id are updated; new ids are created.
              #
              # @overload upsert(id, entities:, request_options: {})
              #
              # @param id [String] The customer identifier (owner) the entities belong to
              #
              # @param entities [Array<Stigg::Models::V1::Events::Beta::Customers::EntityUpsertParams::Entity>] List of entities to create or update (1-100 entries)
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Models::V1::Events::Beta::Customers::EntityUpsertResponse]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::EntityUpsertParams
              def upsert(id, params)
                parsed, options = Stigg::V1::Events::Beta::Customers::EntityUpsertParams.dump_request(params)
                @client.request(
                  method: :put,
                  path: ["api/v1-beta/customers/%1$s/entities", id],
                  body: parsed,
                  model: Stigg::Models::V1::Events::Beta::Customers::EntityUpsertResponse,
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
end
