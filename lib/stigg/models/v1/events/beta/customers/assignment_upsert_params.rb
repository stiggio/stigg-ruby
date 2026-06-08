# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            # @see Stigg::Resources::V1::Events::Beta::Customers::Assignments#upsert
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
              #   @return [Array<Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment>]
              required :assignments,
                       -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment] }

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
              #   @param assignments [Array<Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment>] Assignments to upsert (1–100 per request)
              #
              #   @param x_account_id [String]
              #
              #   @param x_environment_id [String]
              #
              #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

              class Assignment < Stigg::Internal::Type::BaseModel
                # @!attribute capability_id
                #   The capability refId this assignment grants
                #
                #   @return [String]
                required :capability_id, String, api_name: :capabilityId

                # @!attribute entity_id
                #   The entity refId this assignment is attached to
                #
                #   @return [String]
                required :entity_id, String, api_name: :entityId

                # @!attribute cadence
                #   Usage-reset cadence (required on create). Currently only `MONTH` is supported
                #
                #   @return [Symbol, Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment::Cadence, nil]
                optional :cadence,
                         enum: -> { Stigg::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment::Cadence }

                # @!attribute usage_limit
                #   Maximum usage allowed within one cadence window (required on create)
                #
                #   @return [Float, nil]
                optional :usage_limit, Float, api_name: :usageLimit

                # @!method initialize(capability_id:, entity_id:, cadence: nil, usage_limit: nil)
                #   A single assignment to create or update. The natural key is the
                #   `(entityId, capabilityId)` pair. On create both `usageLimit` and `cadence` are
                #   required; on update they may be omitted individually to preserve the existing
                #   value.
                #
                #   @param capability_id [String] The capability refId this assignment grants
                #
                #   @param entity_id [String] The entity refId this assignment is attached to
                #
                #   @param cadence [Symbol, Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment::Cadence] Usage-reset cadence (required on create). Currently only `MONTH` is supported
                #
                #   @param usage_limit [Float] Maximum usage allowed within one cadence window (required on create)

                # Usage-reset cadence (required on create). Currently only `MONTH` is supported
                #
                # @see Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment#cadence
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
  end
end
