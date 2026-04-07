# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class IntegrationUpdateParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Customers::IntegrationUpdateParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :integration_id

          # Synced entity id
          sig { returns(T.nilable(String)) }
          attr_accessor :synced_entity_id

          sig do
            params(
              id: String,
              integration_id: String,
              synced_entity_id: T.nilable(String),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            integration_id:,
            # Synced entity id
            synced_entity_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                integration_id: String,
                synced_entity_id: T.nilable(String),
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
