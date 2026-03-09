# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Credits
          class GrantListResponse < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::Credits::GrantListResponse,
                  Stigg::Internal::AnyHash
                )
              end

            # The unique readable identifier of the credit grant
            sig { returns(String) }
            attr_accessor :id

            # The total credits granted
            sig { returns(Float) }
            attr_accessor :amount

            # An optional comment on the credit grant
            sig { returns(T.nilable(String)) }
            attr_accessor :comment

            # The total credits consumed from this grant
            sig { returns(Float) }
            attr_accessor :consumed_amount

            # The monetary cost of the credit grant
            sig do
              returns(
                Stigg::Models::V1::Events::Credits::GrantListResponse::Cost
              )
            end
            attr_reader :cost

            sig do
              params(
                cost:
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Cost::OrHash
              ).void
            end
            attr_writer :cost

            # Timestamp of when the record was created
            sig { returns(Time) }
            attr_accessor :created_at

            # The currency identifier for this grant
            sig { returns(String) }
            attr_accessor :currency_id

            # The customer ID this grant belongs to
            sig { returns(String) }
            attr_accessor :customer_id

            # The display name of the credit grant
            sig { returns(String) }
            attr_accessor :display_name

            # The date when the credit grant becomes effective
            sig { returns(Time) }
            attr_accessor :effective_at

            # The date when the credit grant expires
            sig { returns(T.nilable(Time)) }
            attr_accessor :expire_at

            # The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            sig do
              returns(
                Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType::TaggedSymbol
              )
            end
            attr_accessor :grant_type

            # The billing invoice ID associated with this grant
            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_id

            # The latest invoice details for this grant
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice
                )
              )
            end
            attr_reader :latest_invoice

            sig do
              params(
                latest_invoice:
                  T.nilable(
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::OrHash
                  )
              ).void
            end
            attr_writer :latest_invoice

            # Metadata associated with the entity
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            # The payment collection status
            sig do
              returns(
                Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::TaggedSymbol
              )
            end
            attr_accessor :payment_collection

            # The priority of the credit grant (lower number = higher priority)
            sig { returns(Float) }
            attr_accessor :priority

            # The resource ID this grant is scoped to
            sig { returns(T.nilable(String)) }
            attr_accessor :resource_id

            # The source type of the grant (PRICE, PLAN_ENTITLEMENT, ADDON_ENTITLEMENT)
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType::TaggedSymbol
                )
              )
            end
            attr_accessor :source_type

            # The effective status of the credit grant
            sig do
              returns(
                Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Timestamp of when the record was last updated
            sig { returns(Time) }
            attr_accessor :updated_at

            # The date when the credit grant was voided
            sig { returns(T.nilable(Time)) }
            attr_accessor :voided_at

            # Credit grant object representing allocated credits for a customer
            sig do
              params(
                id: String,
                amount: Float,
                comment: T.nilable(String),
                consumed_amount: Float,
                cost:
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Cost::OrHash,
                created_at: Time,
                currency_id: String,
                customer_id: String,
                display_name: String,
                effective_at: Time,
                expire_at: T.nilable(Time),
                grant_type:
                  Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType::OrSymbol,
                invoice_id: T.nilable(String),
                latest_invoice:
                  T.nilable(
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::OrHash
                  ),
                metadata: T::Hash[Symbol, String],
                payment_collection:
                  Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::OrSymbol,
                priority: Float,
                resource_id: T.nilable(String),
                source_type:
                  T.nilable(
                    Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType::OrSymbol
                  ),
                status:
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Status::OrSymbol,
                updated_at: Time,
                voided_at: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(
              # The unique readable identifier of the credit grant
              id:,
              # The total credits granted
              amount:,
              # An optional comment on the credit grant
              comment:,
              # The total credits consumed from this grant
              consumed_amount:,
              # The monetary cost of the credit grant
              cost:,
              # Timestamp of when the record was created
              created_at:,
              # The currency identifier for this grant
              currency_id:,
              # The customer ID this grant belongs to
              customer_id:,
              # The display name of the credit grant
              display_name:,
              # The date when the credit grant becomes effective
              effective_at:,
              # The date when the credit grant expires
              expire_at:,
              # The type of credit grant (PAID, PROMOTIONAL, RECURRING)
              grant_type:,
              # The billing invoice ID associated with this grant
              invoice_id:,
              # The latest invoice details for this grant
              latest_invoice:,
              # Metadata associated with the entity
              metadata:,
              # The payment collection status
              payment_collection:,
              # The priority of the credit grant (lower number = higher priority)
              priority:,
              # The resource ID this grant is scoped to
              resource_id:,
              # The source type of the grant (PRICE, PLAN_ENTITLEMENT, ADDON_ENTITLEMENT)
              source_type:,
              # The effective status of the credit grant
              status:,
              # Timestamp of when the record was last updated
              updated_at:,
              # The date when the credit grant was voided
              voided_at:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  comment: T.nilable(String),
                  consumed_amount: Float,
                  cost:
                    Stigg::Models::V1::Events::Credits::GrantListResponse::Cost,
                  created_at: Time,
                  currency_id: String,
                  customer_id: String,
                  display_name: String,
                  effective_at: Time,
                  expire_at: T.nilable(Time),
                  grant_type:
                    Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType::TaggedSymbol,
                  invoice_id: T.nilable(String),
                  latest_invoice:
                    T.nilable(
                      Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice
                    ),
                  metadata: T::Hash[Symbol, String],
                  payment_collection:
                    Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::TaggedSymbol,
                  priority: Float,
                  resource_id: T.nilable(String),
                  source_type:
                    T.nilable(
                      Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType::TaggedSymbol
                    ),
                  status:
                    Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol,
                  updated_at: Time,
                  voided_at: T.nilable(Time)
                }
              )
            end
            def to_hash
            end

            class Cost < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::Credits::GrantListResponse::Cost,
                    Stigg::Internal::AnyHash
                  )
                end

              # The cost amount
              sig { returns(Float) }
              attr_accessor :amount

              # The currency code
              sig { returns(String) }
              attr_accessor :currency

              # The monetary cost of the credit grant
              sig do
                params(amount: Float, currency: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The cost amount
                amount:,
                # The currency code
                currency:
              )
              end

              sig { override.returns({ amount: Float, currency: String }) }
              def to_hash
              end
            end

            # The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            module GrantType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAID =
                T.let(
                  :PAID,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType::TaggedSymbol
                )
              PROMOTIONAL =
                T.let(
                  :PROMOTIONAL,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType::TaggedSymbol
                )
              RECURRING =
                T.let(
                  :RECURRING,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::Credits::GrantListResponse::GrantType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class LatestInvoice < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice,
                    Stigg::Internal::AnyHash
                  )
                end

              # The billing provider invoice ID
              sig { returns(String) }
              attr_accessor :billing_id

              # The billing reason for the invoice
              sig do
                returns(
                  T.nilable(
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :billing_reason

              # The invoice creation date
              sig { returns(Time) }
              attr_accessor :created_at

              # The invoice currency
              sig { returns(T.nilable(String)) }
              attr_accessor :currency

              # The invoice due date
              sig { returns(T.nilable(Time)) }
              attr_accessor :due_date

              # Error message if payment failed
              sig { returns(T.nilable(String)) }
              attr_accessor :error_message

              # The payment URL for settling the invoice
              sig { returns(T.nilable(String)) }
              attr_accessor :payment_url

              # The PDF URL of the invoice
              sig { returns(T.nilable(String)) }
              attr_accessor :pdf_url

              # Whether the invoice requires user action
              sig { returns(T::Boolean) }
              attr_accessor :requires_action

              # The invoice status
              sig do
                returns(
                  Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status::TaggedSymbol
                )
              end
              attr_accessor :status

              # The subtotal amount before tax
              sig { returns(T.nilable(Float)) }
              attr_accessor :sub_total

              # The tax amount
              sig { returns(T.nilable(Float)) }
              attr_accessor :tax

              # The total amount including tax
              sig { returns(T.nilable(Float)) }
              attr_accessor :total

              # The invoice last update date
              sig { returns(Time) }
              attr_accessor :updated_at

              # The latest invoice details for this grant
              sig do
                params(
                  billing_id: String,
                  billing_reason:
                    T.nilable(
                      Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason::OrSymbol
                    ),
                  created_at: Time,
                  currency: T.nilable(String),
                  due_date: T.nilable(Time),
                  error_message: T.nilable(String),
                  payment_url: T.nilable(String),
                  pdf_url: T.nilable(String),
                  requires_action: T::Boolean,
                  status:
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status::OrSymbol,
                  sub_total: T.nilable(Float),
                  tax: T.nilable(Float),
                  total: T.nilable(Float),
                  updated_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                # The billing provider invoice ID
                billing_id:,
                # The billing reason for the invoice
                billing_reason:,
                # The invoice creation date
                created_at:,
                # The invoice currency
                currency:,
                # The invoice due date
                due_date:,
                # Error message if payment failed
                error_message:,
                # The payment URL for settling the invoice
                payment_url:,
                # The PDF URL of the invoice
                pdf_url:,
                # Whether the invoice requires user action
                requires_action:,
                # The invoice status
                status:,
                # The subtotal amount before tax
                sub_total:,
                # The tax amount
                tax:,
                # The total amount including tax
                total:,
                # The invoice last update date
                updated_at:
              )
              end

              sig do
                override.returns(
                  {
                    billing_id: String,
                    billing_reason:
                      T.nilable(
                        Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason::TaggedSymbol
                      ),
                    created_at: Time,
                    currency: T.nilable(String),
                    due_date: T.nilable(Time),
                    error_message: T.nilable(String),
                    payment_url: T.nilable(String),
                    pdf_url: T.nilable(String),
                    requires_action: T::Boolean,
                    status:
                      Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status::TaggedSymbol,
                    sub_total: T.nilable(Float),
                    tax: T.nilable(Float),
                    total: T.nilable(Float),
                    updated_at: Time
                  }
                )
              end
              def to_hash
              end

              # The billing reason for the invoice
              module BillingReason
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MANUAL =
                  T.let(
                    :MANUAL,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason::TaggedSymbol
                  )
                OTHER =
                  T.let(
                    :OTHER,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::BillingReason::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # The invoice status
              module Status
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                OPEN =
                  T.let(
                    :OPEN,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status::TaggedSymbol
                  )
                PAID =
                  T.let(
                    :PAID,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status::TaggedSymbol
                  )
                CANCELED =
                  T.let(
                    :CANCELED,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::Events::Credits::GrantListResponse::LatestInvoice::Status::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The payment collection status
            module PaymentCollection
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NOT_REQUIRED =
                T.let(
                  :NOT_REQUIRED,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::TaggedSymbol
                )
              PROCESSING =
                T.let(
                  :PROCESSING,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::TaggedSymbol
                )
              FAILED =
                T.let(
                  :FAILED,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::TaggedSymbol
                )
              ACTION_REQUIRED =
                T.let(
                  :ACTION_REQUIRED,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::Credits::GrantListResponse::PaymentCollection::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The source type of the grant (PRICE, PLAN_ENTITLEMENT, ADDON_ENTITLEMENT)
            module SourceType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE =
                T.let(
                  :PRICE,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType::TaggedSymbol
                )
              PLAN_ENTITLEMENT =
                T.let(
                  :PLAN_ENTITLEMENT,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType::TaggedSymbol
                )
              ADDON_ENTITLEMENT =
                T.let(
                  :ADDON_ENTITLEMENT,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::Credits::GrantListResponse::SourceType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The effective status of the credit grant
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::Events::Credits::GrantListResponse::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAYMENT_PENDING =
                T.let(
                  :PAYMENT_PENDING,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol
                )
              ACTIVE =
                T.let(
                  :ACTIVE,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :EXPIRED,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol
                )
              VOIDED =
                T.let(
                  :VOIDED,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol
                )
              SCHEDULED =
                T.let(
                  :SCHEDULED,
                  Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::Events::Credits::GrantListResponse::Status::TaggedSymbol
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
