# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class DataExport
          class Destinations
            # Register a destination on the environment's DATA_EXPORT integration.
            # Lazy-creates the integration row + provider recipient on first call. Idempotent
            # on destinationId.
            sig do
              params(
                destination_id: String,
                destination_type: String,
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::DataExport::DestinationCreateResponse
              )
            end
            def create(
              # Body param: The provider destination ID returned by the embedded SDK on connect
              destination_id:,
              # Body param: The destination type (e.g. snowflake, bigquery)
              destination_type:,
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

            # Remove a destination from the DATA_EXPORT integration metadata. Idempotent.
            sig do
              params(
                destination_id: String,
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(
                Stigg::Models::V1::Events::DataExport::DestinationDeleteResponse
              )
            end
            def delete(
              # Provider destination ID to remove
              destination_id,
              # Account ID — optional when authenticating with a user JWT (Bearer token); falls
              # back to the user's first membership. Ignored for API-key auth.
              x_account_id: nil,
              # Environment ID — required when authenticating with a user JWT (Bearer token) on
              # environment-scoped endpoints. Ignored for API-key auth (env is intrinsic to the
              # key).
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
end
