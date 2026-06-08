# typed: strong

module Stigg
  module Models
    module V1
      class ProductListProductsParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::ProductListProductsParams,
              Stigg::Internal::AnyHash
            )
          end

        # Filter by entity ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

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

        # Filter by creation date using range operators: gt, gte, lt, lte
        sig do
          returns(T.nilable(Stigg::V1::ProductListProductsParams::CreatedAt))
        end
        attr_reader :created_at

        sig do
          params(
            created_at: Stigg::V1::ProductListProductsParams::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Maximum number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by product status. Supports comma-separated values for multiple statuses
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::ProductListProductsParams::Status::OrSymbol]
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              T::Array[Stigg::V1::ProductListProductsParams::Status::OrSymbol]
          ).void
        end
        attr_writer :status

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
            created_at: Stigg::V1::ProductListProductsParams::CreatedAt::OrHash,
            limit: Integer,
            status:
              T::Array[Stigg::V1::ProductListProductsParams::Status::OrSymbol],
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by entity ID
          id: nil,
          # Return items that come after this cursor
          after: nil,
          # Return items that come before this cursor
          before: nil,
          # Filter by creation date using range operators: gt, gte, lt, lte
          created_at: nil,
          # Maximum number of items to return
          limit: nil,
          # Filter by product status. Supports comma-separated values for multiple statuses
          status: nil,
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
              created_at: Stigg::V1::ProductListProductsParams::CreatedAt,
              limit: Integer,
              status:
                T::Array[
                  Stigg::V1::ProductListProductsParams::Status::OrSymbol
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::ProductListProductsParams::CreatedAt,
                Stigg::Internal::AnyHash
              )
            end

          # Greater than the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :gt

          sig { params(gt: Time).void }
          attr_writer :gt

          # Greater than or equal to the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :gte

          sig { params(gte: Time).void }
          attr_writer :gte

          # Less than the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :lt

          sig { params(lt: Time).void }
          attr_writer :lt

          # Less than or equal to the specified createdAt value
          sig { returns(T.nilable(Time)) }
          attr_reader :lte

          sig { params(lte: Time).void }
          attr_writer :lte

          # Filter by creation date using range operators: gt, gte, lt, lte
          sig do
            params(gt: Time, gte: Time, lt: Time, lte: Time).returns(
              T.attached_class
            )
          end
          def self.new(
            # Greater than the specified createdAt value
            gt: nil,
            # Greater than or equal to the specified createdAt value
            gte: nil,
            # Less than the specified createdAt value
            lt: nil,
            # Less than or equal to the specified createdAt value
            lte: nil
          )
          end

          sig { override.returns({ gt: Time, gte: Time, lt: Time, lte: Time }) }
          def to_hash
          end
        end

        module Status
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::ProductListProductsParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLISHED =
            T.let(
              :PUBLISHED,
              Stigg::V1::ProductListProductsParams::Status::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :ARCHIVED,
              Stigg::V1::ProductListProductsParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::ProductListProductsParams::Status::TaggedSymbol
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
