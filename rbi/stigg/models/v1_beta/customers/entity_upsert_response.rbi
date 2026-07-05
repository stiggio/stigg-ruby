# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class EntityUpsertResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1Beta::Customers::EntityUpsertResponse,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Stigg::Models::V1Beta::Customers::EntityUpsertResponse::Data
              ]
            )
          end
          attr_accessor :data

          # List of entities created or updated by an upsert request
          sig do
            params(
              data:
                T::Array[
                  Stigg::Models::V1Beta::Customers::EntityUpsertResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Stigg::Models::V1Beta::Customers::EntityUpsertResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1Beta::Customers::EntityUpsertResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The unique identifier for the entity
            sig { returns(String) }
            attr_accessor :id

            # Timestamp of when the record was deleted
            sig { returns(T.nilable(Time)) }
            attr_accessor :archived_at

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # The entity type identifier this entity instantiates
            sig { returns(String) }
            attr_accessor :entity_type_id

            # Free-form key/value metadata attached to the entity
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # A stored entity instance tracked by the governance service for a given customer
            sig do
              params(
                id: String,
                archived_at: T.nilable(Time),
                created_at: Time,
                entity_type_id: String,
                metadata: T::Hash[Symbol, String],
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique identifier for the entity
              id:,
              # Timestamp of when the record was deleted
              archived_at:,
              # Timestamp of when the record was created
              created_at:,
              # The entity type identifier this entity instantiates
              entity_type_id:,
              # Free-form key/value metadata attached to the entity
              metadata:,
              # Timestamp of when the record was last updated
              updated_at:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  archived_at: T.nilable(Time),
                  created_at: Time,
                  entity_type_id: String,
                  metadata: T::Hash[Symbol, String],
                  updated_at: Time
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
