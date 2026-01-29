# typed: strong

module Stigg
  module Models
    module V1
      class CustomerImportResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::CustomerImportResponse,
              Stigg::Internal::AnyHash
            )
          end

        # List of newly created customer IDs from the import operation.
        sig { returns(Stigg::Models::V1::CustomerImportResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::CustomerImportResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data: Stigg::Models::V1::CustomerImportResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of newly created customer IDs from the import operation.
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::CustomerImportResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::CustomerImportResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Customer IDs created during import
          sig { returns(T::Array[String]) }
          attr_accessor :new_customers

          # List of newly created customer IDs from the import operation.
          sig do
            params(new_customers: T::Array[String]).returns(T.attached_class)
          end
          def self.new(
            # Customer IDs created during import
            new_customers:
          )
          end

          sig { override.returns({ new_customers: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
