# typed: strong

module Stigg
  module Models
    module V1
      class CustomerListInvoicesParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::CustomerListInvoicesParams,
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

        # Filter to invoices for this contract only (contract external ID or Received
        # contract ID). Omit for all contracts.
        sig { returns(T.nilable(String)) }
        attr_reader :contract_external_id

        sig { params(contract_external_id: String).void }
        attr_writer :contract_external_id

        # Filter to invoices issued on or after this date, inclusive (ISO 8601)
        sig { returns(T.nilable(Time)) }
        attr_reader :issued_after

        sig { params(issued_after: Time).void }
        attr_writer :issued_after

        # Filter to invoices issued on or before this date, inclusive (ISO 8601)
        sig { returns(T.nilable(Time)) }
        attr_reader :issued_before

        sig { params(issued_before: Time).void }
        attr_writer :issued_before

        # Maximum number of items to return
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Field to sort by: issueDate (default), dueDate, or total
        sig do
          returns(
            T.nilable(Stigg::V1::CustomerListInvoicesParams::OrderBy::OrSymbol)
          )
        end
        attr_reader :order_by

        sig do
          params(
            order_by: Stigg::V1::CustomerListInvoicesParams::OrderBy::OrSymbol
          ).void
        end
        attr_writer :order_by

        # Sort direction: ASC (default) or DESC
        sig do
          returns(
            T.nilable(Stigg::V1::CustomerListInvoicesParams::OrderDir::OrSymbol)
          )
        end
        attr_reader :order_dir

        sig do
          params(
            order_dir: Stigg::V1::CustomerListInvoicesParams::OrderDir::OrSymbol
          ).void
        end
        attr_writer :order_dir

        # Filter by invoice state. Supports comma-separated values for multiple states
        sig { returns(T.nilable(String)) }
        attr_reader :state_in

        sig { params(state_in: String).void }
        attr_writer :state_in

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
            contract_external_id: String,
            issued_after: Time,
            issued_before: Time,
            limit: Integer,
            order_by: Stigg::V1::CustomerListInvoicesParams::OrderBy::OrSymbol,
            order_dir:
              Stigg::V1::CustomerListInvoicesParams::OrderDir::OrSymbol,
            state_in: String,
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
          # Filter to invoices for this contract only (contract external ID or Received
          # contract ID). Omit for all contracts.
          contract_external_id: nil,
          # Filter to invoices issued on or after this date, inclusive (ISO 8601)
          issued_after: nil,
          # Filter to invoices issued on or before this date, inclusive (ISO 8601)
          issued_before: nil,
          # Maximum number of items to return
          limit: nil,
          # Field to sort by: issueDate (default), dueDate, or total
          order_by: nil,
          # Sort direction: ASC (default) or DESC
          order_dir: nil,
          # Filter by invoice state. Supports comma-separated values for multiple states
          state_in: nil,
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
              contract_external_id: String,
              issued_after: Time,
              issued_before: Time,
              limit: Integer,
              order_by:
                Stigg::V1::CustomerListInvoicesParams::OrderBy::OrSymbol,
              order_dir:
                Stigg::V1::CustomerListInvoicesParams::OrderDir::OrSymbol,
              state_in: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Field to sort by: issueDate (default), dueDate, or total
        module OrderBy
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::CustomerListInvoicesParams::OrderBy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ISSUE_DATE =
            T.let(
              :issueDate,
              Stigg::V1::CustomerListInvoicesParams::OrderBy::TaggedSymbol
            )
          DUE_DATE =
            T.let(
              :dueDate,
              Stigg::V1::CustomerListInvoicesParams::OrderBy::TaggedSymbol
            )
          TOTAL =
            T.let(
              :total,
              Stigg::V1::CustomerListInvoicesParams::OrderBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::CustomerListInvoicesParams::OrderBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort direction: ASC (default) or DESC
        module OrderDir
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::CustomerListInvoicesParams::OrderDir)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASC =
            T.let(
              :ASC,
              Stigg::V1::CustomerListInvoicesParams::OrderDir::TaggedSymbol
            )
          DESC =
            T.let(
              :DESC,
              Stigg::V1::CustomerListInvoicesParams::OrderDir::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::CustomerListInvoicesParams::OrderDir::TaggedSymbol
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
