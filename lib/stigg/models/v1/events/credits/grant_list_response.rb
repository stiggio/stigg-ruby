# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Credits
          # @see Stigg::Resources::V1::Events::Credits::Grants#list
          class GrantListResponse < Stigg::Internal::Type::BaseModel
            # @!attribute id
            #   The unique readable identifier of the credit grant
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #   The total credits granted
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute comment
            #   An optional comment on the credit grant
            #
            #   @return [String, nil]
            required :comment, String, nil?: true

            # @!attribute consumed_amount
            #   The total credits consumed from this grant
            #
            #   @return [Float]
            required :consumed_amount, Float, api_name: :consumedAmount

            # @!attribute cost
            #   The monetary cost of the credit grant
            #
            #   @return [Stigg::Models::V1::Events::Credits::GrantListResponse::Cost]
            required :cost, -> { Stigg::Models::V1::Events::Credits::GrantListResponse::Cost }

            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute currency_id
            #   The currency identifier for this grant
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute customer_id
            #   The customer ID this grant belongs to
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute display_name
            #   The display name of the credit grant
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute effective_at
            #   The date when the credit grant becomes effective
            #
            #   @return [Time]
            required :effective_at, Time, api_name: :effectiveAt

            # @!attribute expire_at
            #   The date when the credit grant expires
            #
            #   @return [Time, nil]
            required :expire_at, Time, api_name: :expireAt, nil?: true

            # @!attribute grant_type
            #   The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType]
            required :grant_type,
                     enum: -> { Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType },
                     api_name: :grantType

            # @!attribute invoice_id
            #   The billing invoice ID associated with this grant
            #
            #   @return [String, nil]
            required :invoice_id, String, api_name: :invoiceId, nil?: true

            # @!attribute latest_invoice
            #   The latest invoice details for this grant
            #
            #   @return [Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice, nil]
            required :latest_invoice,
                     -> { Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice },
                     api_name: :latestInvoice,
                     nil?: true

            # @!attribute metadata
            #   Metadata associated with the entity
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute payment_collection
            #   The payment collection status
            #
            #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection]
            required :payment_collection,
                     enum: -> { Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection },
                     api_name: :paymentCollection

            # @!attribute priority
            #   The priority of the credit grant (lower number = higher priority)
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute resource_id
            #   The resource ID this grant is scoped to
            #
            #   @return [String, nil]
            required :resource_id, String, api_name: :resourceId, nil?: true

            # @!attribute source_type
            #   The source type of the grant (PRICE, PLAN_ENTITLEMENT, ADDON_ENTITLEMENT)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType, nil]
            required :source_type,
                     enum: -> { Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType },
                     api_name: :sourceType,
                     nil?: true

            # @!attribute status
            #   The effective status of the credit grant
            #
            #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::Status]
            required :status, enum: -> { Stigg::Models::V1::Events::Credits::GrantListResponse::Status }

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute voided_at
            #   The date when the credit grant was voided
            #
            #   @return [Time, nil]
            required :voided_at, Time, api_name: :voidedAt, nil?: true

            # @!method initialize(id:, amount:, comment:, consumed_amount:, cost:, created_at:, currency_id:, customer_id:, display_name:, effective_at:, expire_at:, grant_type:, invoice_id:, latest_invoice:, metadata:, payment_collection:, priority:, resource_id:, source_type:, status:, updated_at:, voided_at:)
            #   Credit grant object representing allocated credits for a customer
            #
            #   @param id [String] The unique readable identifier of the credit grant
            #
            #   @param amount [Float] The total credits granted
            #
            #   @param comment [String, nil] An optional comment on the credit grant
            #
            #   @param consumed_amount [Float] The total credits consumed from this grant
            #
            #   @param cost [Stigg::Models::V1::Events::Credits::GrantListResponse::Cost] The monetary cost of the credit grant
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param currency_id [String] The currency identifier for this grant
            #
            #   @param customer_id [String] The customer ID this grant belongs to
            #
            #   @param display_name [String] The display name of the credit grant
            #
            #   @param effective_at [Time] The date when the credit grant becomes effective
            #
            #   @param expire_at [Time, nil] The date when the credit grant expires
            #
            #   @param grant_type [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType] The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            #
            #   @param invoice_id [String, nil] The billing invoice ID associated with this grant
            #
            #   @param latest_invoice [Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice, nil] The latest invoice details for this grant
            #
            #   @param metadata [Hash{Symbol=>String}] Metadata associated with the entity
            #
            #   @param payment_collection [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection] The payment collection status
            #
            #   @param priority [Float] The priority of the credit grant (lower number = higher priority)
            #
            #   @param resource_id [String, nil] The resource ID this grant is scoped to
            #
            #   @param source_type [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType, nil] The source type of the grant (PRICE, PLAN_ENTITLEMENT, ADDON_ENTITLEMENT)
            #
            #   @param status [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::Status] The effective status of the credit grant
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
            #
            #   @param voided_at [Time, nil] The date when the credit grant was voided

            # @see Stigg::Models::V1::Events::Credits::GrantListResponse#cost
            class Cost < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The cost amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   The currency code
              #
              #   @return [String]
              required :currency, String

              # @!method initialize(amount:, currency:)
              #   The monetary cost of the credit grant
              #
              #   @param amount [Float] The cost amount
              #
              #   @param currency [String] The currency code
            end

            # The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            #
            # @see Stigg::Models::V1::Events::Credits::GrantListResponse#grant_type
            module GrantType
              extend Stigg::Internal::Type::Enum

              PAID = :PAID
              PROMOTIONAL = :PROMOTIONAL
              RECURRING = :RECURRING

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Stigg::Models::V1::Events::Credits::GrantListResponse#latest_invoice
            class LatestInvoice < Stigg::Internal::Type::BaseModel
              # @!attribute billing_id
              #   The billing provider invoice ID
              #
              #   @return [String]
              required :billing_id, String, api_name: :billingId

              # @!attribute billing_reason
              #   The billing reason for the invoice
              #
              #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason, nil]
              required :billing_reason,
                       enum: -> { Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason },
                       api_name: :billingReason,
                       nil?: true

              # @!attribute created_at
              #   The invoice creation date
              #
              #   @return [Time]
              required :created_at, Time, api_name: :createdAt

              # @!attribute currency
              #   The invoice currency
              #
              #   @return [String, nil]
              required :currency, String, nil?: true

              # @!attribute due_date
              #   The invoice due date
              #
              #   @return [Time, nil]
              required :due_date, Time, api_name: :dueDate, nil?: true

              # @!attribute error_message
              #   Error message if payment failed
              #
              #   @return [String, nil]
              required :error_message, String, api_name: :errorMessage, nil?: true

              # @!attribute payment_url
              #   The payment URL for settling the invoice
              #
              #   @return [String, nil]
              required :payment_url, String, api_name: :paymentUrl, nil?: true

              # @!attribute pdf_url
              #   The PDF URL of the invoice
              #
              #   @return [String, nil]
              required :pdf_url, String, api_name: :pdfUrl, nil?: true

              # @!attribute requires_action
              #   Whether the invoice requires user action
              #
              #   @return [Boolean]
              required :requires_action, Stigg::Internal::Type::Boolean, api_name: :requiresAction

              # @!attribute status
              #   The invoice status
              #
              #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status]
              required :status,
                       enum: -> { Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status }

              # @!attribute sub_total
              #   The subtotal amount before tax
              #
              #   @return [Float, nil]
              required :sub_total, Float, api_name: :subTotal, nil?: true

              # @!attribute tax
              #   The tax amount
              #
              #   @return [Float, nil]
              required :tax, Float, nil?: true

              # @!attribute total
              #   The total amount including tax
              #
              #   @return [Float, nil]
              required :total, Float, nil?: true

              # @!attribute updated_at
              #   The invoice last update date
              #
              #   @return [Time]
              required :updated_at, Time, api_name: :updatedAt

              # @!method initialize(billing_id:, billing_reason:, created_at:, currency:, due_date:, error_message:, payment_url:, pdf_url:, requires_action:, status:, sub_total:, tax:, total:, updated_at:)
              #   The latest invoice details for this grant
              #
              #   @param billing_id [String] The billing provider invoice ID
              #
              #   @param billing_reason [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason, nil] The billing reason for the invoice
              #
              #   @param created_at [Time] The invoice creation date
              #
              #   @param currency [String, nil] The invoice currency
              #
              #   @param due_date [Time, nil] The invoice due date
              #
              #   @param error_message [String, nil] Error message if payment failed
              #
              #   @param payment_url [String, nil] The payment URL for settling the invoice
              #
              #   @param pdf_url [String, nil] The PDF URL of the invoice
              #
              #   @param requires_action [Boolean] Whether the invoice requires user action
              #
              #   @param status [Symbol, Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status] The invoice status
              #
              #   @param sub_total [Float, nil] The subtotal amount before tax
              #
              #   @param tax [Float, nil] The tax amount
              #
              #   @param total [Float, nil] The total amount including tax
              #
              #   @param updated_at [Time] The invoice last update date

              # The billing reason for the invoice
              #
              # @see Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice#billing_reason
              module BillingReason
                extend Stigg::Internal::Type::Enum

                MANUAL = :MANUAL
                OTHER = :OTHER

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The invoice status
              #
              # @see Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice#status
              module Status
                extend Stigg::Internal::Type::Enum

                OPEN = :OPEN
                PAID = :PAID
                CANCELED = :CANCELED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # The payment collection status
            #
            # @see Stigg::Models::V1::Events::Credits::GrantListResponse#payment_collection
            module PaymentCollection
              extend Stigg::Internal::Type::Enum

              NOT_REQUIRED = :NOT_REQUIRED
              PROCESSING = :PROCESSING
              FAILED = :FAILED
              ACTION_REQUIRED = :ACTION_REQUIRED

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The source type of the grant (PRICE, PLAN_ENTITLEMENT, ADDON_ENTITLEMENT)
            #
            # @see Stigg::Models::V1::Events::Credits::GrantListResponse#source_type
            module SourceType
              extend Stigg::Internal::Type::Enum

              PRICE = :PRICE
              PLAN_ENTITLEMENT = :PLAN_ENTITLEMENT
              ADDON_ENTITLEMENT = :ADDON_ENTITLEMENT

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The effective status of the credit grant
            #
            # @see Stigg::Models::V1::Events::Credits::GrantListResponse#status
            module Status
              extend Stigg::Internal::Type::Enum

              PAYMENT_PENDING = :PAYMENT_PENDING
              ACTIVE = :ACTIVE
              EXPIRED = :EXPIRED
              VOIDED = :VOIDED
              SCHEDULED = :SCHEDULED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
