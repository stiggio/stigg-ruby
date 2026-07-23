# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          class DestinationUpdateSelectionParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::DataExport::DestinationUpdateSelectionParams,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :destination_id

            sig { returns(T::Array[String]) }
            attr_accessor :enabled_models

            # Target integration row hosting the destination
            sig { returns(String) }
            attr_accessor :integration_id

            sig { returns(T.nilable(String)) }
            attr_reader :x_account_id

            sig { params(x_account_id: String).void }
            attr_writer :x_account_id

            sig { returns(T.nilable(String)) }
            attr_reader :x_environment_id

            sig { params(x_environment_id: String).void }
            attr_writer :x_environment_id

            sig do
              params(
                destination_id: String,
                enabled_models: T::Array[String],
                integration_id: String,
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              destination_id:,
              enabled_models:,
              # Target integration row hosting the destination
              integration_id:,
              x_account_id: nil,
              x_environment_id: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  destination_id: String,
                  enabled_models: T::Array[String],
                  integration_id: String,
                  x_account_id: String,
                  x_environment_id: String,
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
end
