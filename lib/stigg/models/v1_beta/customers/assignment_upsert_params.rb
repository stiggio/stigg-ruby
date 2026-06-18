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
            #   The entity refId this assignment is attached to
            #
            #   @return [String]
            required :entity_id, String, api_name: :entityId

            # @!attribute cadence
            #   Usage-reset cadence (required on create). Currently only `MONTH` is supported
            #
            #   @return [Symbol, Stigg::Models::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence, nil]
            optional :cadence, enum: -> { Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence }

            # @!attribute currency_id
            #   Currency refId this assignment grants (credit budgets). Mutually exclusive with
            #   `featureId`.
            #
            #   @return [String, nil]
            optional :currency_id, String, api_name: :currencyId

            # @!attribute feature_id
            #   Feature refId this assignment grants. Mutually exclusive with `currencyId`.
            #
            #   @return [String, nil]
            optional :feature_id, String, api_name: :featureId

            # @!attribute parent_id
            #   Parent entity refId in the hierarchy. Omit to leave the current parent untouched
            #   (a new node defaults to a root); `null` detaches to a root; a refId sets or
            #   changes the parent. Reparenting an existing node is leaf-only.
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
            #   @param entity_id [String] The entity refId this assignment is attached to
            #
            #   @param cadence [Symbol, Stigg::Models::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence] Usage-reset cadence (required on create). Currently only `MONTH` is supported
            #
            #   @param currency_id [String] Currency refId this assignment grants (credit budgets). Mutually exclusive with
            #
            #   @param feature_id [String] Feature refId this assignment grants. Mutually exclusive with `currencyId`.
            #
            #   @param parent_id [String, nil] Parent entity refId in the hierarchy. Omit to leave the current parent untouched
            #
            #   @param scope_entity_ids [Array<String>]
            #
            #   @param usage_limit [Float, nil] Maximum usage allowed within one cadence window (required on create)

            # Usage-reset cadence (required on create). Currently only `MONTH` is supported
            #
            # @see Stigg::Models::V1Beta::Customers::AssignmentUpsertParams::Assignment#cadence
            module Cadence
              extend Stigg::Internal::Type::Enum

              MONTH = :MONTH

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
