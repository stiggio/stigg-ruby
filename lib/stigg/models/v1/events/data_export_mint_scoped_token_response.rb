# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        # @see Stigg::Resources::V1::Events::DataExport#mint_scoped_token
        class DataExportMintScopedTokenResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #   Scoped token + expiry + provider-specific metadata for the FE SDK.
          #
          #   @return [Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data]
          required :data, -> { Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data }

          # @!method initialize(data:)
          #   Response object
          #
          #   @param data [Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data] Scoped token + expiry + provider-specific metadata for the FE SDK.

          # @see Stigg::Models::V1::Events::DataExportMintScopedTokenResponse#data
          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute token
            #   Provider scoped JWT
            #
            #   @return [String]
            required :token, String

            # @!attribute expires_at
            #   ISO8601 token expiry
            #
            #   @return [String]
            required :expires_at, String, api_name: :expiresAt

            # @!attribute provider_metadata
            #   Provider-specific extras the FE embedded SDK needs
            #
            #   @return [Hash{Symbol=>Object}]
            required :provider_metadata,
                     Stigg::Internal::Type::HashOf[Stigg::Internal::Type::Unknown],
                     api_name: :providerMetadata

            # @!method initialize(token:, expires_at:, provider_metadata:)
            #   Scoped token + expiry + provider-specific metadata for the FE SDK.
            #
            #   @param token [String] Provider scoped JWT
            #
            #   @param expires_at [String] ISO8601 token expiry
            #
            #   @param provider_metadata [Hash{Symbol=>Object}] Provider-specific extras the FE embedded SDK needs
          end
        end
      end
    end
  end
end
