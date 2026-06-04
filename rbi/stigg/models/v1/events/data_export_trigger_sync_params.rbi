# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class DataExportTriggerSyncParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::DataExportTriggerSyncParams,
                Stigg::Internal::AnyHash
              )
            end

          # Provider destination ID to sync. Omit to sync all destinations.
          sig { returns(T.nilable(String)) }
          attr_reader :destination_id

          sig { params(destination_id: String).void }
          attr_writer :destination_id

          sig do
            params(
              destination_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Provider destination ID to sync. Omit to sync all destinations.
            destination_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { destination_id: String, request_options: Stigg::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
