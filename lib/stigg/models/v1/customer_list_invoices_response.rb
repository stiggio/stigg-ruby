# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list_invoices
      class CustomerListInvoicesResponse < Stigg::Internal::Type::BaseModel
        # @!attribute contract_external_id
        #   External ID of the contract the invoice belongs to: your contract ref when
        #   mapped, otherwise the Received contract ID
        #
        #   @return [String, nil]
        required :contract_external_id, String, api_name: :contractExternalId, nil?: true

        # @!attribute currency
        #   The ISO-4217 currency code of the invoice
        #
        #   @return [String, nil]
        required :currency, String, nil?: true

        # @!attribute customer_external_id
        #   External ID of the customer the invoice belongs to: your customer ref when
        #   mapped, otherwise the Received customer ID
        #
        #   @return [String, nil]
        required :customer_external_id, String, api_name: :customerExternalId, nil?: true

        # @!attribute discount
        #   The total discount amount
        #
        #   @return [Float, nil]
        required :discount, Float, nil?: true

        # @!attribute due_date
        #   The date payment is due
        #
        #   @return [Time, nil]
        required :due_date, Time, api_name: :dueDate, nil?: true

        # @!attribute invoice_external_id
        #   External ID for the invoice: the mapped external ID when one exists, otherwise
        #   the invoice ID
        #
        #   @return [String, nil]
        required :invoice_external_id, String, api_name: :invoiceExternalId, nil?: true

        # @!attribute invoice_id
        #   The billing provider (Received) invoice ID
        #
        #   @return [String]
        required :invoice_id, String, api_name: :invoiceId

        # @!attribute invoice_number
        #   The invoice document number (or draft number while the invoice is unissued)
        #
        #   @return [String, nil]
        required :invoice_number, String, api_name: :invoiceNumber, nil?: true

        # @!attribute issue_date
        #   The date the invoice was issued
        #
        #   @return [Time, nil]
        required :issue_date, Time, api_name: :issueDate, nil?: true

        # @!attribute line_items
        #   The invoice line items
        #
        #   @return [Array<Stigg::Models::V1::CustomerListInvoicesResponse::LineItem>]
        required :line_items,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListInvoicesResponse::LineItem] },
                 api_name: :lineItems

        # @!attribute paid_date
        #   The date the invoice was reconciled as paid; present once reconciled
        #
        #   @return [Time, nil]
        required :paid_date, Time, api_name: :paidDate, nil?: true

        # @!attribute state
        #   The invoice status (open, paid, or canceled)
        #
        #   @return [Symbol, Stigg::Models::V1::CustomerListInvoicesResponse::State]
        required :state, enum: -> { Stigg::Models::V1::CustomerListInvoicesResponse::State }

        # @!attribute subtotal
        #   The pre-tax subtotal
        #
        #   @return [Float, nil]
        required :subtotal, Float, nil?: true

        # @!attribute tax
        #   The total tax amount
        #
        #   @return [Float, nil]
        required :tax, Float, nil?: true

        # @!attribute total
        #   The total amount due
        #
        #   @return [Float, nil]
        required :total, Float, nil?: true

        # @!method initialize(contract_external_id:, currency:, customer_external_id:, discount:, due_date:, invoice_external_id:, invoice_id:, invoice_number:, issue_date:, line_items:, paid_date:, state:, subtotal:, tax:, total:)
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::CustomerListInvoicesResponse} for more details.
        #
        #   A customer invoice as reported by the connected billing provider.
        #
        #   @param contract_external_id [String, nil] External ID of the contract the invoice belongs to: your contract ref when mappe
        #
        #   @param currency [String, nil] The ISO-4217 currency code of the invoice
        #
        #   @param customer_external_id [String, nil] External ID of the customer the invoice belongs to: your customer ref when mappe
        #
        #   @param discount [Float, nil] The total discount amount
        #
        #   @param due_date [Time, nil] The date payment is due
        #
        #   @param invoice_external_id [String, nil] External ID for the invoice: the mapped external ID when one exists, otherwise t
        #
        #   @param invoice_id [String] The billing provider (Received) invoice ID
        #
        #   @param invoice_number [String, nil] The invoice document number (or draft number while the invoice is unissued)
        #
        #   @param issue_date [Time, nil] The date the invoice was issued
        #
        #   @param line_items [Array<Stigg::Models::V1::CustomerListInvoicesResponse::LineItem>] The invoice line items
        #
        #   @param paid_date [Time, nil] The date the invoice was reconciled as paid; present once reconciled
        #
        #   @param state [Symbol, Stigg::Models::V1::CustomerListInvoicesResponse::State] The invoice status (open, paid, or canceled)
        #
        #   @param subtotal [Float, nil] The pre-tax subtotal
        #
        #   @param tax [Float, nil] The total tax amount
        #
        #   @param total [Float, nil] The total amount due

        class LineItem < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   Total amount for this line (unit price × quantity)
          #
          #   @return [Float, nil]
          required :amount, Float, nil?: true

          # @!attribute description
          #   Human-readable description of the line item
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!attribute product_external_id
          #   External ID of the product this line item relates to, when one is mapped
          #
          #   @return [String, nil]
          required :product_external_id, String, api_name: :productExternalId, nil?: true

          # @!attribute quantity
          #   Quantity billed on this line
          #
          #   @return [Float, nil]
          required :quantity, Float, nil?: true

          # @!attribute unit_price
          #   Price per unit for this line
          #
          #   @return [Float, nil]
          required :unit_price, Float, api_name: :unitPrice, nil?: true

          # @!method initialize(amount:, description:, product_external_id:, quantity:, unit_price:)
          #   A single line item on an invoice.
          #
          #   @param amount [Float, nil] Total amount for this line (unit price × quantity)
          #
          #   @param description [String, nil] Human-readable description of the line item
          #
          #   @param product_external_id [String, nil] External ID of the product this line item relates to, when one is mapped
          #
          #   @param quantity [Float, nil] Quantity billed on this line
          #
          #   @param unit_price [Float, nil] Price per unit for this line
        end

        # The invoice status (open, paid, or canceled)
        #
        # @see Stigg::Models::V1::CustomerListInvoicesResponse#state
        module State
          extend Stigg::Internal::Type::Enum

          OPEN = :OPEN
          CANCELED = :CANCELED
          PAID = :PAID

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
