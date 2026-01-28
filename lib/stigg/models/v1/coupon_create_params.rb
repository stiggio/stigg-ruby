# frozen_string_literal: true

module Stigg
  module Models
    module V1
      # @see Stigg::Resources::V1::Coupons#create
      class CouponCreateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        # @!attribute id
        #   The unique identifier for the entity
        #
        #   @return [String]
        required :id, String

        # @!attribute amounts_off
        #   Fixed amount discounts in different currencies
        #
        #   @return [Array<Stigg::Models::V1::CouponCreateParams::AmountsOff>, nil]
        required :amounts_off,
                 -> { Stigg::Internal::Type::ArrayOf[Stigg::V1::CouponCreateParams::AmountsOff] },
                 api_name: :amountsOff,
                 nil?: true

        # @!attribute description
        #   Description of the coupon
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute duration_in_months
        #   Duration of the coupon validity in months
        #
        #   @return [Integer, nil]
        required :duration_in_months, Integer, api_name: :durationInMonths, nil?: true

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

        # @!attribute additional_meta_data
        #   Metadata associated with the entity
        #
        #   @return [Object, nil]
        optional :additional_meta_data, Stigg::Internal::Type::Unknown, api_name: :additionalMetaData

        # @!method initialize(id:, amounts_off:, description:, duration_in_months:, name:, percent_off:, additional_meta_data: nil, request_options: {})
        #   @param id [String] The unique identifier for the entity
        #
        #   @param amounts_off [Array<Stigg::Models::V1::CouponCreateParams::AmountsOff>, nil] Fixed amount discounts in different currencies
        #
        #   @param description [String, nil] Description of the coupon
        #
        #   @param duration_in_months [Integer, nil] Duration of the coupon validity in months
        #
        #   @param name [String] Name of the coupon
        #
        #   @param percent_off [Float, nil] Percentage discount off the original price
        #
        #   @param additional_meta_data [Object] Metadata associated with the entity
        #
        #   @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}]

        class AmountsOff < Stigg::Internal::Type::BaseModel
          # @!attribute amount
          #   The price amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute currency
          #   The price currency
          #
          #   @return [Symbol, Stigg::Models::V1::CouponCreateParams::AmountsOff::Currency]
          required :currency, enum: -> { Stigg::V1::CouponCreateParams::AmountsOff::Currency }

          # @!method initialize(amount:, currency:)
          #   Monetary amount with currency
          #
          #   @param amount [Float] The price amount
          #
          #   @param currency [Symbol, Stigg::Models::V1::CouponCreateParams::AmountsOff::Currency] The price currency

          # The price currency
          #
          # @see Stigg::Models::V1::CouponCreateParams::AmountsOff#currency
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
