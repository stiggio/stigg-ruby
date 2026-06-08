# frozen_string_literal: true

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            class Assignments
              # Some parameter documentations has been truncated, see
              # {Stigg::Models::V1::Events::Beta::Customers::AssignmentListParams} for more
              # details.
              #
              # Returns a cursor-paginated list of capability assignments for the given
              # customer. An assignment ties an entity to a capability with a usage limit and
              # reset cadence.
              #
              # @overload list(id, after: nil, before: nil, capability_id: nil, entity_id: nil, limit: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
              #
              # @param id [String] Path param: The customer identifier (owner) the assignments belong to
              #
              # @param after [String] Query param: Return items that come after this cursor
              #
              # @param before [String] Query param: Return items that come before this cursor
              #
              # @param capability_id [String] Query param: Filter assignments to a specific capability refId
              #
              # @param entity_id [String] Query param: Filter assignments to a specific entity refId
              #
              # @param limit [Integer] Query param: Maximum number of items to return
              #
              # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
              #
              # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1::Events::Beta::Customers::AssignmentListResponse>]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::AssignmentListParams
              def list(id, params = {})
                query_params = [:after, :before, :capability_id, :entity_id, :limit]
                parsed, options = Stigg::V1::Events::Beta::Customers::AssignmentListParams.dump_request(params)
                query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
                @client.request(
                  method: :get,
                  path: ["api/v1-beta/customers/%1$s/assignments", id],
                  query: query.transform_keys(capability_id: "capabilityId", entity_id: "entityId"),
                  headers: parsed.except(*query_params).transform_keys(
                    x_account_id: "x-account-id",
                    x_environment_id: "x-environment-id"
                  ),
                  page: Stigg::Internal::MyCursorIDPage,
                  model: Stigg::Models::V1::Events::Beta::Customers::AssignmentListResponse,
                  options: options
                )
              end

              # Some parameter documentations has been truncated, see
              # {Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams} for more
              # details.
              #
              # Batched create-or-update of capability assignments. Existing assignments matched
              # by (entityId, capabilityId) are updated; new pairs are created. On update,
              # omitted fields (usageLimit, cadence) are preserved; on create both are required
              # by the governance service.
              #
              # @overload upsert(id, assignments:, x_account_id: nil, x_environment_id: nil, request_options: {})
              #
              # @param id [String] Path param: The customer identifier (owner) the assignments belong to
              #
              # @param assignments [Array<Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment>] Body param: Assignments to upsert (1–100 per request)
              #
              # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
              #
              # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
              #
              # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertResponse]
              #
              # @see Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams
              def upsert(id, params)
                parsed, options = Stigg::V1::Events::Beta::Customers::AssignmentUpsertParams.dump_request(params)
                header_params = {x_account_id: "x-account-id", x_environment_id: "x-environment-id"}
                @client.request(
                  method: :put,
                  path: ["api/v1-beta/customers/%1$s/assignments", id],
                  headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                  body: parsed.except(*header_params.keys),
                  model: Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertResponse,
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
