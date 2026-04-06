# typed: strong

module Stigg
  module Models
    module Internal
      module Beta
        class EventQueueRetrieveParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::Internal::Beta::EventQueueRetrieveParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :queue_name

          sig do
            params(
              queue_name: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(queue_name:, request_options: {})
          end

          sig do
            override.returns(
              { queue_name: String, request_options: Stigg::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
