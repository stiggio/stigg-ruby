# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class EntityRetrieveParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1Beta::Customers::EntityRetrieveParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :entity_id

          sig do
            params(
              id: String,
              entity_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, entity_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                id: String,
                entity_id: String,
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
