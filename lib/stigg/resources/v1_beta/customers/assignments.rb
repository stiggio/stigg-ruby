# frozen_string_literal: true

module Stigg
  module Resources
    class V1Beta
      class Customers
        class Assignments
          # Returns a cursor-paginated list of capability assignments for the given
          # customer. An assignment ties an entity to a capability with a usage limit and
          # reset cadence.
          #
          # @overload list(id, after: nil, before: nil, capability_id: nil, entity_id: nil, limit: nil, request_options: {})
          #
          # @param id [String] The customer identifier (owner) the assignments belong to
          #
          # @param after [String] Return items that come after this cursor
          #
          # @param before [String] Return items that come before this cursor
          #
          # @param capability_id [String] Filter assignments to a specific capability refId
          #
          # @param entity_id [String] Filter assignments to a specific entity refId
          #
          # @param limit [Integer] Maximum number of items to return
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1Beta::Customers::AssignmentListResponse>]
          #
          # @see Stigg::Models::V1Beta::Customers::AssignmentListParams
          def list(id, params = {})
            parsed, options = Stigg::V1Beta::Customers::AssignmentListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/v1-beta/customers/%1$s/assignments", id],
              query: query.transform_keys(capability_id: "capabilityId", entity_id: "entityId"),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1Beta::Customers::AssignmentListResponse,
              options: options
            )
          end

          # Batched create-or-update of capability assignments. Existing assignments matched
          # by (entityId, capabilityId) are updated; new pairs are created. On update,
          # omitted fields (usageLimit, cadence) are preserved; on create both are required
          # by the governance service.
          #
          # @overload upsert(id, assignments:, request_options: {})
          #
          # @param id [String] The customer identifier (owner) the assignments belong to
          #
          # @param assignments [Array<Stigg::Models::V1Beta::Customers::AssignmentUpsertParams::Assignment>] Assignments to upsert (1–100 per request)
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse]
          #
          # @see Stigg::Models::V1Beta::Customers::AssignmentUpsertParams
          def upsert(id, params)
            parsed, options = Stigg::V1Beta::Customers::AssignmentUpsertParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["api/v1-beta/customers/%1$s/assignments", id],
              body: parsed,
              model: Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse,
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
