# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            class EntityListParams < Stigg::Internal::Type::BaseModel
              extend Stigg::Internal::Type::RequestParameters::Converter
              include Stigg::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Events::Beta::Customers::EntityListParams,
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

              # Return items that come before this cursor
              sig { returns(T.nilable(String)) }
              attr_reader :before

              sig { params(before: String).void }
              attr_writer :before

              # Whether to include archived entities. One of: true, false
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::OrSymbol
                  )
                )
              end
              attr_reader :include_archived

              sig do
                params(
                  include_archived:
                    Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::OrSymbol
                ).void
              end
              attr_writer :include_archived

              # Maximum number of items to return
              sig { returns(T.nilable(Integer)) }
              attr_reader :limit

              sig { params(limit: Integer).void }
              attr_writer :limit

              # Filter results to entities of a specific entity type, by the type's refId
              sig { returns(T.nilable(String)) }
              attr_reader :type_ref_id

              sig { params(type_ref_id: String).void }
              attr_writer :type_ref_id

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
                  before: String,
                  include_archived:
                    Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::OrSymbol,
                  limit: Integer,
                  type_ref_id: String,
                  x_account_id: String,
                  x_environment_id: String,
                  request_options: Stigg::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # Return items that come after this cursor
                after: nil,
                # Return items that come before this cursor
                before: nil,
                # Whether to include archived entities. One of: true, false
                include_archived: nil,
                # Maximum number of items to return
                limit: nil,
                # Filter results to entities of a specific entity type, by the type's refId
                type_ref_id: nil,
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
                    before: String,
                    include_archived:
                      Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::OrSymbol,
                    limit: Integer,
                    type_ref_id: String,
                    x_account_id: String,
                    x_environment_id: String,
                    request_options: Stigg::RequestOptions
                  }
                )
              end
              def to_hash
              end

              # Whether to include archived entities. One of: true, false
              module IncludeArchived
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TRUE =
                  T.let(
                    :true,
                    Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::TaggedSymbol
                  )
                FALSE =
                  T.let(
                    :false,
                    Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Events::Beta::Customers::EntityListParams::IncludeArchived::TaggedSymbol
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
end
