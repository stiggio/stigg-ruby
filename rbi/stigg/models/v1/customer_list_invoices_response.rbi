# typed: strong

module Stigg
  module Models
    module V1
      class CustomerListInvoicesResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::CustomerListInvoicesResponse,
              Stigg::Internal::AnyHash
            )
          end

        # External ID of the contract the invoice belongs to: your contract ref when
        # mapped, otherwise the Received contract ID
        sig { returns(T.nilable(String)) }
        attr_accessor :contract_external_id

        # The ISO-4217 currency code of the invoice
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # External ID of the customer the invoice belongs to: your customer ref when
        # mapped, otherwise the Received customer ID
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_external_id

        # The total discount amount
        sig { returns(T.nilable(Float)) }
        attr_accessor :discount

        # The date payment is due
        sig { returns(T.nilable(Time)) }
        attr_accessor :due_date

        # External ID for the invoice: the mapped external ID when one exists, otherwise
        # the invoice ID
        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_external_id

        # The billing provider (Received) invoice ID
        sig { returns(String) }
        attr_accessor :invoice_id

        # The invoice document number (or draft number while the invoice is unissued)
        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_number

        # The date the invoice was issued
        sig { returns(T.nilable(Time)) }
        attr_accessor :issue_date

        # The invoice line items
        sig do
          returns(
            T::Array[Stigg::Models::V1::CustomerListInvoicesResponse::LineItem]
          )
        end
        attr_accessor :line_items

        # The date the invoice was reconciled as paid; present once reconciled
        sig { returns(T.nilable(Time)) }
        attr_accessor :paid_date

        # The invoice status (open, paid, or canceled)
        sig do
          returns(
            Stigg::Models::V1::CustomerListInvoicesResponse::State::TaggedSymbol
          )
        end
        attr_accessor :state

        # The pre-tax subtotal
        sig { returns(T.nilable(Float)) }
        attr_accessor :subtotal

        # The total tax amount
        sig { returns(T.nilable(Float)) }
        attr_accessor :tax

        # The total amount due
        sig { returns(T.nilable(Float)) }
        attr_accessor :total

        # A customer invoice as reported by the connected billing provider.
        sig do
          params(
            contract_external_id: T.nilable(String),
            currency: T.nilable(String),
            customer_external_id: T.nilable(String),
            discount: T.nilable(Float),
            due_date: T.nilable(Time),
            invoice_external_id: T.nilable(String),
            invoice_id: String,
            invoice_number: T.nilable(String),
            issue_date: T.nilable(Time),
            line_items:
              T::Array[
                Stigg::Models::V1::CustomerListInvoicesResponse::LineItem::OrHash
              ],
            paid_date: T.nilable(Time),
            state:
              Stigg::Models::V1::CustomerListInvoicesResponse::State::OrSymbol,
            subtotal: T.nilable(Float),
            tax: T.nilable(Float),
            total: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # External ID of the contract the invoice belongs to: your contract ref when
          # mapped, otherwise the Received contract ID
          contract_external_id:,
          # The ISO-4217 currency code of the invoice
          currency:,
          # External ID of the customer the invoice belongs to: your customer ref when
          # mapped, otherwise the Received customer ID
          customer_external_id:,
          # The total discount amount
          discount:,
          # The date payment is due
          due_date:,
          # External ID for the invoice: the mapped external ID when one exists, otherwise
          # the invoice ID
          invoice_external_id:,
          # The billing provider (Received) invoice ID
          invoice_id:,
          # The invoice document number (or draft number while the invoice is unissued)
          invoice_number:,
          # The date the invoice was issued
          issue_date:,
          # The invoice line items
          line_items:,
          # The date the invoice was reconciled as paid; present once reconciled
          paid_date:,
          # The invoice status (open, paid, or canceled)
          state:,
          # The pre-tax subtotal
          subtotal:,
          # The total tax amount
          tax:,
          # The total amount due
          total:
        )
        end

        sig do
          override.returns(
            {
              contract_external_id: T.nilable(String),
              currency: T.nilable(String),
              customer_external_id: T.nilable(String),
              discount: T.nilable(Float),
              due_date: T.nilable(Time),
              invoice_external_id: T.nilable(String),
              invoice_id: String,
              invoice_number: T.nilable(String),
              issue_date: T.nilable(Time),
              line_items:
                T::Array[
                  Stigg::Models::V1::CustomerListInvoicesResponse::LineItem
                ],
              paid_date: T.nilable(Time),
              state:
                Stigg::Models::V1::CustomerListInvoicesResponse::State::TaggedSymbol,
              subtotal: T.nilable(Float),
              tax: T.nilable(Float),
              total: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        class LineItem < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::CustomerListInvoicesResponse::LineItem,
                Stigg::Internal::AnyHash
              )
            end

          # Total amount for this line (unit price × quantity)
          sig { returns(T.nilable(Float)) }
          attr_accessor :amount

          # Human-readable description of the line item
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # External ID of the product this line item relates to, when one is mapped
          sig { returns(T.nilable(String)) }
          attr_accessor :product_external_id

          # Quantity billed on this line
          sig { returns(T.nilable(Float)) }
          attr_accessor :quantity

          # Price per unit for this line
          sig { returns(T.nilable(Float)) }
          attr_accessor :unit_price

          # A single line item on an invoice.
          sig do
            params(
              amount: T.nilable(Float),
              description: T.nilable(String),
              product_external_id: T.nilable(String),
              quantity: T.nilable(Float),
              unit_price: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(
            # Total amount for this line (unit price × quantity)
            amount:,
            # Human-readable description of the line item
            description:,
            # External ID of the product this line item relates to, when one is mapped
            product_external_id:,
            # Quantity billed on this line
            quantity:,
            # Price per unit for this line
            unit_price:
          )
          end

          sig do
            override.returns(
              {
                amount: T.nilable(Float),
                description: T.nilable(String),
                product_external_id: T.nilable(String),
                quantity: T.nilable(Float),
                unit_price: T.nilable(Float)
              }
            )
          end
          def to_hash
          end
        end

        # The invoice status (open, paid, or canceled)
        module State
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::Models::V1::CustomerListInvoicesResponse::State
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :OPEN,
              Stigg::Models::V1::CustomerListInvoicesResponse::State::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              Stigg::Models::V1::CustomerListInvoicesResponse::State::TaggedSymbol
            )
          PAID =
            T.let(
              :PAID,
              Stigg::Models::V1::CustomerListInvoicesResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::CustomerListInvoicesResponse::State::TaggedSymbol
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
