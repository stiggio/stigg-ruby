# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          class DestinationDeleteParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::DataExport::DestinationDeleteParams,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :destination_id

            sig do
              params(
                destination_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(destination_id:, request_options: {})
            end

            sig do
              override.returns(
                {
                  destination_id: String,
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
