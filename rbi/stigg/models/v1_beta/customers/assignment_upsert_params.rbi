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

          sig { returns(T.nilable(String)) }
          attr_reader :x_account_id

          sig { params(x_account_id: String).void }
          attr_writer :x_account_id

          sig { returns(T.nilable(String)) }
          attr_reader :x_environment_id

          sig { params(x_environment_id: String).void }
          attr_writer :x_environment_id

          sig do
            params(
              id: String,
              assignments:
                T::Array[
                  Stigg::V1Beta::Customers::AssignmentUpsertParams::Assignment::OrHash
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Assignments to upsert (1–100 per request)
            assignments:,
            x_account_id: nil,
            x_environment_id: nil,
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
                x_account_id: String,
                x_environment_id: String,
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

            # The entity refId this assignment is attached to
            sig { returns(String) }
            attr_accessor :entity_id

            # Usage-reset cadence (required on create) as an ISO-8601 single-unit duration,
            # e.g. `P1M`, `P30D`, `PT1M`.
            sig { returns(T.nilable(String)) }
            attr_reader :cadence

            sig { params(cadence: String).void }
            attr_writer :cadence

            # Currency refId this assignment grants (credit budgets). Mutually exclusive with
            # `featureId`.
            sig { returns(T.nilable(String)) }
            attr_reader :currency_id

            sig { params(currency_id: String).void }
            attr_writer :currency_id

            # Feature refId this assignment grants. Mutually exclusive with `currencyId`.
            sig { returns(T.nilable(String)) }
            attr_reader :feature_id

            sig { params(feature_id: String).void }
            attr_writer :feature_id

            # Parent entity refId in the hierarchy. Omit to leave the current parent untouched
            # (a new node defaults to a root); `null` detaches to a root; a refId sets or
            # changes the parent. Reparenting an existing node is leaf-only.
            sig { returns(T.nilable(String)) }
            attr_accessor :parent_id

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :scope_entity_ids

            sig { params(scope_entity_ids: T::Array[String]).void }
            attr_writer :scope_entity_ids

            # Maximum usage allowed within one cadence window (required on create)
            sig { returns(T.nilable(Float)) }
            attr_accessor :usage_limit

            # A single assignment to create or update. Identify the capability with exactly
            # one of `featureId` or `currencyId`. The natural key is the
            # `(entityId, capability, scopeEntityIds)` triple. On create both `usageLimit` and
            # `cadence` are required; on update they may be omitted individually to preserve
            # the existing value.
            sig do
              params(
                entity_id: String,
                cadence: String,
                currency_id: String,
                feature_id: String,
                parent_id: T.nilable(String),
                scope_entity_ids: T::Array[String],
                usage_limit: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # The entity refId this assignment is attached to
              entity_id:,
              # Usage-reset cadence (required on create) as an ISO-8601 single-unit duration,
              # e.g. `P1M`, `P30D`, `PT1M`.
              cadence: nil,
              # Currency refId this assignment grants (credit budgets). Mutually exclusive with
              # `featureId`.
              currency_id: nil,
              # Feature refId this assignment grants. Mutually exclusive with `currencyId`.
              feature_id: nil,
              # Parent entity refId in the hierarchy. Omit to leave the current parent untouched
              # (a new node defaults to a root); `null` detaches to a root; a refId sets or
              # changes the parent. Reparenting an existing node is leaf-only.
              parent_id: nil,
              scope_entity_ids: nil,
              # Maximum usage allowed within one cadence window (required on create)
              usage_limit: nil
            )
            end

            sig do
              override.returns(
                {
                  entity_id: String,
                  cadence: String,
                  currency_id: String,
                  feature_id: String,
                  parent_id: T.nilable(String),
                  scope_entity_ids: T::Array[String],
                  usage_limit: T.nilable(Float)
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
