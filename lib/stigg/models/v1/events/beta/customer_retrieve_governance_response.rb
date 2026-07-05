# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          # @see Stigg::Resources::V1::Events::Beta::Customers#retrieve_governance
          class CustomerRetrieveGovernanceResponse < Stigg::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data>]
            required :data,
                     -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data] }

            # @!attribute pagination
            #
            #   @return [Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination]
            required :pagination,
                     -> { Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination }

            # @!method initialize(data:, pagination:)
            #   Paginated list of governance tree nodes, each with its usage configuration and
            #   current usage.
            #
            #   @param data [Array<Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data>]
            #   @param pagination [Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination]

            class Data < Stigg::Internal::Type::BaseModel
              # @!attribute cadence
              #   Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`,
              #   `PT1M`; `null` when the node has no usage configuration.
              #
              #   @return [String, nil]
              required :cadence, String, nil?: true

              # @!attribute current_usage
              #   Usage consumed in the current cadence period (may lag the live counter by a
              #   short interval).
              #
              #   @return [Float, nil]
              required :current_usage, Float, api_name: :currentUsage, nil?: true

              # @!attribute entity_id
              #   External id of the entity at this node.
              #
              #   @return [String]
              required :entity_id, String, api_name: :entityId

              # @!attribute entity_type_id
              #   External id of the entity type (e.g. `team`, `user`).
              #
              #   @return [String]
              required :entity_type_id, String, api_name: :entityTypeId

              # @!attribute parent_id
              #   External id of the parent entity in the tree; `null` for a root. Use it to
              #   rebuild the tree.
              #
              #   @return [String, nil]
              required :parent_id, String, api_name: :parentId, nil?: true

              # @!attribute scope_entity_ids
              #   The configuration scope (entity ids). Empty is the node-wide configuration; a
              #   non-empty set is a dimension-scoped sub-configuration.
              #
              #   @return [Array<String>]
              required :scope_entity_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :scopeEntityIds

              # @!attribute usage_limit
              #   Hard usage limit for this node per cadence period.
              #
              #   @return [Float, nil]
              required :usage_limit, Float, api_name: :usageLimit, nil?: true

              # @!attribute usage_period_end
              #   Exclusive end of the cadence period — when usage resets; `null` once the period
              #   has rolled over.
              #
              #   @return [Time, nil]
              required :usage_period_end, Time, api_name: :usagePeriodEnd, nil?: true

              # @!attribute usage_period_start
              #   Start of the cadence period the usage snapshot belongs to; `null` once the
              #   period has rolled over.
              #
              #   @return [Time, nil]
              required :usage_period_start, Time, api_name: :usagePeriodStart, nil?: true

              # @!attribute utilization
              #   `currentUsage / usageLimit` (1 when usageLimit is 0 — always at limit). The
              #   cross-capability-safe sort key.
              #
              #   @return [Float, nil]
              required :utilization, Float, nil?: true

              # @!attribute currency_id
              #   The metered currency ID (present when the configured capability is a credit
              #   currency).
              #
              #   @return [String, nil]
              optional :currency_id, String, api_name: :currencyId

              # @!attribute feature_id
              #   The metered feature ID (present when the configured capability is a feature).
              #
              #   @return [String, nil]
              optional :feature_id, String, api_name: :featureId

              # @!method initialize(cadence:, current_usage:, entity_id:, entity_type_id:, parent_id:, scope_entity_ids:, usage_limit:, usage_period_end:, usage_period_start:, utilization:, currency_id: nil, feature_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data} for
              #   more details.
              #
              #   A node of the governance hierarchy tree with its usage configuration (limit,
              #   cadence, scope) and current usage. Usage is read from a periodically-refreshed
              #   read model and may lag the live counter by a short interval; it never gates
              #   access.
              #
              #   @param cadence [String, nil] Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`, `PT
              #
              #   @param current_usage [Float, nil] Usage consumed in the current cadence period (may lag the live counter by a shor
              #
              #   @param entity_id [String] External id of the entity at this node.
              #
              #   @param entity_type_id [String] External id of the entity type (e.g. `team`, `user`).
              #
              #   @param parent_id [String, nil] External id of the parent entity in the tree; `null` for a root. Use it to rebui
              #
              #   @param scope_entity_ids [Array<String>] The configuration scope (entity ids). Empty is the node-wide configuration; a no
              #
              #   @param usage_limit [Float, nil] Hard usage limit for this node per cadence period.
              #
              #   @param usage_period_end [Time, nil] Exclusive end of the cadence period — when usage resets; `null` once the period
              #
              #   @param usage_period_start [Time, nil] Start of the cadence period the usage snapshot belongs to; `null` once the perio
              #
              #   @param utilization [Float, nil] `currentUsage / usageLimit` (1 when usageLimit is 0 — always at limit). The cros
              #
              #   @param currency_id [String] The metered currency ID (present when the configured capability is a credit curr
              #
              #   @param feature_id [String] The metered feature ID (present when the configured capability is a feature).
            end

            # @see Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse#pagination
            class Pagination < Stigg::Internal::Type::BaseModel
              # @!attribute next_
              #   Cursor for fetching the next page of results, or null if no additional pages
              #   exist
              #
              #   @return [String, nil]
              required :next_, String, api_name: :next, nil?: true

              # @!method initialize(next_:)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination}
              #   for more details.
              #
              #   @param next_ [String, nil] Cursor for fetching the next page of results, or null if no additional pages exi
            end
          end
        end
      end
    end
  end
end
