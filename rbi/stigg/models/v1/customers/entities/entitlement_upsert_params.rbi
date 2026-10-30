# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        module Entities
          class EntitlementUpsertParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Customers::Entities::EntitlementUpsertParams,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # Entity entitlements to upsert (1–100 per request)
            sig do
              returns(
                T::Array[
                  Stigg::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement
                ]
              )
            end
            attr_accessor :entity_entitlements

            sig { returns(T.nilable(String)) }
            attr_reader :x_account_id

            sig { params(x_account_id: String).void }
            attr_writer :x_account_id

            sig { returns(T.nilable(String)) }
            attr_reader :x_environment_id

            sig { params(x_environment_id: String).void }
            attr_writer :x_environment_id

            sig do
              params(
                id: String,
                entity_entitlements:
                  T::Array[
                    Stigg::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement::OrHash
                  ],
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              # Entity entitlements to upsert (1–100 per request)
              entity_entitlements:,
              x_account_id: nil,
              x_environment_id: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  entity_entitlements:
                    T::Array[
                      Stigg::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement
                    ],
                  x_account_id: String,
                  x_environment_id: String,
                  request_options: Stigg::RequestOptions
                }
              )
            end
            def to_hash
            end

            class EntityEntitlement < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement,
                    Stigg::Internal::AnyHash
                  )
                end

              # The entity ID this entity entitlement is attached to
              sig { returns(String) }
              attr_accessor :entity_id

              # Usage-reset cadence (required on create) as an ISO-8601 single-unit duration,
              # e.g. `P1M`, `P30D`, `PT1M`.
              sig { returns(T.nilable(String)) }
              attr_reader :cadence

              sig { params(cadence: String).void }
              attr_writer :cadence

              # Currency ID this entity entitlement grants (credit limits). Mutually exclusive
              # with `featureId`.
              sig { returns(T.nilable(String)) }
              attr_reader :currency_id

              sig { params(currency_id: String).void }
              attr_writer :currency_id

              # Feature ID this entity entitlement grants. Mutually exclusive with `currencyId`.
              sig { returns(T.nilable(String)) }
              attr_reader :feature_id

              sig { params(feature_id: String).void }
              attr_writer :feature_id

              # Parent entity ID in the hierarchy. Omit to leave the current parent untouched (a
              # new node defaults to a root); `null` detaches to a root; an ID sets or changes
              # the parent. Reparenting or detaching an existing node is leaf-only; place a
              # parent before its children, or in the same batch.
              sig { returns(T.nilable(String)) }
              attr_accessor :parent_id

              # Dimension-scoped sub-limit: the set of entity IDs this limit applies to
              # (order-insensitive, unique, at most 5). Omit or leave empty for the node-wide
              # limit.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :scope_entity_ids

              sig { params(scope_entity_ids: T::Array[String]).void }
              attr_writer :scope_entity_ids

              # Maximum usage allowed within one cadence window (required on create)
              sig { returns(T.nilable(Float)) }
              attr_accessor :usage_limit

              # A single entity entitlement to create or update. Identify the feature or
              # currency with exactly one of `featureId` or `currencyId`. The natural key is the
              # `(entityId, featureId or currencyId, scopeEntityIds)` triple. On create both
              # `usageLimit` and `cadence` are required; on update they may be omitted
              # individually to preserve the existing value.
              sig do
                params(
                  entity_id: String,
                  cadence: String,
                  currency_id: String,
                  feature_id: String,
                  parent_id: T.nilable(String),
                  scope_entity_ids: T::Array[String],
                  usage_limit: T.nilable(Float)
                ).returns(T.attached_class)
              end
              def self.new(
                # The entity ID this entity entitlement is attached to
                entity_id:,
                # Usage-reset cadence (required on create) as an ISO-8601 single-unit duration,
                # e.g. `P1M`, `P30D`, `PT1M`.
                cadence: nil,
                # Currency ID this entity entitlement grants (credit limits). Mutually exclusive
                # with `featureId`.
                currency_id: nil,
                # Feature ID this entity entitlement grants. Mutually exclusive with `currencyId`.
                feature_id: nil,
                # Parent entity ID in the hierarchy. Omit to leave the current parent untouched (a
                # new node defaults to a root); `null` detaches to a root; an ID sets or changes
                # the parent. Reparenting or detaching an existing node is leaf-only; place a
                # parent before its children, or in the same batch.
                parent_id: nil,
                # Dimension-scoped sub-limit: the set of entity IDs this limit applies to
                # (order-insensitive, unique, at most 5). Omit or leave empty for the node-wide
                # limit.
                scope_entity_ids: nil,
                # Maximum usage allowed within one cadence window (required on create)
                usage_limit: nil
              )
              end

              sig do
                override.returns(
                  {
                    entity_id: String,
                    cadence: String,
                    currency_id: String,
                    feature_id: String,
                    parent_id: T.nilable(String),
                    scope_entity_ids: T::Array[String],
                    usage_limit: T.nilable(Float)
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
  end
end
