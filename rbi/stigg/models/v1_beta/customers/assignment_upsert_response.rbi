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

            # Usage-reset cadence. Currently only `MONTH` is supported
            sig do
              returns(
                Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence::TaggedSymbol
              )
            end
            attr_accessor :cadence

            # The capability refId this assignment grants
            sig { returns(String) }
            attr_accessor :capability_id

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # The entity refId this assignment is attached to
            sig { returns(String) }
            attr_accessor :entity_id

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # Maximum usage allowed within one cadence window
            sig { returns(Float) }
            attr_accessor :usage_limit

            # A capability assignment for an entity belonging to a customer. Defines how much
            # of the capability the entity may consume (`usageLimit`) and how often the
            # counter resets (`cadence`).
            sig do
              params(
                id: String,
                cadence:
                  Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence::OrSymbol,
                capability_id: String,
                created_at: Time,
                entity_id: String,
                updated_at: Time,
                usage_limit: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Synthetic UUID identifier — also the cursor anchor for paginated lists
              id:,
              # Usage-reset cadence. Currently only `MONTH` is supported
              cadence:,
              # The capability refId this assignment grants
              capability_id:,
              # Timestamp of when the record was created
              created_at:,
              # The entity refId this assignment is attached to
              entity_id:,
              # Timestamp of when the record was last updated
              updated_at:,
              # Maximum usage allowed within one cadence window
              usage_limit:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  cadence:
                    Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence::TaggedSymbol,
                  capability_id: String,
                  created_at: Time,
                  entity_id: String,
                  updated_at: Time,
                  usage_limit: Float
                }
              )
            end
            def to_hash
            end

            # Usage-reset cadence. Currently only `MONTH` is supported
            module Cadence
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTH =
                T.let(
                  :MONTH,
                  Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
