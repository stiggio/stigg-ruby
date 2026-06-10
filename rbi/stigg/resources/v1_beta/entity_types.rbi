# typed: strong

module Stigg
  module Resources
    class V1Beta
      class EntityTypes
        # Returns a cursor-paginated list of entity types defined in the environment.
        # Entity types are vendor-defined categories of resource that can be governed
        # (e.g. Org, Team, User).
        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(
            Stigg::Internal::MyCursorIDPage[
              Stigg::Models::V1Beta::EntityTypeListResponse
            ]
          )
        end
        def list(
          # Query param: Return items that come after this cursor
          after: nil,
          # Query param: Return items that come before this cursor
          before: nil,
          # Query param: Maximum number of items to return
          limit: nil,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
          request_options: {}
        )
        end

        # Batched create-or-update of entity types. Existing types matched by id are
        # updated; new ids are created. Idempotent — re-submitting the same payload
        # converges to the same state.
        sig do
          params(
            types:
              T::Array[Stigg::V1Beta::EntityTypeUpsertParams::Type::OrHash],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(Stigg::Models::V1Beta::EntityTypeUpsertResponse)
        end
        def upsert(
          # Body param: Entity types to upsert (1–100 per request)
          types:,
          # Header param: Account ID — optional when authenticating with a user JWT (Bearer
          # token); falls back to the user's first membership. Ignored for API-key auth.
          x_account_id: nil,
          # Header param: Environment ID — required when authenticating with a user JWT
          # (Bearer token) on environment-scoped endpoints. Ignored for API-key auth (env is
          # intrinsic to the key).
          x_environment_id: nil,
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
