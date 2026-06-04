# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class DataExportMintScopedTokenResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::DataExportMintScopedTokenResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Scoped token + expiry + provider-specific metadata for the FE SDK.
          sig do
            returns(
              Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Scoped token + expiry + provider-specific metadata for the FE SDK.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::DataExportMintScopedTokenResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Provider scoped JWT
            sig { returns(String) }
            attr_accessor :token

            # ISO8601 token expiry
            sig { returns(String) }
            attr_accessor :expires_at

            # Provider-specific extras the FE embedded SDK needs
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :provider_metadata

            # Scoped token + expiry + provider-specific metadata for the FE SDK.
            sig do
              params(
                token: String,
                expires_at: String,
                provider_metadata: T::Hash[Symbol, T.anything]
              ).returns(T.attached_class)
            end
            def self.new(
              # Provider scoped JWT
              token:,
              # ISO8601 token expiry
              expires_at:,
              # Provider-specific extras the FE embedded SDK needs
              provider_metadata:
            )
            end

            sig do
              override.returns(
                {
                  token: String,
                  expires_at: String,
                  provider_metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
