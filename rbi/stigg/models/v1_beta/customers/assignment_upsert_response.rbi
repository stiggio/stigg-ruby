# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class AssignmentUpsertResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data
              ]
            )
          end
          attr_accessor :data

          # Assignments after upsert.
          sig do
            params(
              data:
                T::Array[
                  Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::OrHash
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
                    Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data
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
                  Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # Synthetic UUID identifier — also the cursor anchor for paginated lists
            sig { returns(String) }
            attr_accessor :id

            # Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`,
            # `PT1M`.
            sig { returns(String) }
            attr_accessor :cadence

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # The entity refId this assignment is attached to
            sig { returns(String) }
            attr_accessor :entity_id

            # Parent entity refId in the hierarchy, or `null` for a root.
            sig { returns(T.nilable(String)) }
            attr_accessor :parent_id

            # Dimension-scoped sub-budget key: the set of entity refIds this budget applies
            # to. Empty is the node-wide budget that always matches; a non-empty set only
            # applies when every listed entity is present in the resolved set
            # (order-insensitive).
            sig { returns(T::Array[String]) }
            attr_accessor :scope_entity_ids

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # Maximum usage allowed within one cadence window
            sig { returns(T.nilable(Float)) }
            attr_accessor :usage_limit

            # Currency refId this assignment grants (present for credit capabilities).
            sig { returns(T.nilable(String)) }
            attr_reader :currency_id

            sig { params(currency_id: String).void }
            attr_writer :currency_id

            # Feature refId this assignment grants (present for feature capabilities).
            sig { returns(T.nilable(String)) }
            attr_reader :feature_id

            sig { params(feature_id: String).void }
            attr_writer :feature_id

            # A capability assignment for an entity belonging to a customer. Defines how much
            # of the capability the entity may consume (`usageLimit`) and how often the
            # counter resets (`cadence`).
            sig do
              params(
                id: String,
                cadence: String,
                created_at: Time,
                entity_id: String,
                parent_id: T.nilable(String),
                scope_entity_ids: T::Array[String],
                updated_at: Time,
                usage_limit: T.nilable(Float),
                currency_id: String,
                feature_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Synthetic UUID identifier — also the cursor anchor for paginated lists
              id:,
              # Usage-reset cadence as an ISO-8601 single-unit duration, e.g. `P1M`, `P30D`,
              # `PT1M`.
              cadence:,
              # Timestamp of when the record was created
              created_at:,
              # The entity refId this assignment is attached to
              entity_id:,
              # Parent entity refId in the hierarchy, or `null` for a root.
              parent_id:,
              # Dimension-scoped sub-budget key: the set of entity refIds this budget applies
              # to. Empty is the node-wide budget that always matches; a non-empty set only
              # applies when every listed entity is present in the resolved set
              # (order-insensitive).
              scope_entity_ids:,
              # Timestamp of when the record was last updated
              updated_at:,
              # Maximum usage allowed within one cadence window
              usage_limit:,
              # Currency refId this assignment grants (present for credit capabilities).
              currency_id: nil,
              # Feature refId this assignment grants (present for feature capabilities).
              feature_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  cadence: String,
                  created_at: Time,
                  entity_id: String,
                  parent_id: T.nilable(String),
                  scope_entity_ids: T::Array[String],
                  updated_at: Time,
                  usage_limit: T.nilable(Float),
                  currency_id: String,
                  feature_id: String
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
