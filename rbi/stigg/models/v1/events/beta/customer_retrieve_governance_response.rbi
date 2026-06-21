# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Beta
          class CustomerRetrieveGovernanceResponse < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse,
                  Stigg::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data
                ]
              )
            end
            attr_accessor :data

            sig do
              returns(
                Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination
              )
            end
            attr_reader :pagination

            sig do
              params(
                pagination:
                  Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination::OrHash
              ).void
            end
            attr_writer :pagination

            # Paginated list of governance tree nodes, each with its usage configuration and
            # current usage.
            sig do
              params(
                data:
                  T::Array[
                    Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data::OrHash
                  ],
                pagination:
                  Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:, pagination:)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data
                    ],
                  pagination:
                    Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination
                }
              )
            end
            def to_hash
            end

            class Data < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Data,
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

              # External id of the entity at this node.
              sig { returns(String) }
              attr_accessor :entity_id

              # External id of the entity type (e.g. `team`, `user`).
              sig { returns(String) }
              attr_accessor :entity_type

              # External id of the parent entity in the tree; `null` for a root. Use it to
              # rebuild the tree.
              sig { returns(T.nilable(String)) }
              attr_accessor :parent_id

              # The configuration scope (entity ids). Empty is the node-wide configuration; a
              # non-empty set is a dimension-scoped sub-configuration.
              sig { returns(T::Array[String]) }
              attr_accessor :scope_entity_ids

              # Hard usage limit for this node per cadence period.
              sig { returns(T.nilable(Float)) }
              attr_accessor :usage_limit

              # Exclusive end of the cadence period — when usage resets; `null` once the period
              # has rolled over.
              sig { returns(T.nilable(Time)) }
              attr_accessor :usage_period_end

              # Start of the cadence period the usage snapshot belongs to; `null` once the
              # period has rolled over.
              sig { returns(T.nilable(Time)) }
              attr_accessor :usage_period_start

              # `currentUsage / usageLimit` (1 when usageLimit is 0 — always at limit). The
              # cross-capability-safe sort key.
              sig { returns(T.nilable(Float)) }
              attr_accessor :utilization

              # The metered currency refId (present when the configured capability is a credit
              # currency).
              sig { returns(T.nilable(String)) }
              attr_reader :currency_id

              sig { params(currency_id: String).void }
              attr_writer :currency_id

              # The metered feature refId (present when the configured capability is a feature).
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
                  entity_id: String,
                  entity_type: String,
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
                # External id of the entity at this node.
                entity_id:,
                # External id of the entity type (e.g. `team`, `user`).
                entity_type:,
                # External id of the parent entity in the tree; `null` for a root. Use it to
                # rebuild the tree.
                parent_id:,
                # The configuration scope (entity ids). Empty is the node-wide configuration; a
                # non-empty set is a dimension-scoped sub-configuration.
                scope_entity_ids:,
                # Hard usage limit for this node per cadence period.
                usage_limit:,
                # Exclusive end of the cadence period — when usage resets; `null` once the period
                # has rolled over.
                usage_period_end:,
                # Start of the cadence period the usage snapshot belongs to; `null` once the
                # period has rolled over.
                usage_period_start:,
                # `currentUsage / usageLimit` (1 when usageLimit is 0 — always at limit). The
                # cross-capability-safe sort key.
                utilization:,
                # The metered currency refId (present when the configured capability is a credit
                # currency).
                currency_id: nil,
                # The metered feature refId (present when the configured capability is a feature).
                feature_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    cadence: T.nilable(String),
                    current_usage: T.nilable(Float),
                    entity_id: String,
                    entity_type: String,
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

            class Pagination < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::Beta::CustomerRetrieveGovernanceResponse::Pagination,
                    Stigg::Internal::AnyHash
                  )
                end

              # Cursor for fetching the next page of results, or null if no additional pages
              # exist
              sig { returns(T.nilable(String)) }
              attr_accessor :next_

              sig { params(next_: T.nilable(String)).returns(T.attached_class) }
              def self.new(
                # Cursor for fetching the next page of results, or null if no additional pages
                # exist
                next_:
              )
              end

              sig { override.returns({ next_: T.nilable(String) }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
