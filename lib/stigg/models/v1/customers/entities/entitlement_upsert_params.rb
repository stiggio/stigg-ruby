# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        module Entities
          # @see Stigg::Resources::V1::Customers::Entities::Entitlements#upsert
          class EntitlementUpsertParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute entity_entitlements
            #   Entity entitlements to upsert (1–100 per request)
            #
            #   @return [Array<Stigg::Models::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement>]
            required :entity_entitlements,
                     -> {
                       Stigg::Internal::Type::ArrayOf[Stigg::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement]
                     },
                     api_name: :entityEntitlements

            # @!attribute x_account_id
            #
            #   @return [String, nil]
            optional :x_account_id, String

            # @!attribute x_environment_id
            #
            #   @return [String, nil]
            optional :x_environment_id, String

            # @!method initialize(id:, entity_entitlements:, x_account_id: nil, x_environment_id: nil, request_options: {})
            #   @param id [String]
            #
            #   @param entity_entitlements [Array<Stigg::Models::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement>] Entity entitlements to upsert (1–100 per request)
            #
            #   @param x_account_id [String]
            #
            #   @param x_environment_id [String]
            #
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

            class EntityEntitlement < Stigg::Internal::Type::BaseModel
              # @!attribute entity_id
              #   The entity ID this entity entitlement is attached to
              #
              #   @return [String]
              required :entity_id, String, api_name: :entityId

              # @!attribute cadence
              #   Usage-reset cadence (required on create) as an ISO-8601 single-unit duration,
              #   e.g. `P1M`, `P30D`, `PT1M`.
              #
              #   @return [String, nil]
              optional :cadence, String

              # @!attribute currency_id
              #   Currency ID this entity entitlement grants (credit limits). Mutually exclusive
              #   with `featureId`.
              #
              #   @return [String, nil]
              optional :currency_id, String, api_name: :currencyId

              # @!attribute feature_id
              #   Feature ID this entity entitlement grants. Mutually exclusive with `currencyId`.
              #
              #   @return [String, nil]
              optional :feature_id, String, api_name: :featureId

              # @!attribute parent_id
              #   Parent entity ID in the hierarchy. Omit to leave the current parent untouched (a
              #   new node defaults to a root); `null` detaches to a root; an ID sets or changes
              #   the parent. Reparenting or detaching an existing node is leaf-only; place a
              #   parent before its children, or in the same batch.
              #
              #   @return [String, nil]
              optional :parent_id, String, api_name: :parentId, nil?: true

              # @!attribute scope_entity_ids
              #   Dimension-scoped sub-limit: the set of entity IDs this limit applies to
              #   (order-insensitive, unique, at most 5). Omit or leave empty for the node-wide
              #   limit.
              #
              #   @return [Array<String>, nil]
              optional :scope_entity_ids, Stigg::Internal::Type::ArrayOf[String], api_name: :scopeEntityIds

              # @!attribute usage_limit
              #   Maximum usage allowed within one cadence window (required on create)
              #
              #   @return [Float, nil]
              optional :usage_limit, Float, api_name: :usageLimit, nil?: true

              # @!method initialize(entity_id:, cadence: nil, currency_id: nil, feature_id: nil, parent_id: nil, scope_entity_ids: nil, usage_limit: nil)
              #   Some parameter documentations has been truncated, see
              #   {Stigg::Models::V1::Customers::Entities::EntitlementUpsertParams::EntityEntitlement}
              #   for more details.
              #
              #   A single entity entitlement to create or update. Identify the feature or
              #   currency with exactly one of `featureId` or `currencyId`. The natural key is the
              #   `(entityId, featureId or currencyId, scopeEntityIds)` triple. On create both
              #   `usageLimit` and `cadence` are required; on update they may be omitted
              #   individually to preserve the existing value.
              #
              #   @param entity_id [String] The entity ID this entity entitlement is attached to
              #
              #   @param cadence [String] Usage-reset cadence (required on create) as an ISO-8601 single-unit duration, e.
              #
              #   @param currency_id [String] Currency ID this entity entitlement grants (credit limits). Mutually exclusive w
              #
              #   @param feature_id [String] Feature ID this entity entitlement grants. Mutually exclusive with `currencyId`.
              #
              #   @param parent_id [String, nil] Parent entity ID in the hierarchy. Omit to leave the current parent untouched (a
              #
              #   @param scope_entity_ids [Array<String>] Dimension-scoped sub-limit: the set of entity IDs this limit applies to (order-i
              #
              #   @param usage_limit [Float, nil] Maximum usage allowed within one cadence window (required on create)
            end
          end
        end
      end
    end
  end
end
