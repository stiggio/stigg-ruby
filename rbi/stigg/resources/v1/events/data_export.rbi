# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class DataExport
          sig do
            returns(Stigg::Resources::V1::Events::DataExport::Destinations)
          end
          attr_reader :destinations

          # Mint a scoped JWT for the FE embedded SDK. Lazy-creates the DATA_EXPORT
          # integration if needed.
          sig do
            params(
              application_origin: String,
              destination_type: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Events::DataExportMintScopedTokenResponse
            )
          end
          def mint_scoped_token(
            # Body param: FE origin the resulting JWT is bound to (provider-side anti-fraud)
            application_origin:,
            # Body param: Pin the token to a specific warehouse connect flow
            destination_type: nil,
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

          # Trigger a sync for one destination or all destinations under the provider
          # entity.
          sig do
            params(
              destination_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::DataExportTriggerSyncResponse)
          end
          def trigger_sync(
            # Body param: Provider destination ID to sync. Omit to sync all destinations.
            destination_id: nil,
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
