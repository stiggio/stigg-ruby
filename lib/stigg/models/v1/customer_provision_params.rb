# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#provision
      class CustomerProvisionParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #   Customer slug
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_currency
        #   The billing currency of the customer
        #
        #   @return [Symbol, Stigg::Models::V1::CustomerProvisionParams::BillingCurrency, nil]
        optional :billing_currency,
                 enum: -> { Stigg::V1::CustomerProvisionParams::BillingCurrency },
                 api_name: :billingCurrency,
                 nil?: true

        # @!attribute billing_id
        #   The unique identifier for the entity in the billing provider
        #
        #   @return [String, nil]
        optional :billing_id, String, api_name: :billingId, nil?: true

        # @!attribute coupon_id
        #   Customer level coupon
        #
        #   @return [String, nil]
        optional :coupon_id, String, api_name: :couponId, nil?: true

        # @!attribute default_payment_method
        #   The default payment method details
        #
        #   @return [Stigg::Models::V1::CustomerProvisionParams::DefaultPaymentMethod, nil]
        optional :default_payment_method,
                 -> { Stigg::V1::CustomerProvisionParams::DefaultPaymentMethod },
                 api_name: :defaultPaymentMethod,
                 nil?: true

        # @!attribute email
        #   The email of the customer
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute integrations
        #   List of integrations
        #
        #   @return [Array<Stigg::Models::V1::CustomerProvisionParams::Integration>, nil]
        optional :integrations,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::CustomerProvisionParams::Integration] }

        # @!attribute metadata
        #   Additional metadata
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Stigg::Internal::Type::HashOf[String]

        # @!attribute name
        #   The name of the customer
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(id:, billing_currency: nil, billing_id: nil, coupon_id: nil, default_payment_method: nil, email: nil, integrations: nil, metadata: nil, name: nil, request_options: {})
        #   @param id [String] Customer slug
        #
        #   @param billing_currency [Symbol, Stigg::Models::V1::CustomerProvisionParams::BillingCurrency, nil] The billing currency of the customer
        #
        #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
        #
        #   @param coupon_id [String, nil] Customer level coupon
        #
        #   @param default_payment_method [Stigg::Models::V1::CustomerProvisionParams::DefaultPaymentMethod, nil] The default payment method details
        #
        #   @param email [String, nil] The email of the customer
        #
        #   @param integrations [Array<Stigg::Models::V1::CustomerProvisionParams::Integration>] List of integrations
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata
        #
        #   @param name [String, nil] The name of the customer
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        # The billing currency of the customer
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

        class DefaultPaymentMethod < Stigg::Internal::Type::BaseModel
          # @!attribute billing_id
          #   The default payment method id
          #
          #   @return [String, nil]
          required :billing_id, String, api_name: :billingId, nil?: true

          # @!attribute card_expiry_month
          #   The expiration month of the default payment method
          #
          #   @return [Float, nil]
          required :card_expiry_month, Float, api_name: :cardExpiryMonth, nil?: true

          # @!attribute card_expiry_year
          #   The expiration year of the default payment method
          #
          #   @return [Float, nil]
          required :card_expiry_year, Float, api_name: :cardExpiryYear, nil?: true

          # @!attribute card_last4_digits
          #   The last 4 digits of the default payment method
          #
          #   @return [String, nil]
          required :card_last4_digits, String, api_name: :cardLast4Digits, nil?: true

          # @!attribute type
          #   The default payment method type
          #
          #   @return [Symbol, Stigg::Models::V1::CustomerProvisionParams::DefaultPaymentMethod::Type]
          required :type, enum: -> { Stigg::V1::CustomerProvisionParams::DefaultPaymentMethod::Type }

          # @!method initialize(billing_id:, card_expiry_month:, card_expiry_year:, card_last4_digits:, type:)
          #   The default payment method details
          #
          #   @param billing_id [String, nil] The default payment method id
          #
          #   @param card_expiry_month [Float, nil] The expiration month of the default payment method
          #
          #   @param card_expiry_year [Float, nil] The expiration year of the default payment method
          #
          #   @param card_last4_digits [String, nil] The last 4 digits of the default payment method
          #
          #   @param type [Symbol, Stigg::Models::V1::CustomerProvisionParams::DefaultPaymentMethod::Type] The default payment method type

          # The default payment method type
          #
          # @see Stigg::Models::V1::CustomerProvisionParams::DefaultPaymentMethod#type
          module Type
            extend Stigg::Internal::Type::Enum

            CARD = :CARD
            BANK = :BANK
            CASH_APP = :CASH_APP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Integration < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   Integration details
          #
          #   @return [String]
          required :id, String

          # @!attribute synced_entity_id
          #   Synced entity id
          #
          #   @return [String, nil]
          required :synced_entity_id, String, api_name: :syncedEntityId, nil?: true

          # @!attribute vendor_identifier
          #   The vendor identifier of integration
          #
          #   @return [Symbol, Stigg::Models::V1::CustomerProvisionParams::Integration::VendorIdentifier]
          required :vendor_identifier,
                   enum: -> { Stigg::V1::CustomerProvisionParams::Integration::VendorIdentifier },
                   api_name: :vendorIdentifier

          # @!method initialize(id:, synced_entity_id:, vendor_identifier:)
          #   External billing or CRM integration link
          #
          #   @param id [String] Integration details
          #
          #   @param synced_entity_id [String, nil] Synced entity id
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::CustomerProvisionParams::Integration::VendorIdentifier] The vendor identifier of integration

          # The vendor identifier of integration
          #
          # @see Stigg::Models::V1::CustomerProvisionParams::Integration#vendor_identifier
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
        end
      end
    end
  end
end
