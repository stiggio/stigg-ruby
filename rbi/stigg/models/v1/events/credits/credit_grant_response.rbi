# typed: strong

module Stigg
  module Models
    module V1
      module Events
        CreditGrantResponse = Credits::CreditGrantResponse

        module Credits
          class CreditGrantResponse < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::Credits::CreditGrantResponse,
                  Stigg::Internal::AnyHash
                )
              end

            # Credit grant object representing allocated credits for a customer
            sig do
              returns(Stigg::V1::Events::Credits::CreditGrantResponse::Data)
            end
            attr_reader :data

            sig do
              params(
                data:
                  Stigg::V1::Events::Credits::CreditGrantResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            # Response object
            sig do
              params(
                data:
                  Stigg::V1::Events::Credits::CreditGrantResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Credit grant object representing allocated credits for a customer
              data:
            )
            end

            sig do
              override.returns(
                { data: Stigg::V1::Events::Credits::CreditGrantResponse::Data }
              )
            end
            def to_hash
            end

            class Data < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data,
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
                  Stigg::V1::Events::Credits::CreditGrantResponse::Data::Cost
                )
              end
              attr_reader :cost

              sig do
                params(
                  cost:
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Cost::OrHash
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
                  Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType::TaggedSymbol
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
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice
                  )
                )
              end
              attr_reader :latest_invoice

              sig do
                params(
                  latest_invoice:
                    T.nilable(
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::OrHash
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
                  Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::TaggedSymbol
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
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType::TaggedSymbol
                  )
                )
              end
              attr_accessor :source_type

              # The effective status of the credit grant
              sig do
                returns(
                  Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol
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
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Cost::OrHash,
                  created_at: Time,
                  currency_id: String,
                  customer_id: String,
                  display_name: String,
                  effective_at: Time,
                  expire_at: T.nilable(Time),
                  grant_type:
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType::OrSymbol,
                  invoice_id: T.nilable(String),
                  latest_invoice:
                    T.nilable(
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::OrHash
                    ),
                  metadata: T::Hash[Symbol, String],
                  payment_collection:
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::OrSymbol,
                  priority: Float,
                  resource_id: T.nilable(String),
                  source_type:
                    T.nilable(
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType::OrSymbol
                    ),
                  status:
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::OrSymbol,
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::Cost,
                    created_at: Time,
                    currency_id: String,
                    customer_id: String,
                    display_name: String,
                    effective_at: Time,
                    expire_at: T.nilable(Time),
                    grant_type:
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType::TaggedSymbol,
                    invoice_id: T.nilable(String),
                    latest_invoice:
                      T.nilable(
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice
                      ),
                    metadata: T::Hash[Symbol, String],
                    payment_collection:
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::TaggedSymbol,
                    priority: Float,
                    resource_id: T.nilable(String),
                    source_type:
                      T.nilable(
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType::TaggedSymbol
                      ),
                    status:
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol,
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::Cost,
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAID =
                  T.let(
                    :PAID,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType::TaggedSymbol
                  )
                PROMOTIONAL =
                  T.let(
                    :PROMOTIONAL,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType::TaggedSymbol
                  )
                RECURRING =
                  T.let(
                    :RECURRING,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::GrantType::TaggedSymbol
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice,
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
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
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status::TaggedSymbol
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
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::BillingReason::OrSymbol
                      ),
                    created_at: Time,
                    currency: T.nilable(String),
                    due_date: T.nilable(Time),
                    error_message: T.nilable(String),
                    payment_url: T.nilable(String),
                    pdf_url: T.nilable(String),
                    requires_action: T::Boolean,
                    status:
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status::OrSymbol,
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
                          Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                        ),
                      created_at: Time,
                      currency: T.nilable(String),
                      due_date: T.nilable(Time),
                      error_message: T.nilable(String),
                      payment_url: T.nilable(String),
                      pdf_url: T.nilable(String),
                      requires_action: T::Boolean,
                      status:
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status::TaggedSymbol,
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
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::BillingReason
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  MANUAL =
                    T.let(
                      :MANUAL,
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                    )
                  OTHER =
                    T.let(
                      :OTHER,
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
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
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  OPEN =
                    T.let(
                      :OPEN,
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status::TaggedSymbol
                    )
                  PAID =
                    T.let(
                      :PAID,
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status::TaggedSymbol
                    )
                  CANCELED =
                    T.let(
                      :CANCELED,
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Stigg::V1::Events::Credits::CreditGrantResponse::Data::LatestInvoice::Status::TaggedSymbol
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NOT_REQUIRED =
                  T.let(
                    :NOT_REQUIRED,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::TaggedSymbol
                  )
                PROCESSING =
                  T.let(
                    :PROCESSING,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::TaggedSymbol
                  )
                FAILED =
                  T.let(
                    :FAILED,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::TaggedSymbol
                  )
                ACTION_REQUIRED =
                  T.let(
                    :ACTION_REQUIRED,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::PaymentCollection::TaggedSymbol
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PRICE =
                  T.let(
                    :PRICE,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType::TaggedSymbol
                  )
                PLAN_ENTITLEMENT =
                  T.let(
                    :PLAN_ENTITLEMENT,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType::TaggedSymbol
                  )
                ADDON_ENTITLEMENT =
                  T.let(
                    :ADDON_ENTITLEMENT,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::SourceType::TaggedSymbol
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
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PAYMENT_PENDING =
                  T.let(
                    :PAYMENT_PENDING,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol
                  )
                ACTIVE =
                  T.let(
                    :ACTIVE,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol
                  )
                EXPIRED =
                  T.let(
                    :EXPIRED,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol
                  )
                VOIDED =
                  T.let(
                    :VOIDED,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol
                  )
                SCHEDULED =
                  T.let(
                    :SCHEDULED,
                    Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Events::Credits::CreditGrantResponse::Data::Status::TaggedSymbol
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
