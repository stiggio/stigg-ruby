# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Governance#list
        class GovernanceListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute after
          #   Opaque cursor from a page’s `next`; returns the page after it. Mutually
          #   exclusive with `before`.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #   Opaque cursor from a page’s `prev`; returns the page before it. Mutually
          #   exclusive with `after`.
          #
          #   @return [String, nil]
          optional :before, String

          # @!attribute currency_ids
          #   Currency ids to include, comma-separated (e.g. `?currencyIds=credits`), up
          #   to 100. Omit both featureIds and currencyIds for tree mode.
          #
          #   @return [Array<String>, nil]
          optional :currency_ids, Stigg::Internal::Type::ArrayOf[String]

          # @!attribute entity_id_search
          #   Case-insensitive substring match on the entity id or its display name (`%`/`_`
          #   matched literally).
          #
          #   @return [String, nil]
          optional :entity_id_search, String

          # @!attribute entity_type_ids
          #   Filter to one or more entity types, comma-separated (e.g.
          #   `?entityTypeIds=team,user`), up to 100.
          #
          #   @return [Array<String>, nil]
          optional :entity_type_ids, Stigg::Internal::Type::ArrayOf[String]

          # @!attribute feature_ids
          #   Feature ids to include, comma-separated (e.g. `?featureIds=ai-tokens,seats`), up
          #   to 100. Omit both featureIds and currencyIds for tree mode — every node in the
          #   hierarchy with no usage configuration attached.
          #
          #   @return [Array<String>, nil]
          optional :feature_ids, Stigg::Internal::Type::ArrayOf[String]

          # @!attribute limit
          #   Maximum number of items to return
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute min_utilization
          #   Only nodes with utilization ≥ this value (e.g. 0.8 for ≥80%, 1 for at/over
          #   limit).
          #
          #   @return [Float, nil]
          optional :min_utilization, Float

          # @!attribute order
          #   Sort direction: `asc` or `desc` (default `desc`).
          #
          #   @return [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::Order, nil]
          optional :order, enum: -> { Stigg::V1Beta::Customers::GovernanceListParams::Order }

          # @!attribute scope
          #   Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or
          #   `scoped` (non-empty only).
          #
          #   @return [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::Scope, nil]
          optional :scope, enum: -> { Stigg::V1Beta::Customers::GovernanceListParams::Scope }

          # @!attribute sort_by
          #   Sort key: `utilization` (default, cross-capability-safe), `currentUsage`,
          #   `usageLimit`, `scopeSize`, `id`, or `createdAt`.
          #
          #   @return [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::SortBy, nil]
          optional :sort_by, enum: -> { Stigg::V1Beta::Customers::GovernanceListParams::SortBy }

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(id:, after: nil, before: nil, currency_ids: nil, entity_id_search: nil, entity_type_ids: nil, feature_ids: nil, limit: nil, min_utilization: nil, order: nil, scope: nil, sort_by: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1Beta::Customers::GovernanceListParams} for more details.
          #
          #   @param id [String]
          #
          #   @param after [String] Opaque cursor from a page’s `next`; returns the page after it. Mutually exclusiv
          #
          #   @param before [String] Opaque cursor from a page’s `prev`; returns the page before it. Mutually exclusi
          #
          #   @param currency_ids [Array<String>] Currency ids to include, comma-separated (e.g. `?currencyIds=credits`), up to 10
          #
          #   @param entity_id_search [String] Case-insensitive substring match on the entity id or its display name (`%`/`_` m
          #
          #   @param entity_type_ids [Array<String>] Filter to one or more entity types, comma-separated (e.g. `?entityTypeIds=team,u
          #
          #   @param feature_ids [Array<String>] Feature ids to include, comma-separated (e.g. `?featureIds=ai-tokens,seats`), up
          #
          #   @param limit [Integer] Maximum number of items to return
          #
          #   @param min_utilization [Float] Only nodes with utilization ≥ this value (e.g. 0.8 for ≥80%, 1 for at/over limit
          #
          #   @param order [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::Order] Sort direction: `asc` or `desc` (default `desc`).
          #
          #   @param scope [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::Scope] Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or `scop
          #
          #   @param sort_by [Symbol, Stigg::Models::V1Beta::Customers::GovernanceListParams::SortBy] Sort key: `utilization` (default, cross-capability-safe), `currentUsage`, `usage
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # Sort direction: `asc` or `desc` (default `desc`).
          module Order
            extend Stigg::Internal::Type::Enum

            ASC = :asc
            DESC = :desc

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or
          # `scoped` (non-empty only).
          module Scope
            extend Stigg::Internal::Type::Enum

            ALL = :all
            NODE_WIDE = :nodeWide
            SCOPED = :scoped

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Sort key: `utilization` (default, cross-capability-safe), `currentUsage`,
          # `usageLimit`, `scopeSize`, `id`, or `createdAt`.
          module SortBy
            extend Stigg::Internal::Type::Enum

            UTILIZATION = :utilization
            CURRENT_USAGE = :currentUsage
            USAGE_LIMIT = :usageLimit
            SCOPE_SIZE = :scopeSize
            ID = :id
            CREATED_AT = :createdAt

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
