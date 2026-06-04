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
              request_options: Stigg::RequestOptions::OrHash
            ).returns(
              Stigg::Models::V1::Events::DataExportMintScopedTokenResponse
            )
          end
          def mint_scoped_token(
            # FE origin the resulting JWT is bound to (provider-side anti-fraud)
            application_origin:,
            # Pin the token to a specific warehouse connect flow
            destination_type: nil,
            request_options: {}
          )
          end

          # Trigger a sync for one destination or all destinations under the provider
          # entity.
          sig do
            params(
              destination_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::V1::Events::DataExportTriggerSyncResponse)
          end
          def trigger_sync(
            # Provider destination ID to sync. Omit to sync all destinations.
            destination_id: nil,
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
