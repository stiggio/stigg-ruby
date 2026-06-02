# frozen_string_literal: true

module Stigg
  module Models
    module V1Beta
      module Customers
        # @see Stigg::Resources::V1Beta::Customers::Assignments#upsert
        class AssignmentUpsertResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data>]
          required :data,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data] }

          # @!method initialize(data:)
          #   Assignments after upsert.
          #
          #   @param data [Array<Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data>]

          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   Synthetic UUID identifier — also the cursor anchor for paginated lists
            #
            #   @return [String]
            required :id, String

            # @!attribute cadence
            #   Usage-reset cadence. Currently only `MONTH` is supported
            #
            #   @return [Symbol, Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence]
            required :cadence, enum: -> { Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence }

            # @!attribute capability_id
            #   The capability refId this assignment grants
            #
            #   @return [String]
            required :capability_id, String, api_name: :capabilityId

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute entity_id
            #   The entity refId this assignment is attached to
            #
            #   @return [String]
            required :entity_id, String, api_name: :entityId

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute usage_limit
            #   Maximum usage allowed within one cadence window
            #
            #   @return [Float]
            required :usage_limit, Float, api_name: :usageLimit

            # @!method initialize(id:, cadence:, capability_id:, created_at:, entity_id:, updated_at:, usage_limit:)
            #   A capability assignment for an entity belonging to a customer. Defines how much
            #   of the capability the entity may consume (`usageLimit`) and how often the
            #   counter resets (`cadence`).
            #
            #   @param id [String] Synthetic UUID identifier — also the cursor anchor for paginated lists
            #
            #   @param cadence [Symbol, Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence] Usage-reset cadence. Currently only `MONTH` is supported
            #
            #   @param capability_id [String] The capability refId this assignment grants
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param entity_id [String] The entity refId this assignment is attached to
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
            #
            #   @param usage_limit [Float] Maximum usage allowed within one cadence window

            # Usage-reset cadence. Currently only `MONTH` is supported
            #
            # @see Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data#cadence
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
