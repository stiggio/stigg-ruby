# frozen_string_literal: true

module Stigg
  module Resources
    class V1Beta
      class Customers
        class Governance
          # Some parameter documentations has been truncated, see
          # {Stigg::Models::V1Beta::Customers::GovernanceListParams} for more details.
          #
          # Queries the customer's governance hierarchy tree, returning a cursor-paginated
          # list of nodes with their usage configuration (limit, cadence, scope) and current
          # usage, sortable and filterable by usage. Each node carries `parentId` so the
          # tree can be rebuilt client-side. Usage is read from a periodically-refreshed
          # read model and never gates access.
          #
          # @overload list(id, after: nil, before: nil, currency_ids: nil, entity_id_search: nil, entity_type_ids: nil, feature_ids: nil, limit: nil, min_utilization: nil, order: nil, scope: nil, sort_by: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #
          # @param id [String] Path param: The customer ID.
          #
          # @param after [String] Query param: Opaque cursor from a page’s `next`; returns the page after it. Mutu
          #
          # @param before [String] Query param: Opaque cursor from a page’s `prev`; returns the page before it. Mut
          #
          # @param currency_ids [Array<String>] Query param: Currency ids to include, comma-separated (e.g. `?currencyIds=credit
          #
          # @param entity_id_search [String] Query param: Case-insensitive substring match on the entity id or its display na
          #
          # @param entity_type_ids [Array<String>] Query param: Filter to one or more entity types, comma-separated (e.g. `?entityT
          #
          # @param feature_ids [Array<String>] Query param: Feature ids to include, comma-separated (e.g. `?featureIds=ai-token
          #
          # @param limit [Integer] Query param: Maximum number of items to return
          #
          # @param min_utilization [Float] Query param: Only nodes with utilization ≥ this value (e.g. 0.8 for ≥80%, 1 for
          #
          # @param order [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::Order] Query param: Sort direction: `asc` or `desc` (default `desc`).
          #
          # @param scope [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::Scope] Query param: Filter by configuration scope: `all` (default), `nodeWide` (`[]` on
          #
          # @param sort_by [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::SortBy] Query param: Sort key: `utilization` (default, cross-capability-safe), `currentU
          #
          # @param x_account_id [String] Header param: Account ID — optional when authenticating with a user JWT (Bearer
          #
          # @param x_environment_id [String] Header param: Environment ID — required when authenticating with a user JWT (Bea
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Internal::MyCursorIDPage<Stigg::Models::V1Beta::Customers::GovernanceListResponse>]
          #
          # @see Stigg::Models::V1Beta::Customers::GovernanceListParams
          def list(id, params = {})
            query_params =
              [
                :after,
                :before,
                :currency_ids,
                :entity_id_search,
                :entity_type_ids,
                :feature_ids,
                :limit,
                :min_utilization,
                :order,
                :scope,
                :sort_by
              ]
            parsed, options = Stigg::V1Beta::Customers::GovernanceListParams.dump_request(params)
            query = Stigg::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :get,
              path: ["api/v1-beta/customers/%1$s/governance", id],
              query: query.transform_keys(
                currency_ids: "currencyIds",
                entity_id_search: "entityIdSearch",
                entity_type_ids: "entityTypeIds",
                feature_ids: "featureIds",
                min_utilization: "minUtilization",
                sort_by: "sortBy"
              ),
              headers: parsed.except(*query_params).transform_keys(
                x_account_id: "x-account-id",
                x_environment_id: "x-environment-id"
              ),
              page: Stigg::Internal::MyCursorIDPage,
              model: Stigg::Models::V1Beta::Customers::GovernanceListResponse,
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
