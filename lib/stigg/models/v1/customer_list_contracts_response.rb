# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#list_contracts
      class CustomerListContractsResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Stigg::Models::V1::CustomerListContractsResponse::Data>]
        required :data,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListContractsResponse::Data] }

        # @!method initialize(data:)
        #   A list of a customer's contracts
        #
        #   @param data [Array<Stigg::Models::V1::CustomerListContractsResponse::Data>]

        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   The persisted Stigg contract id (matches a subscription’s contractId; present
          #   for Stigg-managed contracts)
          #
          #   @return [String, nil]
          required :id, String, nil?: true

          # @!attribute activation_end_date
          #   The date the contract activation ends
          #
          #   @return [Time, nil]
          required :activation_end_date, Time, api_name: :activationEndDate, nil?: true

          # @!attribute activation_start_date
          #   The date the contract becomes active
          #
          #   @return [Time, nil]
          required :activation_start_date, Time, api_name: :activationStartDate, nil?: true

          # @!attribute billing_id
          #   The billing provider (Received) contract ID; null until the contract has synced
          #   to the billing provider
          #
          #   @return [String, nil]
          required :billing_id, String, api_name: :billingId, nil?: true

          # @!attribute contract_id
          #   The Stigg contract ref ID (the key used to fetch/update/delete this contract)
          #
          #   @return [String]
          required :contract_id, String, api_name: :contractId

          # @!attribute created_at
          #   The date the contract was created
          #
          #   @return [Time, nil]
          required :created_at, Time, api_name: :createdAt, nil?: true

          # @!attribute customer_external_id
          #   The external identifier of the customer the contract belongs to
          #
          #   @return [String, nil]
          required :customer_external_id, String, api_name: :customerExternalId, nil?: true

          # @!attribute external_id
          #   The external identifier of the contract
          #
          #   @return [String]
          required :external_id, String, api_name: :externalId

          # @!attribute latest_invoice
          #   The most recent non-draft invoice for this contract (open, paid, or canceled),
          #   or null when none exists
          #
          #   @return [Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice, nil]
          required :latest_invoice,
                   -> { Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice },
                   api_name: :latestInvoice,
                   nil?: true

          # @!attribute name
          #   The contract name (the purchase-order number when set, otherwise the
          #   contract/customer name)
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute next_invoice
          #   A preview of the contract's upcoming invoice, or null when none is available
          #
          #   @return [Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice, nil]
          required :next_invoice,
                   -> { Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice },
                   api_name: :nextInvoice,
                   nil?: true

          # @!attribute po_number
          #   Purchase-order number, when set on the contract
          #
          #   @return [String, nil]
          required :po_number, String, api_name: :poNumber, nil?: true

          # @!attribute ref_id
          #   The Stigg contract ref ID (present for Stigg-managed contracts; the key used to
          #   update/delete)
          #
          #   @return [String, nil]
          required :ref_id, String, api_name: :refId, nil?: true

          # @!attribute state
          #   The current state of the contract
          #
          #   @return [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::State]
          required :state, enum: -> { Stigg::Models::V1::CustomerListContractsResponse::Data::State }

          # @!attribute subscriptions
          #   The custom subscriptions attached to this contract (empty when none)
          #
          #   @return [Array<Stigg::Models::V1::CustomerListContractsResponse::Data::Subscription>]
          required :subscriptions,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CustomerListContractsResponse::Data::Subscription] }

          # @!method initialize(id:, activation_end_date:, activation_start_date:, billing_id:, contract_id:, created_at:, customer_external_id:, external_id:, latest_invoice:, name:, next_invoice:, po_number:, ref_id:, state:, subscriptions:)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::CustomerListContractsResponse::Data} for more details.
          #
          #   A billing contract as reported by the connected billing provider.
          #
          #   @param id [String, nil] The persisted Stigg contract id (matches a subscription’s contractId; present fo
          #
          #   @param activation_end_date [Time, nil] The date the contract activation ends
          #
          #   @param activation_start_date [Time, nil] The date the contract becomes active
          #
          #   @param billing_id [String, nil] The billing provider (Received) contract ID; null until the contract has synced
          #
          #   @param contract_id [String] The Stigg contract ref ID (the key used to fetch/update/delete this contract)
          #
          #   @param created_at [Time, nil] The date the contract was created
          #
          #   @param customer_external_id [String, nil] The external identifier of the customer the contract belongs to
          #
          #   @param external_id [String] The external identifier of the contract
          #
          #   @param latest_invoice [Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice, nil] The most recent non-draft invoice for this contract (open, paid, or canceled), o
          #
          #   @param name [String, nil] The contract name (the purchase-order number when set, otherwise the contract/cu
          #
          #   @param next_invoice [Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice, nil] A preview of the contract's upcoming invoice, or null when none is available
          #
          #   @param po_number [String, nil] Purchase-order number, when set on the contract
          #
          #   @param ref_id [String, nil] The Stigg contract ref ID (present for Stigg-managed contracts; the key used to
          #
          #   @param state [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::State] The current state of the contract
          #
          #   @param subscriptions [Array<Stigg::Models::V1::CustomerListContractsResponse::Data::Subscription>] The custom subscriptions attached to this contract (empty when none)

          # @see Stigg::Models::V1::CustomerListContractsResponse::Data#latest_invoice
          class LatestInvoice < Stigg::Internal::Type::BaseModel
            # @!attribute billing_id
            #   Invoice billing ID
            #
            #   @return [String]
            required :billing_id, String, api_name: :billingId

            # @!attribute created_at
            #   Invoice creation date
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute requires_action
            #   Whether payment requires action
            #
            #   @return [Boolean]
            required :requires_action, Stigg::Internal::Type::Boolean, api_name: :requiresAction

            # @!attribute status
            #   Invoice status
            #
            #   @return [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice::Status]
            required :status,
                     enum: -> { Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice::Status }

            # @!attribute amount_due
            #   Amount due
            #
            #   @return [Float, nil]
            optional :amount_due, Float, api_name: :amountDue, nil?: true

            # @!attribute billing_reason
            #   Billing reason
            #
            #   @return [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice::BillingReason, nil]
            optional :billing_reason,
                     enum: -> { Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice::BillingReason },
                     api_name: :billingReason,
                     nil?: true

            # @!attribute currency
            #   Invoice currency
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute pdf_url
            #   Invoice PDF URL
            #
            #   @return [String, nil]
            optional :pdf_url, String, api_name: :pdfUrl, nil?: true

            # @!attribute total
            #   Total amount
            #
            #   @return [Float, nil]
            optional :total, Float, nil?: true

            # @!method initialize(billing_id:, created_at:, requires_action:, status:, amount_due: nil, billing_reason: nil, currency: nil, pdf_url: nil, total: nil)
            #   The most recent non-draft invoice for this contract (open, paid, or canceled),
            #   or null when none exists
            #
            #   @param billing_id [String] Invoice billing ID
            #
            #   @param created_at [Time] Invoice creation date
            #
            #   @param requires_action [Boolean] Whether payment requires action
            #
            #   @param status [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice::Status] Invoice status
            #
            #   @param amount_due [Float, nil] Amount due
            #
            #   @param billing_reason [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice::BillingReason, nil] Billing reason
            #
            #   @param currency [String, nil] Invoice currency
            #
            #   @param pdf_url [String, nil] Invoice PDF URL
            #
            #   @param total [Float, nil] Total amount

            # Invoice status
            #
            # @see Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice#status
            module Status
              extend Stigg::Internal::Type::Enum

              OPEN = :OPEN
              CANCELED = :CANCELED
              PAID = :PAID

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Billing reason
            #
            # @see Stigg::Models::V1::CustomerListContractsResponse::Data::LatestInvoice#billing_reason
            module BillingReason
              extend Stigg::Internal::Type::Enum

              BILLING_CYCLE = :BILLING_CYCLE
              SUBSCRIPTION_CREATION = :SUBSCRIPTION_CREATION
              SUBSCRIPTION_UPDATE = :SUBSCRIPTION_UPDATE
              MANUAL = :MANUAL
              MINIMUM_INVOICE_AMOUNT_EXCEEDED = :MINIMUM_INVOICE_AMOUNT_EXCEEDED
              OTHER = :OTHER

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Stigg::Models::V1::CustomerListContractsResponse::Data#next_invoice
          class NextInvoice < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The total amount of the upcoming invoice
            #
            #   @return [Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice::Amount]
            required :amount, -> { Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice::Amount }

            # @!attribute due_date
            #   The date the upcoming invoice is due
            #
            #   @return [Time, nil]
            required :due_date, Time, api_name: :dueDate, nil?: true

            # @!attribute period_end
            #   The end of the billing period the upcoming invoice covers
            #
            #   @return [Time, nil]
            required :period_end, Time, api_name: :periodEnd, nil?: true

            # @!attribute period_start
            #   The start of the billing period the upcoming invoice covers
            #
            #   @return [Time, nil]
            required :period_start, Time, api_name: :periodStart, nil?: true

            # @!method initialize(amount:, due_date:, period_end:, period_start:)
            #   A preview of the contract's upcoming invoice, or null when none is available
            #
            #   @param amount [Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice::Amount] The total amount of the upcoming invoice
            #
            #   @param due_date [Time, nil] The date the upcoming invoice is due
            #
            #   @param period_end [Time, nil] The end of the billing period the upcoming invoice covers
            #
            #   @param period_start [Time, nil] The start of the billing period the upcoming invoice covers

            # @see Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice#amount
            class Amount < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   ISO 4217 currency code
              #
              #   @return [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice::Amount::Currency]
              required :currency,
                       enum: -> { Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice::Amount::Currency }

              # @!method initialize(amount:, currency:)
              #   The total amount of the upcoming invoice
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice::Amount::Currency] ISO 4217 currency code

              # ISO 4217 currency code
              #
              # @see Stigg::Models::V1::CustomerListContractsResponse::Data::NextInvoice::Amount#currency
              module Currency
                extend Stigg::Internal::Type::Enum

                USD = :usd
                AED = :aed
                ALL = :all
                AMD = :amd
                ANG = :ang
                AUD = :aud
                AWG = :awg
                AZN = :azn
                BAM = :bam
                BBD = :bbd
                BDT = :bdt
                BGN = :bgn
                BIF = :bif
                BMD = :bmd
                BND = :bnd
                BSD = :bsd
                BWP = :bwp
                BYN = :byn
                BZD = :bzd
                BRL = :brl
                CAD = :cad
                CDF = :cdf
                CHF = :chf
                CNY = :cny
                CZK = :czk
                DKK = :dkk
                DOP = :dop
                DZD = :dzd
                EGP = :egp
                ETB = :etb
                EUR = :eur
                FJD = :fjd
                GBP = :gbp
                GEL = :gel
                GIP = :gip
                GMD = :gmd
                GYD = :gyd
                HKD = :hkd
                HRK = :hrk
                HTG = :htg
                IDR = :idr
                ILS = :ils
                INR = :inr
                ISK = :isk
                JMD = :jmd
                JPY = :jpy
                KES = :kes
                KGS = :kgs
                KHR = :khr
                KMF = :kmf
                KRW = :krw
                KYD = :kyd
                KZT = :kzt
                LBP = :lbp
                LKR = :lkr
                LRD = :lrd
                LSL = :lsl
                MAD = :mad
                MDL = :mdl
                MGA = :mga
                MKD = :mkd
                MMK = :mmk
                MNT = :mnt
                MOP = :mop
                MRO = :mro
                MVR = :mvr
                MWK = :mwk
                MXN = :mxn
                MYR = :myr
                MZN = :mzn
                NAD = :nad
                NGN = :ngn
                NOK = :nok
                NPR = :npr
                NZD = :nzd
                PGK = :pgk
                PHP = :php
                PKR = :pkr
                PLN = :pln
                QAR = :qar
                RON = :ron
                RSD = :rsd
                RUB = :rub
                RWF = :rwf
                SAR = :sar
                SBD = :sbd
                SCR = :scr
                SEK = :sek
                SGD = :sgd
                SLE = :sle
                SLL = :sll
                SOS = :sos
                SZL = :szl
                THB = :thb
                TJS = :tjs
                TOP = :top
                TRY = :try
                TTD = :ttd
                TZS = :tzs
                UAH = :uah
                UZS = :uzs
                VND = :vnd
                VUV = :vuv
                WST = :wst
                XAF = :xaf
                XCD = :xcd
                YER = :yer
                ZAR = :zar
                ZMW = :zmw
                CLP = :clp
                DJF = :djf
                GNF = :gnf
                UGX = :ugx
                PYG = :pyg
                XOF = :xof
                XPF = :xpf

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # The current state of the contract
          #
          # @see Stigg::Models::V1::CustomerListContractsResponse::Data#state
          module State
            extend Stigg::Internal::Type::Enum

            DRAFT = :DRAFT
            ACTIVE = :ACTIVE
            CANCELED = :CANCELED
            END_BILLING = :END_BILLING

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Subscription < Stigg::Internal::Type::BaseModel
            # @!attribute plan_display_name
            #   Display name of the subscription plan
            #
            #   @return [String, nil]
            required :plan_display_name, String, api_name: :planDisplayName, nil?: true

            # @!attribute product_display_name
            #   Display name of the product the subscription plan belongs to
            #
            #   @return [String, nil]
            required :product_display_name, String, api_name: :productDisplayName, nil?: true

            # @!attribute subscription_id
            #   The subscription ref ID (use it to deep-link to the subscription)
            #
            #   @return [String]
            required :subscription_id, String, api_name: :subscriptionId

            # @!method initialize(plan_display_name:, product_display_name:, subscription_id:)
            #   A custom subscription attached to a contract.
            #
            #   @param plan_display_name [String, nil] Display name of the subscription plan
            #
            #   @param product_display_name [String, nil] Display name of the product the subscription plan belongs to
            #
            #   @param subscription_id [String] The subscription ref ID (use it to deep-link to the subscription)
          end
        end
      end
    end
  end
end
