# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class EntityRetrieveResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1Beta::Customers::EntityRetrieveResponse,
                Stigg::Internal::AnyHash
              )
            end

          # A stored entity instance tracked by the governance service for a given customer
          sig do
            returns(
              Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # A stored entity instance tracked by the governance service for a given customer
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1Beta::Customers::EntityRetrieveResponse::Data,
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

            # Free-form key/value metadata attached to the entity
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            # The entity type identifier this entity instantiates
            sig { returns(String) }
            attr_accessor :type_id

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # A stored entity instance tracked by the governance service for a given customer
            sig do
              params(
                id: String,
                archived_at: T.nilable(Time),
                created_at: Time,
                metadata: T::Hash[Symbol, String],
                type_id: String,
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
              # Free-form key/value metadata attached to the entity
              metadata:,
              # The entity type identifier this entity instantiates
              type_id:,
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
                  metadata: T::Hash[Symbol, String],
                  type_id: String,
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
