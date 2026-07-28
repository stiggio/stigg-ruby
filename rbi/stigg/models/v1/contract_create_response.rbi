# typed: strong

module Stigg
  module Models
    module V1
      class ContractCreateResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::ContractCreateResponse,
              Stigg::Internal::AnyHash
            )
          end

        # A billing contract as reported by the connected billing provider.
        sig { returns(Stigg::Models::V1::ContractCreateResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::ContractCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data: Stigg::Models::V1::ContractCreateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A billing contract as reported by the connected billing provider.
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::ContractCreateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::ContractCreateResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # The persisted Stigg contract id (matches a subscription’s contractId; present
          # for Stigg-managed contracts)
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The date the contract activation ends
          sig { returns(T.nilable(Time)) }
          attr_accessor :activation_end_date

          # The date the contract becomes active
          sig { returns(T.nilable(Time)) }
          attr_accessor :activation_start_date

          # The billing provider (Received) contract ID; null until the contract has synced
          # to the billing provider
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # The Stigg contract ref ID (the key used to fetch/update/delete this contract)
          sig { returns(String) }
          attr_accessor :contract_id

          # The date the contract was created
          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          # The external identifier of the customer the contract belongs to
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_external_id

          # The external identifier of the contract
          sig { returns(String) }
          attr_accessor :external_id

          # The most recent non-draft invoice for this contract (open, paid, or canceled),
          # or null when none exists
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice
              )
            )
          end
          attr_reader :latest_invoice

          sig do
            params(
              latest_invoice:
                T.nilable(
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::OrHash
                )
            ).void
          end
          attr_writer :latest_invoice

          # The contract name (the purchase-order number when set, otherwise the
          # contract/customer name)
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # A preview of the contract's upcoming invoice, or null when none is available
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice
              )
            )
          end
          attr_reader :next_invoice

          sig do
            params(
              next_invoice:
                T.nilable(
                  Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::OrHash
                )
            ).void
          end
          attr_writer :next_invoice

          # Purchase-order number, when set on the contract
          sig { returns(T.nilable(String)) }
          attr_accessor :po_number

          # The Stigg contract ref ID (present for Stigg-managed contracts; the key used to
          # update/delete)
          sig { returns(T.nilable(String)) }
          attr_accessor :ref_id

          # The current state of the contract
          sig do
            returns(
              Stigg::Models::V1::ContractCreateResponse::Data::State::TaggedSymbol
            )
          end
          attr_accessor :state

          # The custom subscriptions attached to this contract (empty when none)
          sig do
            returns(
              T::Array[
                Stigg::Models::V1::ContractCreateResponse::Data::Subscription
              ]
            )
          end
          attr_accessor :subscriptions

          # A billing contract as reported by the connected billing provider.
          sig do
            params(
              id: T.nilable(String),
              activation_end_date: T.nilable(Time),
              activation_start_date: T.nilable(Time),
              billing_id: T.nilable(String),
              contract_id: String,
              created_at: T.nilable(Time),
              customer_external_id: T.nilable(String),
              external_id: String,
              latest_invoice:
                T.nilable(
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::OrHash
                ),
              name: T.nilable(String),
              next_invoice:
                T.nilable(
                  Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::OrHash
                ),
              po_number: T.nilable(String),
              ref_id: T.nilable(String),
              state:
                Stigg::Models::V1::ContractCreateResponse::Data::State::OrSymbol,
              subscriptions:
                T::Array[
                  Stigg::Models::V1::ContractCreateResponse::Data::Subscription::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The persisted Stigg contract id (matches a subscription’s contractId; present
            # for Stigg-managed contracts)
            id:,
            # The date the contract activation ends
            activation_end_date:,
            # The date the contract becomes active
            activation_start_date:,
            # The billing provider (Received) contract ID; null until the contract has synced
            # to the billing provider
            billing_id:,
            # The Stigg contract ref ID (the key used to fetch/update/delete this contract)
            contract_id:,
            # The date the contract was created
            created_at:,
            # The external identifier of the customer the contract belongs to
            customer_external_id:,
            # The external identifier of the contract
            external_id:,
            # The most recent non-draft invoice for this contract (open, paid, or canceled),
            # or null when none exists
            latest_invoice:,
            # The contract name (the purchase-order number when set, otherwise the
            # contract/customer name)
            name:,
            # A preview of the contract's upcoming invoice, or null when none is available
            next_invoice:,
            # Purchase-order number, when set on the contract
            po_number:,
            # The Stigg contract ref ID (present for Stigg-managed contracts; the key used to
            # update/delete)
            ref_id:,
            # The current state of the contract
            state:,
            # The custom subscriptions attached to this contract (empty when none)
            subscriptions:
          )
          end

          sig do
            override.returns(
              {
                id: T.nilable(String),
                activation_end_date: T.nilable(Time),
                activation_start_date: T.nilable(Time),
                billing_id: T.nilable(String),
                contract_id: String,
                created_at: T.nilable(Time),
                customer_external_id: T.nilable(String),
                external_id: String,
                latest_invoice:
                  T.nilable(
                    Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice
                  ),
                name: T.nilable(String),
                next_invoice:
                  T.nilable(
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice
                  ),
                po_number: T.nilable(String),
                ref_id: T.nilable(String),
                state:
                  Stigg::Models::V1::ContractCreateResponse::Data::State::TaggedSymbol,
                subscriptions:
                  T::Array[
                    Stigg::Models::V1::ContractCreateResponse::Data::Subscription
                  ]
              }
            )
          end
          def to_hash
          end

          class LatestInvoice < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice,
                  Stigg::Internal::AnyHash
                )
              end

            # Invoice billing ID
            sig { returns(String) }
            attr_accessor :billing_id

            # Invoice creation date
            sig { returns(Time) }
            attr_accessor :created_at

            # Whether payment requires action
            sig { returns(T::Boolean) }
            attr_accessor :requires_action

            # Invoice status
            sig do
              returns(
                Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Amount due
            sig { returns(T.nilable(Float)) }
            attr_accessor :amount_due

            # Billing reason
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              )
            end
            attr_accessor :billing_reason

            # Invoice currency
            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # Invoice PDF URL
            sig { returns(T.nilable(String)) }
            attr_accessor :pdf_url

            # Total amount
            sig { returns(T.nilable(Float)) }
            attr_accessor :total

            # The most recent non-draft invoice for this contract (open, paid, or canceled),
            # or null when none exists
            sig do
              params(
                billing_id: String,
                created_at: Time,
                requires_action: T::Boolean,
                status:
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status::OrSymbol,
                amount_due: T.nilable(Float),
                billing_reason:
                  T.nilable(
                    Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::OrSymbol
                  ),
                currency: T.nilable(String),
                pdf_url: T.nilable(String),
                total: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Invoice billing ID
              billing_id:,
              # Invoice creation date
              created_at:,
              # Whether payment requires action
              requires_action:,
              # Invoice status
              status:,
              # Amount due
              amount_due: nil,
              # Billing reason
              billing_reason: nil,
              # Invoice currency
              currency: nil,
              # Invoice PDF URL
              pdf_url: nil,
              # Total amount
              total: nil
            )
            end

            sig do
              override.returns(
                {
                  billing_id: String,
                  created_at: Time,
                  requires_action: T::Boolean,
                  status:
                    Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status::TaggedSymbol,
                  amount_due: T.nilable(Float),
                  billing_reason:
                    T.nilable(
                      Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                    ),
                  currency: T.nilable(String),
                  pdf_url: T.nilable(String),
                  total: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            # Invoice status
            module Status
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPEN =
                T.let(
                  :OPEN,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :CANCELED,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Billing reason
            module BillingReason
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BILLING_CYCLE =
                T.let(
                  :BILLING_CYCLE,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              SUBSCRIPTION_CREATION =
                T.let(
                  :SUBSCRIPTION_CREATION,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              SUBSCRIPTION_UPDATE =
                T.let(
                  :SUBSCRIPTION_UPDATE,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              MANUAL =
                T.let(
                  :MANUAL,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              MINIMUM_INVOICE_AMOUNT_EXCEEDED =
                T.let(
                  :MINIMUM_INVOICE_AMOUNT_EXCEEDED,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                )
              OTHER =
                T.let(
                  :OTHER,
                  Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::ContractCreateResponse::Data::LatestInvoice::BillingReason::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class NextInvoice < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice,
                  Stigg::Internal::AnyHash
                )
              end

            # The total amount of the upcoming invoice
            sig do
              returns(
                Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount
              )
            end
            attr_reader :amount

            sig do
              params(
                amount:
                  Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::OrHash
              ).void
            end
            attr_writer :amount

            # The date the upcoming invoice is due
            sig { returns(T.nilable(Time)) }
            attr_accessor :due_date

            # The end of the billing period the upcoming invoice covers
            sig { returns(T.nilable(Time)) }
            attr_accessor :period_end

            # The start of the billing period the upcoming invoice covers
            sig { returns(T.nilable(Time)) }
            attr_accessor :period_start

            # A preview of the contract's upcoming invoice, or null when none is available
            sig do
              params(
                amount:
                  Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::OrHash,
                due_date: T.nilable(Time),
                period_end: T.nilable(Time),
                period_start: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(
              # The total amount of the upcoming invoice
              amount:,
              # The date the upcoming invoice is due
              due_date:,
              # The end of the billing period the upcoming invoice covers
              period_end:,
              # The start of the billing period the upcoming invoice covers
              period_start:
            )
            end

            sig do
              override.returns(
                {
                  amount:
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount,
                  due_date: T.nilable(Time),
                  period_end: T.nilable(Time),
                  period_start: T.nilable(Time)
                }
              )
            end
            def to_hash
            end

            class Amount < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # ISO 4217 currency code
              sig do
                returns(
                  Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                )
              end
              attr_accessor :currency

              # The total amount of the upcoming invoice
              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The price amount
                amount:,
                # ISO 4217 currency code
                currency:
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    currency:
                      Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # ISO 4217 currency code
              module Currency
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::Models::V1::ContractCreateResponse::Data::NextInvoice::Amount::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          # The current state of the contract
          module State
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::Models::V1::ContractCreateResponse::Data::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRAFT =
              T.let(
                :DRAFT,
                Stigg::Models::V1::ContractCreateResponse::Data::State::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :ACTIVE,
                Stigg::Models::V1::ContractCreateResponse::Data::State::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                Stigg::Models::V1::ContractCreateResponse::Data::State::TaggedSymbol
              )
            END_BILLING =
              T.let(
                :END_BILLING,
                Stigg::Models::V1::ContractCreateResponse::Data::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::ContractCreateResponse::Data::State::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Subscription < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::ContractCreateResponse::Data::Subscription,
                  Stigg::Internal::AnyHash
                )
              end

            # Display name of the subscription plan
            sig { returns(T.nilable(String)) }
            attr_accessor :plan_display_name

            # Display name of the product the subscription plan belongs to
            sig { returns(T.nilable(String)) }
            attr_accessor :product_display_name

            # The subscription ref ID (use it to deep-link to the subscription)
            sig { returns(String) }
            attr_accessor :subscription_id

            # A custom subscription attached to a contract.
            sig do
              params(
                plan_display_name: T.nilable(String),
                product_display_name: T.nilable(String),
                subscription_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Display name of the subscription plan
              plan_display_name:,
              # Display name of the product the subscription plan belongs to
              product_display_name:,
              # The subscription ref ID (use it to deep-link to the subscription)
              subscription_id:
            )
            end

            sig do
              override.returns(
                {
                  plan_display_name: T.nilable(String),
                  product_display_name: T.nilable(String),
                  subscription_id: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
