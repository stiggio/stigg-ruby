# typed: strong

module Stigg
  module Models
    module V1
      class EntityTypeArchiveResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::EntityTypeArchiveResponse,
              Stigg::Internal::AnyHash
            )
          end

        # List of entity type identifiers that were acted on
        sig { returns(Stigg::Models::V1::EntityTypeArchiveResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::EntityTypeArchiveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Wrapped response echoing the entity type ids that were acted on by an archive
        # call
        sig do
          params(
            data: Stigg::Models::V1::EntityTypeArchiveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of entity type identifiers that were acted on
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::EntityTypeArchiveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::EntityTypeArchiveResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Entity type identifiers to act on
          sig { returns(T::Array[String]) }
          attr_accessor :ids

          # List of entity type identifiers that were acted on
          sig { params(ids: T::Array[String]).returns(T.attached_class) }
          def self.new(
            # Entity type identifiers to act on
            ids:
          )
          end

          sig { override.returns({ ids: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
