# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Events
        module Credits
          # @see Stigg::Resources::V1::Events::Credits::Grants#create
          class GrantCreateParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            # @!attribute amount
            #   The credit amount to grant
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute currency_id
            #   The credit currency ID (required)
            #
            #   @return [String]
            required :currency_id, String, api_name: :currencyId

            # @!attribute customer_id
            #   The customer ID to grant credits to (required)
            #
            #   @return [String]
            required :customer_id, String, api_name: :customerId

            # @!attribute display_name
            #   The display name for the credit grant
            #
            #   @return [String]
            required :display_name, String, api_name: :displayName

            # @!attribute grant_type
            #   The type of credit grant (PAID, PROMOTIONAL)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::GrantType]
            required :grant_type,
                     enum: -> { Stigg::V1::Events::Credits::GrantCreateParams::GrantType },
                     api_name: :grantType

            # @!attribute await_payment_confirmation
            #   Whether to wait for payment confirmation before returning (default: true)
            #
            #   @return [Boolean, nil]
            optional :await_payment_confirmation,
                     Stigg::Internal::Type::Boolean,
                     api_name: :awaitPaymentConfirmation

            # @!attribute billing_information
            #   Billing information for the credit grant
            #
            #   @return [Stigg::Models::V1::Events::Credits::GrantCreateParams::BillingInformation, nil]
            optional :billing_information,
                     -> { Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation },
                     api_name: :billingInformation

            # @!attribute comment
            #   An optional comment on the credit grant
            #
            #   @return [String, nil]
            optional :comment, String

            # @!attribute cost
            #   The monetary cost of the credit grant
            #
            #   @return [Stigg::Models::V1::Events::Credits::GrantCreateParams::Cost, nil]
            optional :cost, -> { Stigg::V1::Events::Credits::GrantCreateParams::Cost }

            # @!attribute effective_at
            #   The date when the credit grant becomes effective
            #
            #   @return [Time, nil]
            optional :effective_at, Time, api_name: :effectiveAt

            # @!attribute expire_at
            #   The date when the credit grant expires
            #
            #   @return [Time, nil]
            optional :expire_at, Time, api_name: :expireAt

            # @!attribute metadata
            #   Additional metadata for the credit grant
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute payment_collection_method
            #   The payment collection method (CHARGE, INVOICE, NONE)
            #
            #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod, nil]
            optional :payment_collection_method,
                     enum: -> { Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod },
                     api_name: :paymentCollectionMethod

            # @!attribute priority
            #   The priority of the credit grant (lower number = higher priority)
            #
            #   @return [Integer, nil]
            optional :priority, Integer

            # @!attribute resource_id
            #   The resource ID to scope the grant to
            #
            #   @return [String, nil]
            optional :resource_id, String, api_name: :resourceId

            # @!method initialize(amount:, currency_id:, customer_id:, display_name:, grant_type:, await_payment_confirmation: nil, billing_information: nil, comment: nil, cost: nil, effective_at: nil, expire_at: nil, metadata: nil, payment_collection_method: nil, priority: nil, resource_id: nil, request_options: {})
            #   @param amount [Float] The credit amount to grant
            #
            #   @param currency_id [String] The credit currency ID (required)
            #
            #   @param customer_id [String] The customer ID to grant credits to (required)
            #
            #   @param display_name [String] The display name for the credit grant
            #
            #   @param grant_type [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::GrantType] The type of credit grant (PAID, PROMOTIONAL)
            #
            #   @param await_payment_confirmation [Boolean] Whether to wait for payment confirmation before returning (default: true)
            #
            #   @param billing_information [Stigg::Models::V1::Events::Credits::GrantCreateParams::BillingInformation] Billing information for the credit grant
            #
            #   @param comment [String] An optional comment on the credit grant
            #
            #   @param cost [Stigg::Models::V1::Events::Credits::GrantCreateParams::Cost] The monetary cost of the credit grant
            #
            #   @param effective_at [Time] The date when the credit grant becomes effective
            #
            #   @param expire_at [Time] The date when the credit grant expires
            #
            #   @param metadata [Hash{Symbol=>String}] Additional metadata for the credit grant
            #
            #   @param payment_collection_method [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod] The payment collection method (CHARGE, INVOICE, NONE)
            #
            #   @param priority [Integer] The priority of the credit grant (lower number = higher priority)
            #
            #   @param resource_id [String] The resource ID to scope the grant to
            #
            #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

            # The type of credit grant (PAID, PROMOTIONAL)
            module GrantType
              extend Stigg::Internal::Type::Enum

              PAID = :PAID
              PROMOTIONAL = :PROMOTIONAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class BillingInformation < Stigg::Internal::Type::BaseModel
              # @!attribute billing_address
              #   The billing address
              #
              #   @return [Stigg::Models::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress, nil]
              optional :billing_address,
                       -> {
                         Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress
                       },
                       api_name: :billingAddress

              # @!attribute invoice_days_until_due
              #   Days until the invoice is due
              #
              #   @return [Float, nil]
              optional :invoice_days_until_due, Float, api_name: :invoiceDaysUntilDue

              # @!attribute is_invoice_paid
              #   Whether the invoice is already paid
              #
              #   @return [Boolean, nil]
              optional :is_invoice_paid, Stigg::Internal::Type::Boolean, api_name: :isInvoicePaid

              # @!method initialize(billing_address: nil, invoice_days_until_due: nil, is_invoice_paid: nil)
              #   Billing information for the credit grant
              #
              #   @param billing_address [Stigg::Models::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress] The billing address
              #
              #   @param invoice_days_until_due [Float] Days until the invoice is due
              #
              #   @param is_invoice_paid [Boolean] Whether the invoice is already paid

              # @see Stigg::Models::V1::Events::Credits::GrantCreateParams::BillingInformation#billing_address
              class BillingAddress < Stigg::Internal::Type::BaseModel
                # @!attribute city
                #   City name
                #
                #   @return [String, nil]
                optional :city, String

                # @!attribute country
                #   Country code or name
                #
                #   @return [String, nil]
                optional :country, String

                # @!attribute line1
                #   Street address line 1
                #
                #   @return [String, nil]
                optional :line1, String

                # @!attribute line2
                #   Street address line 2
                #
                #   @return [String, nil]
                optional :line2, String

                # @!attribute postal_code
                #   Postal or ZIP code
                #
                #   @return [String, nil]
                optional :postal_code, String, api_name: :postalCode

                # @!attribute state
                #   State or province
                #
                #   @return [String, nil]
                optional :state, String

                # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
                #   The billing address
                #
                #   @param city [String] City name
                #
                #   @param country [String] Country code or name
                #
                #   @param line1 [String] Street address line 1
                #
                #   @param line2 [String] Street address line 2
                #
                #   @param postal_code [String] Postal or ZIP code
                #
                #   @param state [String] State or province
              end
            end

            class Cost < Stigg::Internal::Type::BaseModel
              # @!attribute amount
              #   The price amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute currency
              #   ISO 4217 currency code
              #
              #   @return [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::Cost::Currency]
              required :currency, enum: -> { Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency }

              # @!method initialize(amount:, currency:)
              #   The monetary cost of the credit grant
              #
              #   @param amount [Float] The price amount
              #
              #   @param currency [Symbol, Stigg::Models::V1::Events::Credits::GrantCreateParams::Cost::Currency] ISO 4217 currency code

              # ISO 4217 currency code
              #
              # @see Stigg::Models::V1::Events::Credits::GrantCreateParams::Cost#currency
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

            # The payment collection method (CHARGE, INVOICE, NONE)
            module PaymentCollectionMethod
              extend Stigg::Internal::Type::Enum

              CHARGE = :CHARGE
              INVOICE = :INVOICE
              NONE = :NONE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
