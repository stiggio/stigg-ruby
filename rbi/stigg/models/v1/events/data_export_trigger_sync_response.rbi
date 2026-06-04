# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class DataExportTriggerSyncResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::DataExportTriggerSyncResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Per-destination trigger results across the batch.
          sig do
            returns(
              Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Per-destination trigger results across the batch.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Per-destination trigger results
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::Result
                ]
              )
            end
            attr_accessor :results

            # Per-destination trigger results across the batch.
            sig do
              params(
                results:
                  T::Array[
                    Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::Result::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Per-destination trigger results
              results:
            )
            end

            sig do
              override.returns(
                {
                  results:
                    T::Array[
                      Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::Result
                    ]
                }
              )
            end
            def to_hash
            end

            class Result < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::DataExportTriggerSyncResponse::Data::Result,
                    Stigg::Internal::AnyHash
                  )
                end

              # Provider destination ID
              sig { returns(String) }
              attr_accessor :destination_id

              # True if a transfer was kicked
              sig { returns(T::Boolean) }
              attr_accessor :triggered

              # Error message if triggered=false on a hard failure
              sig { returns(T.nilable(String)) }
              attr_reader :error_message

              sig { params(error_message: String).void }
              attr_writer :error_message

              # Provider-side transfer ID
              sig { returns(T.nilable(String)) }
              attr_reader :transfer_id

              sig { params(transfer_id: String).void }
              attr_writer :transfer_id

              # Per-destination trigger results.
              sig do
                params(
                  destination_id: String,
                  triggered: T::Boolean,
                  error_message: String,
                  transfer_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Provider destination ID
                destination_id:,
                # True if a transfer was kicked
                triggered:,
                # Error message if triggered=false on a hard failure
                error_message: nil,
                # Provider-side transfer ID
                transfer_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    destination_id: String,
                    triggered: T::Boolean,
                    error_message: String,
                    transfer_id: String
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
end
