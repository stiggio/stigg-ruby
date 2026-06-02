# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            class EntityUpsertParams < Stigg::Internal::Type::BaseModel
              extend Stigg::Internal::Type::RequestParameters::Converter
              include Stigg::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Events::Beta::Customers::EntityUpsertParams,
                    Stigg::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # List of entities to create or update (1-100 entries)
              sig do
                returns(
                  T::Array[
                    Stigg::V1::Events::Beta::Customers::EntityUpsertParams::Entity
                  ]
                )
              end
              attr_accessor :entities

              sig do
                params(
                  id: String,
                  entities:
                    T::Array[
                      Stigg::V1::Events::Beta::Customers::EntityUpsertParams::Entity::OrHash
                    ],
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # List of entities to create or update (1-100 entries)
                entities:,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    entities:
                      T::Array[
                        Stigg::V1::Events::Beta::Customers::EntityUpsertParams::Entity
                      ],
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
                      Stigg::V1::Events::Beta::Customers::EntityUpsertParams::Entity,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The unique identifier for the entity
                sig { returns(String) }
                attr_accessor :id

                # Free-form key/value metadata. Patch semantics: empty-string value removes a key,
                # omitted keys are preserved.
                sig { returns(T.nilable(T::Hash[Symbol, String])) }
                attr_reader :metadata

                sig { params(metadata: T::Hash[Symbol, String]).void }
                attr_writer :metadata

                # The entity type refId this entity instantiates. Required when creating a new
                # entity; on a re-upsert may be omitted to preserve the existing type. Governance
                # returns 400 if missing on create.
                sig { returns(T.nilable(String)) }
                attr_reader :type_ref_id

                sig { params(type_ref_id: String).void }
                attr_writer :type_ref_id

                # A single entity to create or update.
                sig do
                  params(
                    id: String,
                    metadata: T::Hash[Symbol, String],
                    type_ref_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The unique identifier for the entity
                  id:,
                  # Free-form key/value metadata. Patch semantics: empty-string value removes a key,
                  # omitted keys are preserved.
                  metadata: nil,
                  # The entity type refId this entity instantiates. Required when creating a new
                  # entity; on a re-upsert may be omitted to preserve the existing type. Governance
                  # returns 400 if missing on create.
                  type_ref_id: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      metadata: T::Hash[Symbol, String],
                      type_ref_id: String
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
end
