# typed: strong

module Stigg
  module Models
    module V1Beta
      module Customers
        class AssignmentUpsertParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1Beta::Customers::AssignmentUpsertParams,
                Stigg::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Assignments to upsert (1–100 per request)
          sig do
            returns(
              T::Array[
                Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment
              ]
            )
          end
          attr_accessor :assignments

          sig do
            params(
              id: String,
              assignments:
                T::Array[
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::OrHash
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Assignments to upsert (1–100 per request)
            assignments:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                assignments:
                  T::Array[
                    Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment
                  ],
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Assignment < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment,
                  Stigg::Internal::AnyHash
                )
              end

            # The capability refId this assignment grants
            sig { returns(String) }
            attr_accessor :capability_id

            # The entity refId this assignment is attached to
            sig { returns(String) }
            attr_accessor :entity_id

            # Usage-reset cadence (required on create). Currently only `MONTH` is supported
            sig do
              returns(
                T.nilable(
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence::OrSymbol
                )
              )
            end
            attr_reader :cadence

            sig do
              params(
                cadence:
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence::OrSymbol
              ).void
            end
            attr_writer :cadence

            # Maximum usage allowed within one cadence window (required on create)
            sig { returns(T.nilable(Float)) }
            attr_reader :usage_limit

            sig { params(usage_limit: Float).void }
            attr_writer :usage_limit

            # A single assignment to create or update. The natural key is the
            # `(entityId, capabilityId)` pair. On create both `usageLimit` and `cadence` are
            # required; on update they may be omitted individually to preserve the existing
            # value.
            sig do
              params(
                capability_id: String,
                entity_id: String,
                cadence:
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence::OrSymbol,
                usage_limit: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # The capability refId this assignment grants
              capability_id:,
              # The entity refId this assignment is attached to
              entity_id:,
              # Usage-reset cadence (required on create). Currently only `MONTH` is supported
              cadence: nil,
              # Maximum usage allowed within one cadence window (required on create)
              usage_limit: nil
            )
            end

            sig do
              override.returns(
                {
                  capability_id: String,
                  entity_id: String,
                  cadence:
                    Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence::OrSymbol,
                  usage_limit: Float
                }
              )
            end
            def to_hash
            end

            # Usage-reset cadence (required on create). Currently only `MONTH` is supported
            module Cadence
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTH =
                T.let(
                  :MONTH,
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::Cadence::TaggedSymbol
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
