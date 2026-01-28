# typed: strong

module Stigg
  module Models
    module V1
      class CouponCreateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CouponCreateParams, Stigg::Internal::AnyHash)
          end

        # The unique identifier for the entity
        sig { returns(String) }
        attr_accessor :id

        # Fixed amount discounts in different currencies
        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::CouponCreateParams::AmountsOff])
          )
        end
        attr_accessor :amounts_off

        # Description of the coupon
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Duration of the coupon validity in months
        sig { returns(T.nilable(Integer)) }
        attr_accessor :duration_in_months

        # Name of the coupon
        sig { returns(String) }
        attr_accessor :name

        # Percentage discount off the original price
        sig { returns(T.nilable(Float)) }
        attr_accessor :percent_off

        # Metadata associated with the entity
        sig { returns(T.nilable(T.anything)) }
        attr_reader :additional_meta_data

        sig { params(additional_meta_data: T.anything).void }
        attr_writer :additional_meta_data

        sig do
          params(
            id: String,
            amounts_off:
              T.nilable(
                T::Array[Stigg::V1::CouponCreateParams::AmountsOff::OrHash]
              ),
            description: T.nilable(String),
            duration_in_months: T.nilable(Integer),
            name: String,
            percent_off: T.nilable(Float),
            additional_meta_data: T.anything,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the entity
          id:,
          # Fixed amount discounts in different currencies
          amounts_off:,
          # Description of the coupon
          description:,
          # Duration of the coupon validity in months
          duration_in_months:,
          # Name of the coupon
          name:,
          # Percentage discount off the original price
          percent_off:,
          # Metadata associated with the entity
          additional_meta_data: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amounts_off:
                T.nilable(T::Array[Stigg::V1::CouponCreateParams::AmountsOff]),
              description: T.nilable(String),
              duration_in_months: T.nilable(Integer),
              name: String,
              percent_off: T.nilable(Float),
              additional_meta_data: T.anything,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AmountsOff < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::CouponCreateParams::AmountsOff,
                Stigg::Internal::AnyHash
              )
            end

          # The price amount
          sig { returns(Float) }
          attr_accessor :amount

          # The price currency
          sig do
            returns(
              Stigg::V1::CouponCreateParams::AmountsOff::Currency::OrSymbol
            )
          end
          attr_accessor :currency

          # Monetary amount with currency
          sig do
            params(
              amount: Float,
              currency:
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The price amount
            amount:,
            # The price currency
            currency:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                currency:
                  Stigg::V1::CouponCreateParams::AmountsOff::Currency::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The price currency
          module Currency
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::CouponCreateParams::AmountsOff::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            ANG =
              T.let(
                :ang,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            AWG =
              T.let(
                :awg,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            AZN =
              T.let(
                :azn,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BBD =
              T.let(
                :bbd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BDT =
              T.let(
                :bdt,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BIF =
              T.let(
                :bif,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BMD =
              T.let(
                :bmd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BND =
              T.let(
                :bnd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BWP =
              T.let(
                :bwp,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BYN =
              T.let(
                :byn,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BZD =
              T.let(
                :bzd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            CDF =
              T.let(
                :cdf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            CNY =
              T.let(
                :cny,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            FJD =
              T.let(
                :fjd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            GEL =
              T.let(
                :gel,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            GIP =
              T.let(
                :gip,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            HRK =
              T.let(
                :hrk,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            HTG =
              T.let(
                :htg,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            ISK =
              T.let(
                :isk,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            KGS =
              T.let(
                :kgs,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            KMF =
              T.let(
                :kmf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            KYD =
              T.let(
                :kyd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            KZT =
              T.let(
                :kzt,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            LBP =
              T.let(
                :lbp,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            LRD =
              T.let(
                :lrd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            LSL =
              T.let(
                :lsl,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MMK =
              T.let(
                :mmk,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MRO =
              T.let(
                :mro,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MVR =
              T.let(
                :mvr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MWK =
              T.let(
                :mwk,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            NPR =
              T.let(
                :npr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            PGK =
              T.let(
                :pgk,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SBD =
              T.let(
                :sbd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SCR =
              T.let(
                :scr,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SLE =
              T.let(
                :sle,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SLL =
              T.let(
                :sll,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SOS =
              T.let(
                :sos,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            SZL =
              T.let(
                :szl,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            TJS =
              T.let(
                :tjs,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            TOP =
              T.let(
                :top,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            UAH =
              T.let(
                :uah,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            VUV =
              T.let(
                :vuv,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            WST =
              T.let(
                :wst,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            XAF =
              T.let(
                :xaf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            YER =
              T.let(
                :yer,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            ZMW =
              T.let(
                :zmw,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            DJF =
              T.let(
                :djf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            GNF =
              T.let(
                :gnf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            UGX =
              T.let(
                :ugx,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )
            XPF =
              T.let(
                :xpf,
                Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::CouponCreateParams::AmountsOff::Currency::TaggedSymbol
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
