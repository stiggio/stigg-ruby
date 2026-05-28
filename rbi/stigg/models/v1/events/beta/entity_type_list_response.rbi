# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Beta
          class EntityTypeListResponse < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::Beta::EntityTypeListResponse,
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

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # The display name for the entity type
            sig { returns(String) }
            attr_accessor :display_name

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # A vendor-defined category of resource that can be governed (e.g. Org, Team,
            # User). Vendors define entity types once per environment; their customers create
            # instances (entities) of these types and the governance engine tracks usage and
            # enforces limits per instance.
            sig do
              params(
                id: String,
                attribution_keys: T::Array[String],
                created_at: Time,
                display_name: String,
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique identifier for the entity
              id:,
              # Dimension keys used to attribute usage events to instances of this type (e.g.
              # ["orgId"]). Empty array means no attribution.
              attribution_keys:,
              # Timestamp of when the record was created
              created_at:,
              # The display name for the entity type
              display_name:,
              # Timestamp of when the record was last updated
              updated_at:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  attribution_keys: T::Array[String],
                  created_at: Time,
                  display_name: String,
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
