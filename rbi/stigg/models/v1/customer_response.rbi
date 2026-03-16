# typed: strong

module Stigg
  module Models
    module V1
      class CustomerResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CustomerResponse, Stigg::Internal::AnyHash)
          end

        # A customer can be either an organization or an individual
        sig { returns(Stigg::V1::CustomerResponse::Data) }
        attr_reader :data

        sig { params(data: Stigg::V1::CustomerResponse::Data::OrHash).void }
        attr_writer :data

        # Response object
        sig do
          params(data: Stigg::V1::CustomerResponse::Data::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # A customer can be either an organization or an individual
          data:
        )
        end

        sig { override.returns({ data: Stigg::V1::CustomerResponse::Data }) }
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Stigg::V1::CustomerResponse::Data, Stigg::Internal::AnyHash)
            end

          # Customer slug
          sig { returns(String) }
          attr_accessor :id

          # Timestamp of when the record was deleted
          sig { returns(T.nilable(Time)) }
          attr_accessor :archived_at

          # Timestamp of when the record was created
          sig { returns(Time) }
          attr_accessor :created_at

          # Timestamp of when the record was last updated
          sig { returns(Time) }
          attr_accessor :updated_at

          # The billing currency of the customer
          sig do
            returns(
              T.nilable(
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            )
          end
          attr_accessor :billing_currency

          # The unique identifier for the entity in the billing provider
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_id

          # Customer level coupon
          sig do
            returns(
              T.nilable(Stigg::V1::CustomerResponse::Data::CouponID::Variants)
            )
          end
          attr_accessor :coupon_id

          # The default payment method details
          sig do
            returns(
              T.nilable(Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod)
            )
          end
          attr_reader :default_payment_method

          sig do
            params(
              default_payment_method:
                T.nilable(
                  Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::OrHash
                )
            ).void
          end
          attr_writer :default_payment_method

          # The email of the customer
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # List of integrations
          sig do
            returns(
              T.nilable(
                T::Array[Stigg::V1::CustomerResponse::Data::Integration]
              )
            )
          end
          attr_reader :integrations

          sig do
            params(
              integrations:
                T::Array[Stigg::V1::CustomerResponse::Data::Integration::OrHash]
            ).void
          end
          attr_writer :integrations

          # Language to use for this customer
          sig { returns(T.nilable(String)) }
          attr_accessor :language

          # Additional metadata
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # The name of the customer
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # Vendor-specific billing passthrough fields.
          sig do
            returns(T.nilable(Stigg::V1::CustomerResponse::Data::Passthrough))
          end
          attr_reader :passthrough

          sig do
            params(
              passthrough:
                Stigg::V1::CustomerResponse::Data::Passthrough::OrHash
            ).void
          end
          attr_writer :passthrough

          # Timezone to use for this customer
          sig { returns(T.nilable(String)) }
          attr_accessor :timezone

          # A customer can be either an organization or an individual
          sig do
            params(
              id: String,
              archived_at: T.nilable(Time),
              created_at: Time,
              updated_at: Time,
              billing_currency:
                T.nilable(
                  Stigg::V1::CustomerResponse::Data::BillingCurrency::OrSymbol
                ),
              billing_id: T.nilable(String),
              coupon_id:
                T.nilable(
                  T.any(
                    String,
                    Stigg::V1::CustomerResponse::Data::CouponID::OrSymbol
                  )
                ),
              default_payment_method:
                T.nilable(
                  Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::OrHash
                ),
              email: T.nilable(String),
              integrations:
                T::Array[
                  Stigg::V1::CustomerResponse::Data::Integration::OrHash
                ],
              language: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              passthrough:
                Stigg::V1::CustomerResponse::Data::Passthrough::OrHash,
              timezone: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Customer slug
            id:,
            # Timestamp of when the record was deleted
            archived_at:,
            # Timestamp of when the record was created
            created_at:,
            # Timestamp of when the record was last updated
            updated_at:,
            # The billing currency of the customer
            billing_currency: nil,
            # The unique identifier for the entity in the billing provider
            billing_id: nil,
            # Customer level coupon
            coupon_id: nil,
            # The default payment method details
            default_payment_method: nil,
            # The email of the customer
            email: nil,
            # List of integrations
            integrations: nil,
            # Language to use for this customer
            language: nil,
            # Additional metadata
            metadata: nil,
            # The name of the customer
            name: nil,
            # Vendor-specific billing passthrough fields.
            passthrough: nil,
            # Timezone to use for this customer
            timezone: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                archived_at: T.nilable(Time),
                created_at: Time,
                updated_at: Time,
                billing_currency:
                  T.nilable(
                    Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
                  ),
                billing_id: T.nilable(String),
                coupon_id:
                  T.nilable(
                    Stigg::V1::CustomerResponse::Data::CouponID::Variants
                  ),
                default_payment_method:
                  T.nilable(
                    Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod
                  ),
                email: T.nilable(String),
                integrations:
                  T::Array[Stigg::V1::CustomerResponse::Data::Integration],
                language: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                name: T.nilable(String),
                passthrough: Stigg::V1::CustomerResponse::Data::Passthrough,
                timezone: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The billing currency of the customer
          module BillingCurrency
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::CustomerResponse::Data::BillingCurrency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            ANG =
              T.let(
                :ang,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            AWG =
              T.let(
                :awg,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            AZN =
              T.let(
                :azn,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BBD =
              T.let(
                :bbd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BDT =
              T.let(
                :bdt,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BIF =
              T.let(
                :bif,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BMD =
              T.let(
                :bmd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BND =
              T.let(
                :bnd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BWP =
              T.let(
                :bwp,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BYN =
              T.let(
                :byn,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BZD =
              T.let(
                :bzd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            CDF =
              T.let(
                :cdf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            CNY =
              T.let(
                :cny,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            FJD =
              T.let(
                :fjd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            GEL =
              T.let(
                :gel,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            GIP =
              T.let(
                :gip,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            HRK =
              T.let(
                :hrk,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            HTG =
              T.let(
                :htg,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            ISK =
              T.let(
                :isk,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            KGS =
              T.let(
                :kgs,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            KMF =
              T.let(
                :kmf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            KYD =
              T.let(
                :kyd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            KZT =
              T.let(
                :kzt,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            LBP =
              T.let(
                :lbp,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            LRD =
              T.let(
                :lrd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            LSL =
              T.let(
                :lsl,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MMK =
              T.let(
                :mmk,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MRO =
              T.let(
                :mro,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MVR =
              T.let(
                :mvr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MWK =
              T.let(
                :mwk,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            NPR =
              T.let(
                :npr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            PGK =
              T.let(
                :pgk,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SBD =
              T.let(
                :sbd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SCR =
              T.let(
                :scr,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SLE =
              T.let(
                :sle,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SLL =
              T.let(
                :sll,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SOS =
              T.let(
                :sos,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            SZL =
              T.let(
                :szl,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            TJS =
              T.let(
                :tjs,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            TOP =
              T.let(
                :top,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            UAH =
              T.let(
                :uah,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            VUV =
              T.let(
                :vuv,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            WST =
              T.let(
                :wst,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            XAF =
              T.let(
                :xaf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            YER =
              T.let(
                :yer,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            ZMW =
              T.let(
                :zmw,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            DJF =
              T.let(
                :djf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            GNF =
              T.let(
                :gnf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            UGX =
              T.let(
                :ugx,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )
            XPF =
              T.let(
                :xpf,
                Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::CustomerResponse::Data::BillingCurrency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Customer level coupon
          module CouponID
            extend Stigg::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  Stigg::V1::CustomerResponse::Data::CouponID::TaggedSymbol
                )
              end

            sig do
              override.returns(
                T::Array[Stigg::V1::CustomerResponse::Data::CouponID::Variants]
              )
            end
            def self.variants
            end

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::CustomerResponse::Data::CouponID)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMPTY =
              T.let(
                :"",
                Stigg::V1::CustomerResponse::Data::CouponID::TaggedSymbol
              )
          end

          class DefaultPaymentMethod < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod,
                  Stigg::Internal::AnyHash
                )
              end

            # The default payment method id
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_id

            # The expiration month of the default payment method
            sig { returns(T.nilable(Float)) }
            attr_accessor :card_expiry_month

            # The expiration year of the default payment method
            sig { returns(T.nilable(Float)) }
            attr_accessor :card_expiry_year

            # The last 4 digits of the default payment method
            sig { returns(T.nilable(String)) }
            attr_accessor :card_last4_digits

            # The default payment method type
            sig do
              returns(
                Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The default payment method details
            sig do
              params(
                billing_id: T.nilable(String),
                card_expiry_month: T.nilable(Float),
                card_expiry_year: T.nilable(Float),
                card_last4_digits: T.nilable(String),
                type:
                  Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The default payment method id
              billing_id:,
              # The expiration month of the default payment method
              card_expiry_month:,
              # The expiration year of the default payment method
              card_expiry_year:,
              # The last 4 digits of the default payment method
              card_last4_digits:,
              # The default payment method type
              type:
            )
            end

            sig do
              override.returns(
                {
                  billing_id: T.nilable(String),
                  card_expiry_month: T.nilable(Float),
                  card_expiry_year: T.nilable(Float),
                  card_last4_digits: T.nilable(String),
                  type:
                    Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The default payment method type
            module Type
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CARD =
                T.let(
                  :CARD,
                  Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type::TaggedSymbol
                )
              BANK =
                T.let(
                  :BANK,
                  Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type::TaggedSymbol
                )
              CASH_APP =
                T.let(
                  :CASH_APP,
                  Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::CustomerResponse::Data::DefaultPaymentMethod::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Integration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::CustomerResponse::Data::Integration,
                  Stigg::Internal::AnyHash
                )
              end

            # Integration details
            sig { returns(String) }
            attr_accessor :id

            # Synced entity id
            sig { returns(T.nilable(String)) }
            attr_accessor :synced_entity_id

            # The vendor identifier of integration
            sig do
              returns(
                Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
              )
            end
            attr_accessor :vendor_identifier

            # External billing or CRM integration link
            sig do
              params(
                id: String,
                synced_entity_id: T.nilable(String),
                vendor_identifier:
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Integration details
              id:,
              # Synced entity id
              synced_entity_id:,
              # The vendor identifier of integration
              vendor_identifier:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  synced_entity_id: T.nilable(String),
                  vendor_identifier:
                    Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The vendor identifier of integration
            module VendorIdentifier
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AUTH0 =
                T.let(
                  :AUTH0,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              ZUORA =
                T.let(
                  :ZUORA,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              STRIPE =
                T.let(
                  :STRIPE,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              HUBSPOT =
                T.let(
                  :HUBSPOT,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              AWS_MARKETPLACE =
                T.let(
                  :AWS_MARKETPLACE,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              SNOWFLAKE =
                T.let(
                  :SNOWFLAKE,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              SALESFORCE =
                T.let(
                  :SALESFORCE,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              BIG_QUERY =
                T.let(
                  :BIG_QUERY,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              OPEN_FGA =
                T.let(
                  :OPEN_FGA,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )
              APP_STORE =
                T.let(
                  :APP_STORE,
                  Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::CustomerResponse::Data::Integration::VendorIdentifier::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Passthrough < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::CustomerResponse::Data::Passthrough,
                  Stigg::Internal::AnyHash
                )
              end

            # Stripe-specific billing fields for the customer.
            sig do
              returns(
                T.nilable(
                  Stigg::V1::CustomerResponse::Data::Passthrough::Stripe
                )
              )
            end
            attr_reader :stripe

            sig do
              params(
                stripe:
                  Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::OrHash
              ).void
            end
            attr_writer :stripe

            # Zuora-specific billing fields for the customer.
            sig do
              returns(
                T.nilable(Stigg::V1::CustomerResponse::Data::Passthrough::Zuora)
              )
            end
            attr_reader :zuora

            sig do
              params(
                zuora:
                  Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::OrHash
              ).void
            end
            attr_writer :zuora

            # Vendor-specific billing passthrough fields.
            sig do
              params(
                stripe:
                  Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::OrHash,
                zuora:
                  Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Stripe-specific billing fields for the customer.
              stripe: nil,
              # Zuora-specific billing fields for the customer.
              zuora: nil
            )
            end

            sig do
              override.returns(
                {
                  stripe:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe,
                  zuora: Stigg::V1::CustomerResponse::Data::Passthrough::Zuora
                }
              )
            end
            def to_hash
            end

            class Stripe < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe,
                    Stigg::Internal::AnyHash
                  )
                end

              # Physical address
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::BillingAddress
                  )
                )
              end
              attr_reader :billing_address

              sig do
                params(
                  billing_address:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::BillingAddress::OrHash
                ).void
              end
              attr_writer :billing_address

              # Customer name
              sig { returns(T.nilable(String)) }
              attr_reader :customer_name

              sig { params(customer_name: String).void }
              attr_writer :customer_name

              # Invoice custom fields
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :invoice_custom_fields

              sig do
                params(invoice_custom_fields: T::Hash[Symbol, String]).void
              end
              attr_writer :invoice_custom_fields

              # Additional metadata
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :metadata

              sig { params(metadata: T::Hash[Symbol, String]).void }
              attr_writer :metadata

              # Billing provider payment method id, attached to this customer
              sig { returns(T.nilable(String)) }
              attr_reader :payment_method_id

              sig { params(payment_method_id: String).void }
              attr_writer :payment_method_id

              # Physical address
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::ShippingAddress
                  )
                )
              end
              attr_reader :shipping_address

              sig do
                params(
                  shipping_address:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::ShippingAddress::OrHash
                ).void
              end
              attr_writer :shipping_address

              # Tax IDs
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::TaxID
                    ]
                  )
                )
              end
              attr_reader :tax_ids

              sig do
                params(
                  tax_ids:
                    T::Array[
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::TaxID::OrHash
                    ]
                ).void
              end
              attr_writer :tax_ids

              # Stripe-specific billing fields for the customer.
              sig do
                params(
                  billing_address:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::BillingAddress::OrHash,
                  customer_name: String,
                  invoice_custom_fields: T::Hash[Symbol, String],
                  metadata: T::Hash[Symbol, String],
                  payment_method_id: String,
                  shipping_address:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::ShippingAddress::OrHash,
                  tax_ids:
                    T::Array[
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::TaxID::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # Physical address
                billing_address: nil,
                # Customer name
                customer_name: nil,
                # Invoice custom fields
                invoice_custom_fields: nil,
                # Additional metadata
                metadata: nil,
                # Billing provider payment method id, attached to this customer
                payment_method_id: nil,
                # Physical address
                shipping_address: nil,
                # Tax IDs
                tax_ids: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_address:
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::BillingAddress,
                    customer_name: String,
                    invoice_custom_fields: T::Hash[Symbol, String],
                    metadata: T::Hash[Symbol, String],
                    payment_method_id: String,
                    shipping_address:
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::ShippingAddress,
                    tax_ids:
                      T::Array[
                        Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::TaxID
                      ]
                  }
                )
              end
              def to_hash
              end

              class BillingAddress < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::BillingAddress,
                      Stigg::Internal::AnyHash
                    )
                  end

                # City name
                sig { returns(T.nilable(String)) }
                attr_reader :city

                sig { params(city: String).void }
                attr_writer :city

                # Country code or name
                sig { returns(T.nilable(String)) }
                attr_reader :country

                sig { params(country: String).void }
                attr_writer :country

                # Street address line 1
                sig { returns(T.nilable(String)) }
                attr_reader :line1

                sig { params(line1: String).void }
                attr_writer :line1

                # Street address line 2
                sig { returns(T.nilable(String)) }
                attr_reader :line2

                sig { params(line2: String).void }
                attr_writer :line2

                # Postal or ZIP code
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code

                sig { params(postal_code: String).void }
                attr_writer :postal_code

                # State or province
                sig { returns(T.nilable(String)) }
                attr_reader :state

                sig { params(state: String).void }
                attr_writer :state

                # Physical address
                sig do
                  params(
                    city: String,
                    country: String,
                    line1: String,
                    line2: String,
                    postal_code: String,
                    state: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # City name
                  city: nil,
                  # Country code or name
                  country: nil,
                  # Street address line 1
                  line1: nil,
                  # Street address line 2
                  line2: nil,
                  # Postal or ZIP code
                  postal_code: nil,
                  # State or province
                  state: nil
                )
                end

                sig do
                  override.returns(
                    {
                      city: String,
                      country: String,
                      line1: String,
                      line2: String,
                      postal_code: String,
                      state: String
                    }
                  )
                end
                def to_hash
                end
              end

              class ShippingAddress < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::ShippingAddress,
                      Stigg::Internal::AnyHash
                    )
                  end

                # City name
                sig { returns(T.nilable(String)) }
                attr_reader :city

                sig { params(city: String).void }
                attr_writer :city

                # Country code or name
                sig { returns(T.nilable(String)) }
                attr_reader :country

                sig { params(country: String).void }
                attr_writer :country

                # Street address line 1
                sig { returns(T.nilable(String)) }
                attr_reader :line1

                sig { params(line1: String).void }
                attr_writer :line1

                # Street address line 2
                sig { returns(T.nilable(String)) }
                attr_reader :line2

                sig { params(line2: String).void }
                attr_writer :line2

                # Postal or ZIP code
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code

                sig { params(postal_code: String).void }
                attr_writer :postal_code

                # State or province
                sig { returns(T.nilable(String)) }
                attr_reader :state

                sig { params(state: String).void }
                attr_writer :state

                # Physical address
                sig do
                  params(
                    city: String,
                    country: String,
                    line1: String,
                    line2: String,
                    postal_code: String,
                    state: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # City name
                  city: nil,
                  # Country code or name
                  country: nil,
                  # Street address line 1
                  line1: nil,
                  # Street address line 2
                  line2: nil,
                  # Postal or ZIP code
                  postal_code: nil,
                  # State or province
                  state: nil
                )
                end

                sig do
                  override.returns(
                    {
                      city: String,
                      country: String,
                      line1: String,
                      line2: String,
                      postal_code: String,
                      state: String
                    }
                  )
                end
                def to_hash
                end
              end

              class TaxID < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::CustomerResponse::Data::Passthrough::Stripe::TaxID,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The type of tax exemption identifier, such as VAT.
                sig { returns(String) }
                attr_accessor :type

                # The actual tax identifier value
                sig { returns(String) }
                attr_accessor :value

                # Tax identifier with type and value for customer tax exemptions.
                sig do
                  params(type: String, value: String).returns(T.attached_class)
                end
                def self.new(
                  # The type of tax exemption identifier, such as VAT.
                  type:,
                  # The actual tax identifier value
                  value:
                )
                end

                sig { override.returns({ type: String, value: String }) }
                def to_hash
                end
              end
            end

            class Zuora < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora,
                    Stigg::Internal::AnyHash
                  )
                end

              # Physical address
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::BillingAddress
                  )
                )
              end
              attr_reader :billing_address

              sig do
                params(
                  billing_address:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::BillingAddress::OrHash
                ).void
              end
              attr_writer :billing_address

              # Customers selected currency
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              # Additional metadata
              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_reader :metadata

              sig { params(metadata: T::Hash[Symbol, String]).void }
              attr_writer :metadata

              # Billing provider payment method id, attached to this customer
              sig { returns(T.nilable(String)) }
              attr_reader :payment_method_id

              sig { params(payment_method_id: String).void }
              attr_writer :payment_method_id

              # Zuora-specific billing fields for the customer.
              sig do
                params(
                  billing_address:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::BillingAddress::OrHash,
                  currency:
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::OrSymbol,
                  metadata: T::Hash[Symbol, String],
                  payment_method_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Physical address
                billing_address: nil,
                # Customers selected currency
                currency: nil,
                # Additional metadata
                metadata: nil,
                # Billing provider payment method id, attached to this customer
                payment_method_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_address:
                      Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::BillingAddress,
                    currency:
                      Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol,
                    metadata: T::Hash[Symbol, String],
                    payment_method_id: String
                  }
                )
              end
              def to_hash
              end

              class BillingAddress < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::BillingAddress,
                      Stigg::Internal::AnyHash
                    )
                  end

                # City name
                sig { returns(T.nilable(String)) }
                attr_reader :city

                sig { params(city: String).void }
                attr_writer :city

                # Country code or name
                sig { returns(T.nilable(String)) }
                attr_reader :country

                sig { params(country: String).void }
                attr_writer :country

                # Street address line 1
                sig { returns(T.nilable(String)) }
                attr_reader :line1

                sig { params(line1: String).void }
                attr_writer :line1

                # Street address line 2
                sig { returns(T.nilable(String)) }
                attr_reader :line2

                sig { params(line2: String).void }
                attr_writer :line2

                # Postal or ZIP code
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code

                sig { params(postal_code: String).void }
                attr_writer :postal_code

                # State or province
                sig { returns(T.nilable(String)) }
                attr_reader :state

                sig { params(state: String).void }
                attr_writer :state

                # Physical address
                sig do
                  params(
                    city: String,
                    country: String,
                    line1: String,
                    line2: String,
                    postal_code: String,
                    state: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # City name
                  city: nil,
                  # Country code or name
                  country: nil,
                  # Street address line 1
                  line1: nil,
                  # Street address line 2
                  line2: nil,
                  # Postal or ZIP code
                  postal_code: nil,
                  # State or province
                  state: nil
                )
                end

                sig do
                  override.returns(
                    {
                      city: String,
                      country: String,
                      line1: String,
                      line2: String,
                      postal_code: String,
                      state: String
                    }
                  )
                end
                def to_hash
                end
              end

              # Customers selected currency
              module Currency
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::CustomerResponse::Data::Passthrough::Zuora::Currency::TaggedSymbol
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
  end
end
