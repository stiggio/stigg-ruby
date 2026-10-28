# typed: strong

module Stigg
  module Resources
    class V1Beta
      class Customers
        class Governance
          # Queries the customer's governance hierarchy tree, returning a cursor-paginated
          # list of nodes with their usage configuration (limit, cadence, scope) and current
          # usage, sortable and filterable by usage. Each node carries `parentId` so the
          # tree can be rebuilt client-side. Usage is read from a periodically-refreshed
          # read model and never gates access.
          sig do
            params(
              id: String,
              after: String,
              before: String,
              currency_ids: T::Array[String],
              entity_id_search: String,
              entity_type_ids: T::Array[String],
              feature_ids: T::Array[String],
              limit: Integer,
              min_utilization: Float,
              order:
                Stigg::V1Beta::Customers::GovernanceListParams::Order::OrSymbol,
              scope:
                Stigg::V1Beta::Customers::GovernanceListParams::Scope::OrSymbol,
              sort_by:
                Stigg::V1Beta::Customers::GovernanceListParams::SortBy::OrSymbol,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1Beta::Customers::GovernanceListResponse
              ]
            )
          end
          def list(
            # Path param: The customer ID.
            id,
            # Query param: Opaque cursor from a page’s `next`; returns the page after it.
            # Mutually exclusive with `before`.
            after: nil,
            # Query param: Opaque cursor from a page’s `prev`; returns the page before it.
            # Mutually exclusive with `after`.
            before: nil,
            # Query param: Currency ids to include, comma-separated (e.g.
            # `?currencyIds=credits`), up to 100. Omit both featureIds and currencyIds for
            # tree mode.
            currency_ids: nil,
            # Query param: Case-insensitive substring match on the entity id or its display
            # name (`%`/`_` matched literally).
            entity_id_search: nil,
            # Query param: Filter to one or more entity types, comma-separated (e.g.
            # `?entityTypeIds=team,user`), up to 100.
            entity_type_ids: nil,
            # Query param: Feature ids to include, comma-separated (e.g.
            # `?featureIds=ai-tokens,seats`), up to 100. Omit both featureIds and currencyIds
            # for tree mode — every node in the hierarchy with no usage configuration
            # attached.
            feature_ids: nil,
            # Query param: Maximum number of items to return
            limit: nil,
            # Query param: Only nodes with utilization ≥ this value (e.g. 0.8 for ≥80%, 1 for
            # at/over limit).
            min_utilization: nil,
            # Query param: Sort direction: `asc` or `desc` (default `desc`).
            order: nil,
            # Query param: Filter by configuration scope: `all` (default), `nodeWide` (`[]`
            # only), or `scoped` (non-empty only).
            scope: nil,
            # Query param: Sort key: `utilization` (default, cross-capability-safe),
            # `currentUsage`, `usageLimit`, `scopeSize`, `id`, or `createdAt`.
            sort_by: nil,
            # Header param: Account ID — optional when authenticating with a user JWT (Bearer
            # token); falls back to the user's first membership. Ignored for API-key auth.
            x_account_id: nil,
            # Header param: Environment ID — required when authenticating with a user JWT
            # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
            # intrinsic to the key).
            x_environment_id: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
