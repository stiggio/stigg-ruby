# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Assignments#upsert
        class AssignmentUpsertParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute assignments
          #   Assignments to upsert (1–100 per request)
          #
          #   @return [Array<Stigg::Models::V1Beta::Customers::AssignmentUpsertParams::Assignment>]
          required :assignments,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment] }

          # @!attribute x_account_id
          #
          #   @return [String, nil]
          optional :x_account_id, String

          # @!attribute x_environment_id
          #
          #   @return [String, nil]
          optional :x_environment_id, String

          # @!method initialize(id:, assignments:, x_account_id: nil, x_environment_id: nil, request_options: {})
          #   @param id [String]
          #
          #   @param assignments [Array<Stigg::Models::V1Beta::Customers::AssignmentUpsertParams::Assignment>] Assignments to upsert (1–100 per request)
          #
          #   @param x_account_id [String]
          #
          #   @param x_environment_id [String]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          class Assignment < Stigg::Internal::Type::BaseModel
            # @!attribute entity_id
            #   The entity ID this assignment is attached to
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
            #   Currency ID this assignment grants (credit budgets). Mutually exclusive with
            #   `featureId`.
            #
            #   @return [String, nil]
            optional :currency_id, String, api_name: :currencyId

            # @!attribute feature_id
            #   Feature ID this assignment grants. Mutually exclusive with `currencyId`.
            #
            #   @return [String, nil]
            optional :feature_id, String, api_name: :featureId

            # @!attribute parent_id
            #   Parent entity ID in the hierarchy. Omit to leave the current parent untouched (a
            #   new node defaults to a root); `null` detaches to a root; an ID sets or changes
            #   the parent. Reparenting an existing node is leaf-only.
            #
            #   @return [String, nil]
            optional :parent_id, String, api_name: :parentId, nil?: true

            # @!attribute scope_entity_ids
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
            #   {Stigg::Models::V1Beta::Customers::AssignmentUpsertParams::Assignment} for more
            #   details.
            #
            #   A single assignment to create or update. Identify the capability with exactly
            #   one of `featureId` or `currencyId`. The natural key is the
            #   `(entityId, capability, scopeEntityIds)` triple. On create both `usageLimit` and
            #   `cadence` are required; on update they may be omitted individually to preserve
            #   the existing value.
            #
            #   @param entity_id [String] The entity ID this assignment is attached to
            #
            #   @param cadence [String] Usage-reset cadence (required on create) as an ISO-8601 single-unit duration, e.
            #
            #   @param currency_id [String] Currency ID this assignment grants (credit budgets). Mutually exclusive with `fe
            #
            #   @param feature_id [String] Feature ID this assignment grants. Mutually exclusive with `currencyId`.
            #
            #   @param parent_id [String, nil] Parent entity ID in the hierarchy. Omit to leave the current parent untouched (a
            #
            #   @param scope_entity_ids [Array<String>]
            #
            #   @param usage_limit [Float, nil] Maximum usage allowed within one cadence window (required on create)
          end
        end
      end
    end
  end
end
