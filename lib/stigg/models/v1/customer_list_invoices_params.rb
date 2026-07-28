# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list_invoices
      class CustomerListInvoicesParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute after
        #   Return items that come after this cursor
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Return items that come before this cursor
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute contract_external_id
        #   Filter to invoices for this contract only (contract external ID or Received
        #   contract ID). Omit for all contracts.
        #
        #   @return [String, nil]
        optional :contract_external_id, String

        # @!attribute issued_after
        #   Filter to invoices issued on or after this date, inclusive (ISO 8601)
        #
        #   @return [Time, nil]
        optional :issued_after, Time

        # @!attribute issued_before
        #   Filter to invoices issued on or before this date, inclusive (ISO 8601)
        #
        #   @return [Time, nil]
        optional :issued_before, Time

        # @!attribute limit
        #   Maximum number of items to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute order_by
        #   Field to sort by: issueDate (default), dueDate, or total
        #
        #   @return [Symbol, Stigg::Models::V1::CustomerListInvoicesParams::OrderBy, nil]
        optional :order_by, enum: -> { Stigg::V1::CustomerListInvoicesParams::OrderBy }

        # @!attribute order_dir
        #   Sort direction: ASC (default) or DESC
        #
        #   @return [Symbol, Stigg::Models::V1::CustomerListInvoicesParams::OrderDir, nil]
        optional :order_dir, enum: -> { Stigg::V1::CustomerListInvoicesParams::OrderDir }

        # @!attribute state_in
        #   Filter by invoice state. Supports comma-separated values for multiple states
        #
        #   @return [String, nil]
        optional :state_in, String

        # @!attribute x_account_id
        #
        #   @return [String, nil]
        optional :x_account_id, String

        # @!attribute x_environment_id
        #
        #   @return [String, nil]
        optional :x_environment_id, String

        # @!method initialize(id:, after: nil, before: nil, contract_external_id: nil, issued_after: nil, issued_before: nil, limit: nil, order_by: nil, order_dir: nil, state_in: nil, x_account_id: nil, x_environment_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Stigg::Models::V1::CustomerListInvoicesParams} for more details.
        #
        #   @param id [String]
        #
        #   @param after [String] Return items that come after this cursor
        #
        #   @param before [String] Return items that come before this cursor
        #
        #   @param contract_external_id [String] Filter to invoices for this contract only (contract external ID or Received cont
        #
        #   @param issued_after [Time] Filter to invoices issued on or after this date, inclusive (ISO 8601)
        #
        #   @param issued_before [Time] Filter to invoices issued on or before this date, inclusive (ISO 8601)
        #
        #   @param limit [Integer] Maximum number of items to return
        #
        #   @param order_by [Symbol, Stigg::Models::V1::CustomerListInvoicesParams::OrderBy] Field to sort by: issueDate (default), dueDate, or total
        #
        #   @param order_dir [Symbol, Stigg::Models::V1::CustomerListInvoicesParams::OrderDir] Sort direction: ASC (default) or DESC
        #
        #   @param state_in [String] Filter by invoice state. Supports comma-separated values for multiple states
        #
        #   @param x_account_id [String]
        #
        #   @param x_environment_id [String]
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # Field to sort by: issueDate (default), dueDate, or total
        module OrderBy
          extend Stigg::Internal::Type::Enum

          ISSUE_DATE = :issueDate
          DUE_DATE = :dueDate
          TOTAL = :total

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sort direction: ASC (default) or DESC
        module OrderDir
          extend Stigg::Internal::Type::Enum

          ASC = :ASC
          DESC = :DESC

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
