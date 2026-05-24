# typed: strong

module Stigg
  module Models
    module V1Beta
      class EntityTypeUpsertParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1Beta::EntityTypeUpsertParams,
              Stigg::Internal::AnyHash
            )
          end

        # Entity types to upsert (1–100 per request)
        sig { returns(T::Array[Stigg::V1Beta::EntityTypeUpsertParams::Type]) }
        attr_accessor :types

        sig do
          params(
            types:
              T::Array[Stigg::V1Beta::EntityTypeUpsertParams::Type::OrHash],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Entity types to upsert (1–100 per request)
          types:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              types: T::Array[Stigg::V1Beta::EntityTypeUpsertParams::Type],
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Type < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1Beta::EntityTypeUpsertParams::Type,
                Stigg::Internal::AnyHash
              )
            end

          # The unique identifier for the entity
          sig { returns(String) }
          attr_accessor :id

          # Dimension keys used to attribute usage events to instances of this type (e.g.
          # ["orgId"]). Empty array means no attribution.
          sig { returns(T::Array[String]) }
          attr_accessor :attribution_keys

          # The display name for the entity type
          sig { returns(String) }
          attr_accessor :display_name

          # A single entity type definition.
          sig do
            params(
              id: String,
              attribution_keys: T::Array[String],
              display_name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the entity
            id:,
            # Dimension keys used to attribute usage events to instances of this type (e.g.
            # ["orgId"]). Empty array means no attribution.
            attribution_keys:,
            # The display name for the entity type
            display_name:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                attribution_keys: T::Array[String],
                display_name: String
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
