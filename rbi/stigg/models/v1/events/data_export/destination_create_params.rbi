# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module DataExport
          class DestinationCreateParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::DataExport::DestinationCreateParams,
                  Stigg::Internal::AnyHash
                )
              end

            # The provider destination ID returned by the embedded SDK on connect
            sig { returns(String) }
            attr_accessor :destination_id

            # The destination type (e.g. snowflake, bigquery)
            sig { returns(String) }
            attr_accessor :destination_type

            sig do
              params(
                destination_id: String,
                destination_type: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The provider destination ID returned by the embedded SDK on connect
              destination_id:,
              # The destination type (e.g. snowflake, bigquery)
              destination_type:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  destination_id: String,
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
end
