# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class Customers
            class Assignments
              # Returns a cursor-paginated list of capability assignments for the given
              # customer. An assignment ties an entity to a capability with a usage limit and
              # reset cadence.
              sig do
                params(
                  id: String,
                  after: String,
                  before: String,
                  capability_id: String,
                  entity_id: String,
                  limit: Integer,
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Internal::MyCursorIDPage[
                    Stigg::Models::V1::Events::Beta::Customers::AssignmentListResponse
                  ]
                )
              end
              def list(
                # The customer identifier (owner) the assignments belong to
                id,
                # Return items that come after this cursor
                after: nil,
                # Return items that come before this cursor
                before: nil,
                # Filter assignments to a specific capability refId
                capability_id: nil,
                # Filter assignments to a specific entity refId
                entity_id: nil,
                # Maximum number of items to return
                limit: nil,
                request_options: {}
              )
              end

              # Batched create-or-update of capability assignments. Existing assignments matched
              # by (entityId, capabilityId) are updated; new pairs are created. On update,
              # omitted fields (usageLimit, cadence) are preserved; on create both are required
              # by the governance service.
              sig do
                params(
                  id: String,
                  assignments:
                    T::Array[
                      Stigg::V1::Events::Beta::Customers::AssignmentUpsertParams::Assignment::OrHash
                    ],
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(
                  Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertResponse
                )
              end
              def upsert(
                # The customer identifier (owner) the assignments belong to
                id,
                # Assignments to upsert (1–100 per request)
                assignments:,
                request_options: {}
              )
              end

              # @api private
              sig { params(client: Stigg::Client).returns(T.attached_class) }
              def self.new(client:)
              end
            end
          end
        end
      end
    end
  end
end
