# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class GovernanceListResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1Beta::Customers::GovernanceListResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`,
          # `PT1M`; `null` when the node has no usage configuration.
          sig { returns(T.nilable(String)) }
          attr_accessor :cadence

          # Usage consumed in the current cadence period (may lag the live counter by a
          # short interval).
          sig { returns(T.nilable(Float)) }
          attr_accessor :current_usage

          # Human-readable name of the entity, or null when none is set (display the entity
          # id instead).
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name

          # External id of the entity at this node.
          sig { returns(String) }
          attr_accessor :entity_id

          # External id of the entity type (e.g. `team`, `user`).
          sig { returns(String) }
          attr_accessor :entity_type_id

          # External id of the parent entity in the tree. `null` means the entity is either
          # a root or not yet placed in the hierarchy — placement rides on an assignment, so
          # an entity with no limits set has no parent yet. Both render at the top level;
          # use it to rebuild the tree.
          sig { returns(T.nilable(String)) }
          attr_accessor :parent_id

          # The configuration scope (entity ids). Empty is the node-wide configuration; a
          # non-empty set is a dimension-scoped sub-configuration.
          sig { returns(T::Array[String]) }
          attr_accessor :scope_entity_ids

          # Hard usage limit for this node per cadence period.
          sig { returns(T.nilable(Float)) }
          attr_accessor :usage_limit

          # Exclusive end of the cadence period in progress now — when usage resets. `null`
          # when the node has no usage configuration, or when a stored cadence cannot be
          # parsed.
          sig { returns(T.nilable(Time)) }
          attr_accessor :usage_period_end

          # Start of the cadence period in progress now, derived from the cadence and the
          # assignment anchor — it stays correct across a rollover. `null` when the node has
          # no usage configuration, or when a stored cadence cannot be parsed.
          sig { returns(T.nilable(Time)) }
          attr_accessor :usage_period_start

          # `currentUsage / usageLimit` (1 when usageLimit is 0 — always at limit). The
          # cross-capability-safe sort key.
          sig { returns(T.nilable(Float)) }
          attr_accessor :utilization

          # The metered currency ID (present when the configured capability is a credit
          # currency).
          sig { returns(T.nilable(String)) }
          attr_reader :currency_id

          sig { params(currency_id: String).void }
          attr_writer :currency_id

          # The metered feature ID (present when the configured capability is a feature).
          sig { returns(T.nilable(String)) }
          attr_reader :feature_id

          sig { params(feature_id: String).void }
          attr_writer :feature_id

          # A node of the governance hierarchy tree with its usage configuration (limit,
          # cadence, scope) and current usage. Usage is read from a periodically-refreshed
          # read model and may lag the live counter by a short interval; it never gates
          # access.
          sig do
            params(
              cadence: T.nilable(String),
              current_usage: T.nilable(Float),
              display_name: T.nilable(String),
              entity_id: String,
              entity_type_id: String,
              parent_id: T.nilable(String),
              scope_entity_ids: T::Array[String],
              usage_limit: T.nilable(Float),
              usage_period_end: T.nilable(Time),
              usage_period_start: T.nilable(Time),
              utilization: T.nilable(Float),
              currency_id: String,
              feature_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`,
            # `PT1M`; `null` when the node has no usage configuration.
            cadence:,
            # Usage consumed in the current cadence period (may lag the live counter by a
            # short interval).
            current_usage:,
            # Human-readable name of the entity, or null when none is set (display the entity
            # id instead).
            display_name:,
            # External id of the entity at this node.
            entity_id:,
            # External id of the entity type (e.g. `team`, `user`).
            entity_type_id:,
            # External id of the parent entity in the tree. `null` means the entity is either
            # a root or not yet placed in the hierarchy — placement rides on an assignment, so
            # an entity with no limits set has no parent yet. Both render at the top level;
            # use it to rebuild the tree.
            parent_id:,
            # The configuration scope (entity ids). Empty is the node-wide configuration; a
            # non-empty set is a dimension-scoped sub-configuration.
            scope_entity_ids:,
            # Hard usage limit for this node per cadence period.
            usage_limit:,
            # Exclusive end of the cadence period in progress now — when usage resets. `null`
            # when the node has no usage configuration, or when a stored cadence cannot be
            # parsed.
            usage_period_end:,
            # Start of the cadence period in progress now, derived from the cadence and the
            # assignment anchor — it stays correct across a rollover. `null` when the node has
            # no usage configuration, or when a stored cadence cannot be parsed.
            usage_period_start:,
            # `currentUsage / usageLimit` (1 when usageLimit is 0 — always at limit). The
            # cross-capability-safe sort key.
            utilization:,
            # The metered currency ID (present when the configured capability is a credit
            # currency).
            currency_id: nil,
            # The metered feature ID (present when the configured capability is a feature).
            feature_id: nil
          )
          end

          sig do
            override.returns(
              {
                cadence: T.nilable(String),
                current_usage: T.nilable(Float),
                display_name: T.nilable(String),
                entity_id: String,
                entity_type_id: String,
                parent_id: T.nilable(String),
                scope_entity_ids: T::Array[String],
                usage_limit: T.nilable(Float),
                usage_period_end: T.nilable(Time),
                usage_period_start: T.nilable(Time),
                utilization: T.nilable(Float),
                currency_id: String,
                feature_id: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
