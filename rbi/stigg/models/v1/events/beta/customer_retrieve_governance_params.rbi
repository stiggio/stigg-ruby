# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Beta
          class CustomerRetrieveGovernanceParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            # Return items that come after this cursor
            sig { returns(T.nilable(String)) }
            attr_reader :after

            sig { params(after: String).void }
            attr_writer :after

            # Currency ids to include, repeated per value (e.g. `?currencyIds=credits`). Omit
            # both featureIds and currencyIds for tree mode.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :currency_ids

            sig { params(currency_ids: T::Array[String]).void }
            attr_writer :currency_ids

            # Case-insensitive substring match on the entity id (`%`/`_` matched literally).
            sig { returns(T.nilable(String)) }
            attr_reader :entity_id_search

            sig { params(entity_id_search: String).void }
            attr_writer :entity_id_search

            # Filter to one or more entity types, repeated per value (e.g.
            # `?entityTypeIds=team&entityTypeIds=user`).
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :entity_type_ids

            sig { params(entity_type_ids: T::Array[String]).void }
            attr_writer :entity_type_ids

            # Feature ids to include, repeated per value (e.g.
            # `?featureIds=ai-tokens&featureIds=seats`). Omit both featureIds and currencyIds
            # for tree mode — every node in the hierarchy with no usage configuration
            # attached.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :feature_ids

            sig { params(feature_ids: T::Array[String]).void }
            attr_writer :feature_ids

            # Maximum number of items to return
            sig { returns(T.nilable(Integer)) }
            attr_reader :limit

            sig { params(limit: Integer).void }
            attr_writer :limit

            # Only nodes with utilization ≥ this value (e.g. 0.8 for ≥80%, 1 for at/over
            # limit).
            sig { returns(T.nilable(Float)) }
            attr_reader :min_utilization

            sig { params(min_utilization: Float).void }
            attr_writer :min_utilization

            # Sort direction: `asc` or `desc` (default `desc`).
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order::OrSymbol
                )
              )
            end
            attr_reader :order

            sig do
              params(
                order:
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order::OrSymbol
              ).void
            end
            attr_writer :order

            # Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or
            # `scoped` (non-empty only).
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::OrSymbol
                )
              )
            end
            attr_reader :scope

            sig do
              params(
                scope:
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::OrSymbol
              ).void
            end
            attr_writer :scope

            # Sort key: `utilization` (default, cross-capability-safe), `currentUsage`,
            # `usageLimit`, `scopeSize`, `id`, or `createdAt`.
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::OrSymbol
                )
              )
            end
            attr_reader :sort_by

            sig do
              params(
                sort_by:
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::OrSymbol
              ).void
            end
            attr_writer :sort_by

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
                after: String,
                currency_ids: T::Array[String],
                entity_id_search: String,
                entity_type_ids: T::Array[String],
                feature_ids: T::Array[String],
                limit: Integer,
                min_utilization: Float,
                order:
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order::OrSymbol,
                scope:
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::OrSymbol,
                sort_by:
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::OrSymbol,
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              # Return items that come after this cursor
              after: nil,
              # Currency ids to include, repeated per value (e.g. `?currencyIds=credits`). Omit
              # both featureIds and currencyIds for tree mode.
              currency_ids: nil,
              # Case-insensitive substring match on the entity id (`%`/`_` matched literally).
              entity_id_search: nil,
              # Filter to one or more entity types, repeated per value (e.g.
              # `?entityTypeIds=team&entityTypeIds=user`).
              entity_type_ids: nil,
              # Feature ids to include, repeated per value (e.g.
              # `?featureIds=ai-tokens&featureIds=seats`). Omit both featureIds and currencyIds
              # for tree mode — every node in the hierarchy with no usage configuration
              # attached.
              feature_ids: nil,
              # Maximum number of items to return
              limit: nil,
              # Only nodes with utilization ≥ this value (e.g. 0.8 for ≥80%, 1 for at/over
              # limit).
              min_utilization: nil,
              # Sort direction: `asc` or `desc` (default `desc`).
              order: nil,
              # Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or
              # `scoped` (non-empty only).
              scope: nil,
              # Sort key: `utilization` (default, cross-capability-safe), `currentUsage`,
              # `usageLimit`, `scopeSize`, `id`, or `createdAt`.
              sort_by: nil,
              x_account_id: nil,
              x_environment_id: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  after: String,
                  currency_ids: T::Array[String],
                  entity_id_search: String,
                  entity_type_ids: T::Array[String],
                  feature_ids: T::Array[String],
                  limit: Integer,
                  min_utilization: Float,
                  order:
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order::OrSymbol,
                  scope:
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::OrSymbol,
                  sort_by:
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::OrSymbol,
                  x_account_id: String,
                  x_environment_id: String,
                  request_options: Stigg::RequestOptions
                }
              )
            end
            def to_hash
            end

            # Sort direction: `asc` or `desc` (default `desc`).
            module Order
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ASC =
                T.let(
                  :asc,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order::TaggedSymbol
                )
              DESC =
                T.let(
                  :desc,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Order::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Filter by configuration scope: `all` (default), `nodeWide` (`[]` only), or
            # `scoped` (non-empty only).
            module Scope
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :all,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::TaggedSymbol
                )
              NODE_WIDE =
                T.let(
                  :nodeWide,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::TaggedSymbol
                )
              SCOPED =
                T.let(
                  :scoped,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::Scope::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Sort key: `utilization` (default, cross-capability-safe), `currentUsage`,
            # `usageLimit`, `scopeSize`, `id`, or `createdAt`.
            module SortBy
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UTILIZATION =
                T.let(
                  :utilization,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::TaggedSymbol
                )
              CURRENT_USAGE =
                T.let(
                  :currentUsage,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::TaggedSymbol
                )
              USAGE_LIMIT =
                T.let(
                  :usageLimit,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::TaggedSymbol
                )
              SCOPE_SIZE =
                T.let(
                  :scopeSize,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::TaggedSymbol
                )
              ID =
                T.let(
                  :id,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::TaggedSymbol
                )
              CREATED_AT =
                T.let(
                  :createdAt,
                  Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::Beta::CustomerRetrieveGovernanceParams::SortBy::TaggedSymbol
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
