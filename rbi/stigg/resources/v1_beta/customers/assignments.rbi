# typed: strong

module Stigg
  module Resources
    class V1Beta
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
              currency_id: String,
              entity_id: String,
              feature_id: String,
              limit: Integer,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Internal::MyCursorIDPage[
                Stigg::Models::V1Beta::Customers::AssignmentListResponse
              ]
            )
          end
          def list(
            # Path param: The customer identifier (owner) the assignments belong to
            id,
            # Query param: Return items that come after this cursor
            after: nil,
            # Query param: Return items that come before this cursor
            before: nil,
            # Query param: Filter assignments to a specific currency, by its ID. Mutually
            # exclusive with `featureId`.
            currency_id: nil,
            # Query param: Filter assignments to a specific entity ID
            entity_id: nil,
            # Query param: Filter assignments to a specific feature, by its ID. Mutually
            # exclusive with `currencyId`.
            feature_id: nil,
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

          # Batched create-or-update of capability assignments. Existing assignments matched
          # by (entityId, capabilityId) are updated; new pairs are created. On update,
          # omitted fields (usageLimit, cadence) are preserved; on create both are required
          # by the governance service.
          sig do
            params(
              id: String,
              assignments:
                T::Array[
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::OrHash
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse
            )
          end
          def upsert(
            # Path param: The customer identifier (owner) the assignments belong to
            id,
            # Body param: Assignments to upsert (1–100 per request)
            assignments:,
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
end
