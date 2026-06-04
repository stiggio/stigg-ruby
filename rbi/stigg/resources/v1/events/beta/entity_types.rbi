# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Beta
          class EntityTypes
            # Returns a cursor-paginated list of entity types defined in the environment.
            # Entity types are vendor-defined categories of resource that can be governed
            # (e.g. Org, Team, User).
            sig do
              params(
                after: String,
                before: String,
                limit: Integer,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Internal::MyCursorIDPage[
                  Stigg::Models::V1::Events::Beta::EntityTypeListResponse
                ]
              )
            end
            def list(
              # Return items that come after this cursor
              after: nil,
              # Return items that come before this cursor
              before: nil,
              # Maximum number of items to return
              limit: nil,
              request_options: {}
            )
            end

            # Batched create-or-update of entity types. Existing types matched by id are
            # updated; new ids are created. Idempotent — re-submitting the same payload
            # converges to the same state.
            sig do
              params(
                types:
                  T::Array[
                    Stigg::V1::Events::Beta::EntityTypeUpsertParams::Type::OrHash
                  ],
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::Beta::EntityTypeUpsertResponse
              )
            end
            def upsert(
              # Entity types to upsert (1–100 per request)
              types:,
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
