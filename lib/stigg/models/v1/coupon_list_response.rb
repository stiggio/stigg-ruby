# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Coupons#list
      class CouponListResponse < Stigg::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Stigg::Models::V1::CouponListResponse::Data>]
        required :data, -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CouponListResponse::Data] }

        # @!attribute pagination
        #   Pagination information including cursors for navigation
        #
        #   @return [Stigg::Models::V1::CouponListResponse::Pagination]
        required :pagination, -> { Stigg::Models::V1::CouponListResponse::Pagination }

        # @!method initialize(data:, pagination:)
        #   @param data [Array<Stigg::Models::V1::CouponListResponse::Data>]
        #
        #   @param pagination [Stigg::Models::V1::CouponListResponse::Pagination] Pagination information including cursors for navigation

        class Data < Stigg::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the entity
          #
          #   @return [String]
          required :id, String

          # @!attribute amounts_off
          #   Fixed amount discounts in different currencies
          #
          #   @return [Array<Stigg::Models::V1::CouponListResponse::Data::AmountsOff>, nil]
          required :amounts_off,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::CouponListResponse::Data::AmountsOff] },
                   api_name: :amountsOff,
                   nil?: true

          # @!attribute billing_id
          #   The unique identifier for the entity in the billing provider
          #
          #   @return [String, nil]
          required :billing_id, String, api_name: :billingId, nil?: true

          # @!attribute billing_link_url
          #   The URL to the entity in the billing provider
          #
          #   @return [String, nil]
          required :billing_link_url, String, api_name: :billingLinkUrl, nil?: true

          # @!attribute created_at
          #   Timestamp of when the record was created
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute description
          #   Description of the coupon
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!attribute duration_in_months
          #   Duration of the coupon validity in months
          #
          #   @return [Float, nil]
          required :duration_in_months, Float, api_name: :durationInMonths, nil?: true

          # @!attribute name
          #   Name of the coupon
          #
          #   @return [String]
          required :name, String

          # @!attribute percent_off
          #   Percentage discount off the original price
          #
          #   @return [Float, nil]
          required :percent_off, Float, api_name: :percentOff, nil?: true

          # @!attribute source
          #   The source of the coupon
          #
          #   @return [Symbol, Stigg::Models::V1::CouponListResponse::Data::Source, nil]
          required :source, enum: -> { Stigg::Models::V1::CouponListResponse::Data::Source }, nil?: true

          # @!attribute status
          #   Current status of the coupon
          #
          #   @return [Symbol, Stigg::Models::V1::CouponListResponse::Data::Status]
          required :status, enum: -> { Stigg::Models::V1::CouponListResponse::Data::Status }

          # @!attribute type
          #   Type of the coupon (percentage or fixed amount)
          #
          #   @return [Symbol, Stigg::Models::V1::CouponListResponse::Data::Type]
          required :type, enum: -> { Stigg::Models::V1::CouponListResponse::Data::Type }

          # @!attribute updated_at
          #   Timestamp of when the record was last updated
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!method initialize(id:, amounts_off:, billing_id:, billing_link_url:, created_at:, description:, duration_in_months:, name:, percent_off:, source:, status:, type:, updated_at:)
          #   @param id [String] The unique identifier for the entity
          #
          #   @param amounts_off [Array<Stigg::Models::V1::CouponListResponse::Data::AmountsOff>, nil] Fixed amount discounts in different currencies
          #
          #   @param billing_id [String, nil] The unique identifier for the entity in the billing provider
          #
          #   @param billing_link_url [String, nil] The URL to the entity in the billing provider
          #
          #   @param created_at [Time] Timestamp of when the record was created
          #
          #   @param description [String, nil] Description of the coupon
          #
          #   @param duration_in_months [Float, nil] Duration of the coupon validity in months
          #
          #   @param name [String] Name of the coupon
          #
          #   @param percent_off [Float, nil] Percentage discount off the original price
          #
          #   @param source [Symbol, Stigg::Models::V1::CouponListResponse::Data::Source, nil] The source of the coupon
          #
          #   @param status [Symbol, Stigg::Models::V1::CouponListResponse::Data::Status] Current status of the coupon
          #
          #   @param type [Symbol, Stigg::Models::V1::CouponListResponse::Data::Type] Type of the coupon (percentage or fixed amount)
          #
          #   @param updated_at [Time] Timestamp of when the record was last updated

          class AmountsOff < Stigg::Internal::Type::BaseModel
            # @!attribute amount
            #   The price amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute currency
            #   The price currency
            #
            #   @return [Symbol, Stigg::Models::V1::CouponListResponse::Data::AmountsOff::Currency, nil]
            required :currency,
                     enum: -> { Stigg::Models::V1::CouponListResponse::Data::AmountsOff::Currency },
                     nil?: true

            # @!method initialize(amount:, currency:)
            #   @param amount [Float] The price amount
            #
            #   @param currency [Symbol, Stigg::Models::V1::CouponListResponse::Data::AmountsOff::Currency, nil] The price currency

            # The price currency
            #
            # @see Stigg::Models::V1::CouponListResponse::Data::AmountsOff#currency
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

          # The source of the coupon
          #
          # @see Stigg::Models::V1::CouponListResponse::Data#source
          module Source
            extend Stigg::Internal::Type::Enum

            STIGG = :STIGG
            STIGG_ADHOC = :STIGG_ADHOC
            STRIPE = :STRIPE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Current status of the coupon
          #
          # @see Stigg::Models::V1::CouponListResponse::Data#status
          module Status
            extend Stigg::Internal::Type::Enum

            ACTIVE = :ACTIVE
            ARCHIVED = :ARCHIVED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Type of the coupon (percentage or fixed amount)
          #
          # @see Stigg::Models::V1::CouponListResponse::Data#type
          module Type
            extend Stigg::Internal::Type::Enum

            FIXED = :FIXED
            PERCENTAGE = :PERCENTAGE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Stigg::Models::V1::CouponListResponse#pagination
        class Pagination < Stigg::Internal::Type::BaseModel
          # @!attribute next_
          #   Cursor to fetch the next page (use with after parameter), null if no more pages
          #
          #   @return [String, nil]
          required :next_, String, api_name: :next, nil?: true

          # @!attribute prev
          #   Cursor to fetch the previous page (use with before parameter), null if no
          #   previous pages
          #
          #   @return [String, nil]
          required :prev, String, nil?: true

          # @!method initialize(next_:, prev:)
          #   Some parameter documentations has been truncated, see
          #   {Stigg::Models::V1::CouponListResponse::Pagination} for more details.
          #
          #   Pagination information including cursors for navigation
          #
          #   @param next_ [String, nil] Cursor to fetch the next page (use with after parameter), null if no more pages
          #
          #   @param prev [String, nil] Cursor to fetch the previous page (use with before parameter), null if no previo
        end
      end
    end
  end
end
