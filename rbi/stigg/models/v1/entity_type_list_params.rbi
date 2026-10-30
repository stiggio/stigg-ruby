# typed: strong

module Stigg
  module Models
    module V1
      class EntityTypeListParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::EntityTypeListParams, Stigg::Internal::AnyHash)
          end

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

        # Whether to include archived entity types. One of: true, false
        sig do
          returns(
            T.nilable(
              Stigg::V1::EntityTypeListParams::IncludeArchived::OrSymbol
            )
          )
        end
        attr_reader :include_archived

        sig do
          params(
            include_archived:
              Stigg::V1::EntityTypeListParams::IncludeArchived::OrSymbol
          ).void
        end
        attr_writer :include_archived

        # Maximum number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

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
            after: String,
            before: String,
            include_archived:
              Stigg::V1::EntityTypeListParams::IncludeArchived::OrSymbol,
            limit: Integer,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Whether to include archived entity types. One of: true, false
          include_archived: nil,
          # Maximum number of items to return
          limit: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              include_archived:
                Stigg::V1::EntityTypeListParams::IncludeArchived::OrSymbol,
              limit: Integer,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Whether to include archived entity types. One of: true, false
        module IncludeArchived
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::EntityTypeListParams::IncludeArchived)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              Stigg::V1::EntityTypeListParams::IncludeArchived::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              Stigg::V1::EntityTypeListParams::IncludeArchived::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::EntityTypeListParams::IncludeArchived::TaggedSymbol
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
