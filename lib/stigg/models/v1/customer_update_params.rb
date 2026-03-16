# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Customers#update
      class CustomerUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_currency
        #   The billing currency of the customer
        #
        #   @return [Symbol, Stigg::Models::V1::CustomerUpdateParams::BillingCurrency, nil]
        optional :billing_currency,
                 enum: -> { Stigg::V1::CustomerUpdateParams::BillingCurrency },
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
        #   @return [String, Symbol, Stigg::Models::V1::CustomerUpdateParams::CouponID, nil]
        optional :coupon_id,
                 union: -> { Stigg::V1::CustomerUpdateParams::CouponID },
                 api_name: :couponId,
                 nil?: true

        # @!attribute email
        #   The email of the customer
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute integrations
        #   List of integrations
        #
        #   @return [Array<Stigg::Models::V1::CustomerUpdateParams::Integration>, nil]
        optional :integrations,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::CustomerUpdateParams::Integration] }

        # @!attribute language
        #   Language to use for this customer
        #
        #   @return [String, nil]
        optional :language, String, nil?: true

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

        # @!attribute passthrough
        #   Vendor-specific billing passthrough fields.
        #
        #   @return [Stigg::Models::V1::CustomerUpdateParams::Passthrough, nil]
        optional :passthrough, -> { Stigg::V1::CustomerUpdateParams::Passthrough }

        # @!attribute timezone
        #   Timezone to use for this customer
        #
        #   @return [String, nil]
        optional :timezone, String, nil?: true

        # @!method initialize(id:, billing_currency: nil, billing_id: nil, coupon_id: nil, email: nil, integrations: nil, language: nil, metadata: nil, name: nil, passthrough: nil, timezone: nil, request_options: {})
        #   @param id [String]
        #
        #   @param billing_currency [Symbol, Stigg::Models::V1::CustomerUpdateParams::BillingCurrency, nil] The billing currency of the customer
        #
        #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
        #
        #   @param coupon_id [String, Symbol, Stigg::Models::V1::CustomerUpdateParams::CouponID, nil] Customer level coupon
        #
        #   @param email [String, nil] The email of the customer
        #
        #   @param integrations [Array<Stigg::Models::V1::CustomerUpdateParams::Integration>] List of integrations
        #
        #   @param language [String, nil] Language to use for this customer
        #
        #   @param metadata [Hash{Symbol=>String}] Additional metadata
        #
        #   @param name [String, nil] The name of the customer
        #
        #   @param passthrough [Stigg::Models::V1::CustomerUpdateParams::Passthrough] Vendor-specific billing passthrough fields.
        #
        #   @param timezone [String, nil] Timezone to use for this customer
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

        # Customer level coupon
        module CouponID
          extend Stigg::Internal::Type::Union

          # Customer level coupon
          variant String

          variant const: -> { Stigg::Models::V1::CustomerUpdateParams::CouponID::EMPTY }

          # @!method self.variants
          #   @return [Array(String, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(String, Stigg::V1::CustomerUpdateParams::CouponID::TaggedSymbol) }
          end

          # @!group

          EMPTY = :""

          # @!endgroup
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
          #   @return [Symbol, Stigg::Models::V1::CustomerUpdateParams::Integration::VendorIdentifier]
          required :vendor_identifier,
                   enum: -> { Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier },
                   api_name: :vendorIdentifier

          # @!method initialize(id:, synced_entity_id:, vendor_identifier:)
          #   External billing or CRM integration link
          #
          #   @param id [String] Integration details
          #
          #   @param synced_entity_id [String, nil] Synced entity id
          #
          #   @param vendor_identifier [Symbol, Stigg::Models::V1::CustomerUpdateParams::Integration::VendorIdentifier] The vendor identifier of integration

          # The vendor identifier of integration
          #
          # @see Stigg::Models::V1::CustomerUpdateParams::Integration#vendor_identifier
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

        class Passthrough < Stigg::Internal::Type::BaseModel
          # @!attribute stripe
          #   Stripe-specific billing fields for the customer.
          #
          #   @return [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe, nil]
          optional :stripe, -> { Stigg::V1::CustomerUpdateParams::Passthrough::Stripe }

          # @!attribute zuora
          #   Zuora-specific billing fields for the customer.
          #
          #   @return [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora, nil]
          optional :zuora, -> { Stigg::V1::CustomerUpdateParams::Passthrough::Zuora }

          # @!method initialize(stripe: nil, zuora: nil)
          #   Vendor-specific billing passthrough fields.
          #
          #   @param stripe [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe] Stripe-specific billing fields for the customer.
          #
          #   @param zuora [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora] Zuora-specific billing fields for the customer.

          # @see Stigg::Models::V1::CustomerUpdateParams::Passthrough#stripe
          class Stripe < Stigg::Internal::Type::BaseModel
            # @!attribute billing_address
            #   Physical address
            #
            #   @return [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe::BillingAddress, nil]
            optional :billing_address,
                     -> { Stigg::V1::CustomerUpdateParams::Passthrough::Stripe::BillingAddress },
                     api_name: :billingAddress

            # @!attribute customer_name
            #   Customer name
            #
            #   @return [String, nil]
            optional :customer_name, String, api_name: :customerName

            # @!attribute invoice_custom_fields
            #   Invoice custom fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :invoice_custom_fields,
                     Stigg::Internal::Type::HashOf[String],
                     api_name: :invoiceCustomFields

            # @!attribute metadata
            #   Additional metadata
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute payment_method_id
            #   Billing provider payment method id, attached to this customer
            #
            #   @return [String, nil]
            optional :payment_method_id, String, api_name: :paymentMethodId

            # @!attribute shipping_address
            #   Physical address
            #
            #   @return [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe::ShippingAddress, nil]
            optional :shipping_address,
                     -> { Stigg::V1::CustomerUpdateParams::Passthrough::Stripe::ShippingAddress },
                     api_name: :shippingAddress

            # @!attribute tax_ids
            #   Tax IDs
            #
            #   @return [Array<Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe::TaxID>, nil]
            optional :tax_ids,
                     -> {
                       Stigg::Internal::Type::ArrayOf[Stigg::V1::CustomerUpdateParams::Passthrough::Stripe::TaxID]
                     },
                     api_name: :taxIds

            # @!method initialize(billing_address: nil, customer_name: nil, invoice_custom_fields: nil, metadata: nil, payment_method_id: nil, shipping_address: nil, tax_ids: nil)
            #   Stripe-specific billing fields for the customer.
            #
            #   @param billing_address [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe::BillingAddress] Physical address
            #
            #   @param customer_name [String] Customer name
            #
            #   @param invoice_custom_fields [Hash{Symbol=>String}] Invoice custom fields
            #
            #   @param metadata [Hash{Symbol=>String}] Additional metadata
            #
            #   @param payment_method_id [String] Billing provider payment method id, attached to this customer
            #
            #   @param shipping_address [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe::ShippingAddress] Physical address
            #
            #   @param tax_ids [Array<Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe::TaxID>] Tax IDs

            # @see Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe#billing_address
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
              #   Physical address
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

            # @see Stigg::Models::V1::CustomerUpdateParams::Passthrough::Stripe#shipping_address
            class ShippingAddress < Stigg::Internal::Type::BaseModel
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
              #   Physical address
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

            class TaxID < Stigg::Internal::Type::BaseModel
              # @!attribute type
              #   The type of tax exemption identifier, such as VAT.
              #
              #   @return [String]
              required :type, String

              # @!attribute value
              #   The actual tax identifier value
              #
              #   @return [String]
              required :value, String

              # @!method initialize(type:, value:)
              #   Tax identifier with type and value for customer tax exemptions.
              #
              #   @param type [String] The type of tax exemption identifier, such as VAT.
              #
              #   @param value [String] The actual tax identifier value
            end
          end

          # @see Stigg::Models::V1::CustomerUpdateParams::Passthrough#zuora
          class Zuora < Stigg::Internal::Type::BaseModel
            # @!attribute billing_address
            #   Physical address
            #
            #   @return [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora::BillingAddress, nil]
            optional :billing_address,
                     -> { Stigg::V1::CustomerUpdateParams::Passthrough::Zuora::BillingAddress },
                     api_name: :billingAddress

            # @!attribute currency
            #   Customers selected currency
            #
            #   @return [Symbol, Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora::Currency, nil]
            optional :currency, enum: -> { Stigg::V1::CustomerUpdateParams::Passthrough::Zuora::Currency }

            # @!attribute metadata
            #   Additional metadata
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :metadata, Stigg::Internal::Type::HashOf[String]

            # @!attribute payment_method_id
            #   Billing provider payment method id, attached to this customer
            #
            #   @return [String, nil]
            optional :payment_method_id, String, api_name: :paymentMethodId

            # @!method initialize(billing_address: nil, currency: nil, metadata: nil, payment_method_id: nil)
            #   Zuora-specific billing fields for the customer.
            #
            #   @param billing_address [Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora::BillingAddress] Physical address
            #
            #   @param currency [Symbol, Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora::Currency] Customers selected currency
            #
            #   @param metadata [Hash{Symbol=>String}] Additional metadata
            #
            #   @param payment_method_id [String] Billing provider payment method id, attached to this customer

            # @see Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora#billing_address
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
              #   Physical address
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

            # Customers selected currency
            #
            # @see Stigg::Models::V1::CustomerUpdateParams::Passthrough::Zuora#currency
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
      end
    end
  end
end
