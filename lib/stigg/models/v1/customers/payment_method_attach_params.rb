# frozen_string_literal: true

module Stigg
  module Models
    module V1
      module Customers
        # @see Stigg::Resources::V1::Customers::PaymentMethod#attach
        class PaymentMethodAttachParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          # @!attribute integration_id
          #   Integration details
          #
          #   @return [String]
          required :integration_id, String, api_name: :integrationId

          # @!attribute payment_method_id
          #   Billing provider payment method id
          #
          #   @return [String]
          required :payment_method_id, String, api_name: :paymentMethodId

          # @!attribute vendor_identifier
          #   The vendor identifier of integration
          #
          #   @return [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::VendorIdentifier]
          required :vendor_identifier,
                   enum: -> { Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier },
                   api_name: :vendorIdentifier

          # @!attribute billing_currency
          #
          #   @return [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::BillingCurrency, nil]
          optional :billing_currency,
                   enum: -> { Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency },
                   api_name: :billingCurrency,
                   nil?: true

          # @!method initialize(integration_id:, payment_method_id:, vendor_identifier:, billing_currency: nil, request_options: {})
          #   @param integration_id [String] Integration details
          #
          #   @param payment_method_id [String] Billing provider payment method id
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::VendorIdentifier] The vendor identifier of integration
          #
          #   @param billing_currency [Symbol, Stigg::Models::V1::Customers::PaymentMethodAttachParams::BillingCurrency, nil]
          #
          #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

          # The vendor identifier of integration
          module VendorIdentifier
            extend Stigg::Internal::Type::Enum

            AUTH0 = :AUTH0
            ZUORA = :ZUORA
            STRIPE = :STRIPE
            HUBSPOT = :HUBSPOT
            AWS_MARKETPLACE = :AWS_MARKETPLACE
            SNOWFLAKE = :SNOWFLAKE
            SALESFORCE = :SALESFORCE
            BIG_QUERY = :BIG_QUERY
            OPEN_FGA = :OPEN_FGA
            APP_STORE = :APP_STORE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module BillingCurrency
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
    end
  end
end
