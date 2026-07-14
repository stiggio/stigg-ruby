# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      # @see Stigg::Resources::V1Beta::Customers#retrieve_governance
      class CustomerRetrieveGovernanceParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute after
        #   Return items that come after this cursor
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute currency_ids
        #   Currency ids to include, repeated per value (e.g. `?currencyIds=credits`). Omit
        #   both featureIds and currencyIds for tree mode.
        #
        #   @return [Array<String>, nil]
        optional :currency_ids, Stigg::Internal::Type::ArrayOf[String]

        # @!attribute entity_id_search
        #   Case-insensitive substring match on the entity id (`%`/`_` matched literally).
        #
        #   @return [String, nil]
        optional :entity_id_search, String

        # @!attribute entity_type_ids
        #   Filter to one or more entity types, repeated per value (e.g.
        #   `?entityTypeIds=team&entityTypeIds=user`).
        #
        #   @return [Array<String>, nil]
        optional :entity_type_ids, Stigg::Internal::Type::ArrayOf[String]

        # @!attribute feature_ids
        #   Feature ids to include, repeated per value (e.g.
        #   `?featureIds=ai-tokens&featureIds=seats`). Omit both featureIds and currencyIds
        #   for tree mode — every node in the hierarchy with no usage configuration
        #   attached.
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
        #   @return [Symbol, Stigg::Models::V1Beta::CustomerRetrieveGovernanceParams::Order, nil]
        optional :order, enum: -> { Stigg::V1Beta::CustomerRetrieveGovernanceParams::Order }

        # @!attribute scope
        #   Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or
        #   `scoped` (non-empty only).
        #
        #   @return [Symbol, Stigg::Models::V1Beta::CustomerRetrieveGovernanceParams::Scope, nil]
        optional :scope, enum: -> { Stigg::V1Beta::CustomerRetrieveGovernanceParams::Scope }

        # @!attribute sort_by
        #   Sort key: `utilization` (default, cross-capability-safe), `currentUsage`,
        #   `usageLimit`, `scopeSize`, `id`, or `createdAt`.
        #
        #   @return [Symbol, Stigg::Models::V1Beta::CustomerRetrieveGovernanceParams::SortBy, nil]
        optional :sort_by, enum: -> { Stigg::V1Beta::CustomerRetrieveGovernanceParams::SortBy }

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(id:, after: nil, currency_ids: nil, entity_id_search: nil, entity_type_ids: nil, feature_ids: nil, limit: nil, min_utilization: nil, order: nil, scope: nil, sort_by: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1Beta::CustomerRetrieveGovernanceParams} for more details.
        #
        #   @param id [String]
        #
        #   @param after [String] Return items that come after this cursor
        #
        #   @param currency_ids [Array<String>] Currency ids to include, repeated per value (e.g. `?currencyIds=credits`). Omit
        #
        #   @param entity_id_search [String] Case-insensitive substring match on the entity id (`%`/`_` matched literally).
        #
        #   @param entity_type_ids [Array<String>] Filter to one or more entity types, repeated per value (e.g. `?entityTypeIds=tea
        #
        #   @param feature_ids [Array<String>] Feature ids to include, repeated per value (e.g. `?featureIds=ai-tokens&featureI
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param min_utilization [Float] Only nodes with utilization ≥ this value (e.g. 0.8 for ≥80%, 1 for at/over limit
        #
        #   @param order [Symbol, Stigg::Models::V1Beta::CustomerRetrieveGovernanceParams::Order] Sort direction: `asc` or `desc` (default `desc`).
        #
        #   @param scope [Symbol, Stigg::Models::V1Beta::CustomerRetrieveGovernanceParams::Scope] Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or `scop
        #
        #   @param sort_by [Symbol, Stigg::Models::V1Beta::CustomerRetrieveGovernanceParams::SortBy] Sort key: `utilization` (default, cross-capability-safe), `currentUsage`, `usage
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
