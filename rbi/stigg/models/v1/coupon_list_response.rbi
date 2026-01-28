# typed: strong

module Stigg
  module Models
    module V1
      class CouponListResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::CouponListResponse,
              Stigg::Internal::AnyHash
            )
          end

        # The unique identifier for the entity
        sig { returns(String) }
        attr_accessor :id

        # Fixed amount discounts in different currencies
        sig do
          returns(
            T.nilable(
              T::Array[Stigg::Models::V1::CouponListResponse::AmountsOff]
            )
          )
        end
        attr_accessor :amounts_off

        # The unique identifier for the entity in the billing provider
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_id

        # The URL to the entity in the billing provider
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_link_url

        # Timestamp of when the record was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Description of the coupon
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Duration of the coupon validity in months
        sig { returns(T.nilable(Float)) }
        attr_accessor :duration_in_months

        # Name of the coupon
        sig { returns(String) }
        attr_accessor :name

        # Percentage discount off the original price
        sig { returns(T.nilable(Float)) }
        attr_accessor :percent_off

        # The source of the coupon
        sig do
          returns(
            T.nilable(
              Stigg::Models::V1::CouponListResponse::Source::TaggedSymbol
            )
          )
        end
        attr_accessor :source

        # Current status of the coupon
        sig do
          returns(Stigg::Models::V1::CouponListResponse::Status::TaggedSymbol)
        end
        attr_accessor :status

        # Type of the coupon (percentage or fixed amount)
        sig do
          returns(Stigg::Models::V1::CouponListResponse::Type::TaggedSymbol)
        end
        attr_accessor :type

        # Timestamp of when the record was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Discount instrument with percentage or fixed amount
        sig do
          params(
            id: String,
            amounts_off:
              T.nilable(
                T::Array[
                  Stigg::Models::V1::CouponListResponse::AmountsOff::OrHash
                ]
              ),
            billing_id: T.nilable(String),
            billing_link_url: T.nilable(String),
            created_at: Time,
            description: T.nilable(String),
            duration_in_months: T.nilable(Float),
            name: String,
            percent_off: T.nilable(Float),
            source:
              T.nilable(
                Stigg::Models::V1::CouponListResponse::Source::OrSymbol
              ),
            status: Stigg::Models::V1::CouponListResponse::Status::OrSymbol,
            type: Stigg::Models::V1::CouponListResponse::Type::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the entity
          id:,
          # Fixed amount discounts in different currencies
          amounts_off:,
          # The unique identifier for the entity in the billing provider
          billing_id:,
          # The URL to the entity in the billing provider
          billing_link_url:,
          # Timestamp of when the record was created
          created_at:,
          # Description of the coupon
          description:,
          # Duration of the coupon validity in months
          duration_in_months:,
          # Name of the coupon
          name:,
          # Percentage discount off the original price
          percent_off:,
          # The source of the coupon
          source:,
          # Current status of the coupon
          status:,
          # Type of the coupon (percentage or fixed amount)
          type:,
          # Timestamp of when the record was last updated
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amounts_off:
                T.nilable(
                  T::Array[Stigg::Models::V1::CouponListResponse::AmountsOff]
                ),
              billing_id: T.nilable(String),
              billing_link_url: T.nilable(String),
              created_at: Time,
              description: T.nilable(String),
              duration_in_months: T.nilable(Float),
              name: String,
              percent_off: T.nilable(Float),
              source:
                T.nilable(
                  Stigg::Models::V1::CouponListResponse::Source::TaggedSymbol
                ),
              status:
                Stigg::Models::V1::CouponListResponse::Status::TaggedSymbol,
              type: Stigg::Models::V1::CouponListResponse::Type::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class AmountsOff < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::CouponListResponse::AmountsOff,
                Stigg::Internal::AnyHash
              )
            end

          # The price amount
          sig { returns(Float) }
          attr_accessor :amount

          # The price currency
          sig do
            returns(
              Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
            )
          end
          attr_accessor :currency

          # Monetary amount with currency
          sig do
            params(
              amount: Float,
              currency:
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::OrSymbol
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
                  Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
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
                  Stigg::Models::V1::CouponListResponse::AmountsOff::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            ANG =
              T.let(
                :ang,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            AWG =
              T.let(
                :awg,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            AZN =
              T.let(
                :azn,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BBD =
              T.let(
                :bbd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BDT =
              T.let(
                :bdt,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BIF =
              T.let(
                :bif,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BMD =
              T.let(
                :bmd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BND =
              T.let(
                :bnd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BWP =
              T.let(
                :bwp,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BYN =
              T.let(
                :byn,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BZD =
              T.let(
                :bzd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            CDF =
              T.let(
                :cdf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            CNY =
              T.let(
                :cny,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            FJD =
              T.let(
                :fjd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            GEL =
              T.let(
                :gel,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            GIP =
              T.let(
                :gip,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            HRK =
              T.let(
                :hrk,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            HTG =
              T.let(
                :htg,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            ISK =
              T.let(
                :isk,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            KGS =
              T.let(
                :kgs,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            KMF =
              T.let(
                :kmf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            KYD =
              T.let(
                :kyd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            KZT =
              T.let(
                :kzt,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            LBP =
              T.let(
                :lbp,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            LRD =
              T.let(
                :lrd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            LSL =
              T.let(
                :lsl,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MMK =
              T.let(
                :mmk,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MRO =
              T.let(
                :mro,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MVR =
              T.let(
                :mvr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MWK =
              T.let(
                :mwk,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            NPR =
              T.let(
                :npr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            PGK =
              T.let(
                :pgk,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SBD =
              T.let(
                :sbd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SCR =
              T.let(
                :scr,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SLE =
              T.let(
                :sle,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SLL =
              T.let(
                :sll,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SOS =
              T.let(
                :sos,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            SZL =
              T.let(
                :szl,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            TJS =
              T.let(
                :tjs,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            TOP =
              T.let(
                :top,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            UAH =
              T.let(
                :uah,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            VUV =
              T.let(
                :vuv,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            WST =
              T.let(
                :wst,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            XAF =
              T.let(
                :xaf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            YER =
              T.let(
                :yer,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            ZMW =
              T.let(
                :zmw,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            DJF =
              T.let(
                :djf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            GNF =
              T.let(
                :gnf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            UGX =
              T.let(
                :ugx,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )
            XPF =
              T.let(
                :xpf,
                Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::CouponListResponse::AmountsOff::Currency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The source of the coupon
        module Source
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::Models::V1::CouponListResponse::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STIGG =
            T.let(
              :STIGG,
              Stigg::Models::V1::CouponListResponse::Source::TaggedSymbol
            )
          STIGG_ADHOC =
            T.let(
              :STIGG_ADHOC,
              Stigg::Models::V1::CouponListResponse::Source::TaggedSymbol
            )
          STRIPE =
            T.let(
              :STRIPE,
              Stigg::Models::V1::CouponListResponse::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::CouponListResponse::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Current status of the coupon
        module Status
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::Models::V1::CouponListResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :ACTIVE,
              Stigg::Models::V1::CouponListResponse::Status::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :ARCHIVED,
              Stigg::Models::V1::CouponListResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::CouponListResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Type of the coupon (percentage or fixed amount)
        module Type
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::Models::V1::CouponListResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIXED =
            T.let(
              :FIXED,
              Stigg::Models::V1::CouponListResponse::Type::TaggedSymbol
            )
          PERCENTAGE =
            T.let(
              :PERCENTAGE,
              Stigg::Models::V1::CouponListResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::CouponListResponse::Type::TaggedSymbol
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
