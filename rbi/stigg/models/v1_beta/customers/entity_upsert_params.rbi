# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class EntityUpsertParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1Beta::Customers::EntityUpsertParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # List of entities to create or update (1-100 entries)
          sig do
            returns(
              T::Array[Stigg::V1Beta::Customers::EntityUpsertParams::Entity]
            )
          end
          attr_accessor :entities

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
              id: String,
              entities:
                T::Array[
                  Stigg::V1Beta::Customers::EntityUpsertParams::Entity::OrHash
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # List of entities to create or update (1-100 entries)
            entities:,
            x_account_id: nil,
            x_environment_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                entities:
                  T::Array[
                    Stigg::V1Beta::Customers::EntityUpsertParams::Entity
                  ],
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Entity < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1Beta::Customers::EntityUpsertParams::Entity,
                  Stigg::Internal::AnyHash
                )
              end

            # The unique identifier for the entity
            sig { returns(String) }
            attr_accessor :id

            # The entity type ID this entity instantiates. Required when creating a new
            # entity; on a re-upsert may be omitted to preserve the existing type. Governance
            # returns 400 if missing on create.
            sig { returns(T.nilable(String)) }
            attr_reader :entity_type_id

            sig { params(entity_type_id: String).void }
            attr_writer :entity_type_id

            # Free-form key/value metadata. Patch semantics: empty-string value removes a key,
            # omitted keys are preserved.
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            # A single entity to create or update.
            sig do
              params(
                id: String,
                entity_type_id: String,
                metadata: T::Hash[Symbol, String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique identifier for the entity
              id:,
              # The entity type ID this entity instantiates. Required when creating a new
              # entity; on a re-upsert may be omitted to preserve the existing type. Governance
              # returns 400 if missing on create.
              entity_type_id: nil,
              # Free-form key/value metadata. Patch semantics: empty-string value removes a key,
              # omitted keys are preserved.
              metadata: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  entity_type_id: String,
                  metadata: T::Hash[Symbol, String]
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
