# typed: strong

module Stigg
  module Models
    module V1
      class EntityTypeCheckActiveEntitiesResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Whether an entity type has active entities
        sig do
          returns(
            Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Wrapped response with whether an entity type has active entities
        sig do
          params(
            data:
              Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether an entity type has active entities
          data:
        )
        end

        sig do
          override.returns(
            {
              data:
                Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::EntityTypeCheckActiveEntitiesResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Whether at least one active (non-archived) entity of the entity type exists,
          # across every customer
          sig { returns(T::Boolean) }
          attr_accessor :has_active_entities

          # Whether an entity type has active entities
          sig do
            params(has_active_entities: T::Boolean).returns(T.attached_class)
          end
          def self.new(
            # Whether at least one active (non-archived) entity of the entity type exists,
            # across every customer
            has_active_entities:
          )
          end

          sig { override.returns({ has_active_entities: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
