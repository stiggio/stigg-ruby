# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class DataExportMintScopedTokenParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::DataExportMintScopedTokenParams,
                Stigg::Internal::AnyHash
              )
            end

          # FE origin the resulting JWT is bound to (provider-side anti-fraud)
          sig { returns(String) }
          attr_accessor :application_origin

          # Pin the token to a specific warehouse connect flow
          sig { returns(T.nilable(String)) }
          attr_reader :destination_type

          sig { params(destination_type: String).void }
          attr_writer :destination_type

          sig do
            params(
              application_origin: String,
              destination_type: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # FE origin the resulting JWT is bound to (provider-side anti-fraud)
            application_origin:,
            # Pin the token to a specific warehouse connect flow
            destination_type: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                application_origin: String,
                destination_type: String,
                request_options: Stigg::RequestOptions
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
