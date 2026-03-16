# typed: strong

module Stigg
  module Models
    module V1
      class CustomerListResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::CustomerListResponse,
              Stigg::Internal::AnyHash
            )
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
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
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
            T.nilable(
              Stigg::Models::V1::CustomerListResponse::CouponID::Variants
            )
          )
        end
        attr_accessor :coupon_id

        # The default payment method details
        sig do
          returns(
            T.nilable(
              Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod
            )
          )
        end
        attr_reader :default_payment_method

        sig do
          params(
            default_payment_method:
              T.nilable(
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::OrHash
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
              T::Array[Stigg::Models::V1::CustomerListResponse::Integration]
            )
          )
        end
        attr_reader :integrations

        sig do
          params(
            integrations:
              T::Array[
                Stigg::Models::V1::CustomerListResponse::Integration::OrHash
              ]
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
          returns(
            T.nilable(Stigg::Models::V1::CustomerListResponse::Passthrough)
          )
        end
        attr_reader :passthrough

        sig do
          params(
            passthrough:
              Stigg::Models::V1::CustomerListResponse::Passthrough::OrHash
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
                Stigg::Models::V1::CustomerListResponse::BillingCurrency::OrSymbol
              ),
            billing_id: T.nilable(String),
            coupon_id:
              T.nilable(
                T.any(
                  String,
                  Stigg::Models::V1::CustomerListResponse::CouponID::OrSymbol
                )
              ),
            default_payment_method:
              T.nilable(
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::OrHash
              ),
            email: T.nilable(String),
            integrations:
              T::Array[
                Stigg::Models::V1::CustomerListResponse::Integration::OrHash
              ],
            language: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            passthrough:
              Stigg::Models::V1::CustomerListResponse::Passthrough::OrHash,
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
                  Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
                ),
              billing_id: T.nilable(String),
              coupon_id:
                T.nilable(
                  Stigg::Models::V1::CustomerListResponse::CouponID::Variants
                ),
              default_payment_method:
                T.nilable(
                  Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod
                ),
              email: T.nilable(String),
              integrations:
                T::Array[Stigg::Models::V1::CustomerListResponse::Integration],
              language: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              passthrough: Stigg::Models::V1::CustomerListResponse::Passthrough,
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
                Stigg::Models::V1::CustomerListResponse::BillingCurrency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD =
            T.let(
              :usd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          AED =
            T.let(
              :aed,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          AMD =
            T.let(
              :amd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          ANG =
            T.let(
              :ang,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          AUD =
            T.let(
              :aud,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          AWG =
            T.let(
              :awg,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          AZN =
            T.let(
              :azn,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BAM =
            T.let(
              :bam,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BBD =
            T.let(
              :bbd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BDT =
            T.let(
              :bdt,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BGN =
            T.let(
              :bgn,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BIF =
            T.let(
              :bif,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BMD =
            T.let(
              :bmd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BND =
            T.let(
              :bnd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BSD =
            T.let(
              :bsd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BWP =
            T.let(
              :bwp,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BYN =
            T.let(
              :byn,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BZD =
            T.let(
              :bzd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          BRL =
            T.let(
              :brl,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          CAD =
            T.let(
              :cad,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          CDF =
            T.let(
              :cdf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          CHF =
            T.let(
              :chf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          CNY =
            T.let(
              :cny,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          CZK =
            T.let(
              :czk,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          DKK =
            T.let(
              :dkk,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          DOP =
            T.let(
              :dop,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          DZD =
            T.let(
              :dzd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          EGP =
            T.let(
              :egp,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          ETB =
            T.let(
              :etb,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          EUR =
            T.let(
              :eur,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          FJD =
            T.let(
              :fjd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          GBP =
            T.let(
              :gbp,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          GEL =
            T.let(
              :gel,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          GIP =
            T.let(
              :gip,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          GMD =
            T.let(
              :gmd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          GYD =
            T.let(
              :gyd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          HKD =
            T.let(
              :hkd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          HRK =
            T.let(
              :hrk,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          HTG =
            T.let(
              :htg,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          IDR =
            T.let(
              :idr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          ILS =
            T.let(
              :ils,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          INR =
            T.let(
              :inr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          ISK =
            T.let(
              :isk,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          JMD =
            T.let(
              :jmd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          JPY =
            T.let(
              :jpy,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          KES =
            T.let(
              :kes,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          KGS =
            T.let(
              :kgs,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          KHR =
            T.let(
              :khr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          KMF =
            T.let(
              :kmf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          KRW =
            T.let(
              :krw,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          KYD =
            T.let(
              :kyd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          KZT =
            T.let(
              :kzt,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          LBP =
            T.let(
              :lbp,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          LKR =
            T.let(
              :lkr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          LRD =
            T.let(
              :lrd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          LSL =
            T.let(
              :lsl,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MAD =
            T.let(
              :mad,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MDL =
            T.let(
              :mdl,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MGA =
            T.let(
              :mga,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MKD =
            T.let(
              :mkd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MMK =
            T.let(
              :mmk,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MNT =
            T.let(
              :mnt,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MOP =
            T.let(
              :mop,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MRO =
            T.let(
              :mro,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MVR =
            T.let(
              :mvr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MWK =
            T.let(
              :mwk,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MXN =
            T.let(
              :mxn,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MYR =
            T.let(
              :myr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          NAD =
            T.let(
              :nad,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          NGN =
            T.let(
              :ngn,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          NOK =
            T.let(
              :nok,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          NPR =
            T.let(
              :npr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          NZD =
            T.let(
              :nzd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          PGK =
            T.let(
              :pgk,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          PKR =
            T.let(
              :pkr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          PLN =
            T.let(
              :pln,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          QAR =
            T.let(
              :qar,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          RON =
            T.let(
              :ron,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          RSD =
            T.let(
              :rsd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          RUB =
            T.let(
              :rub,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          RWF =
            T.let(
              :rwf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SAR =
            T.let(
              :sar,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SBD =
            T.let(
              :sbd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SCR =
            T.let(
              :scr,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SEK =
            T.let(
              :sek,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SGD =
            T.let(
              :sgd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SLE =
            T.let(
              :sle,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SLL =
            T.let(
              :sll,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SOS =
            T.let(
              :sos,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          SZL =
            T.let(
              :szl,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          THB =
            T.let(
              :thb,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          TJS =
            T.let(
              :tjs,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          TOP =
            T.let(
              :top,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          TRY =
            T.let(
              :try,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          TTD =
            T.let(
              :ttd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          TZS =
            T.let(
              :tzs,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          UAH =
            T.let(
              :uah,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          UZS =
            T.let(
              :uzs,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          VND =
            T.let(
              :vnd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          VUV =
            T.let(
              :vuv,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          WST =
            T.let(
              :wst,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          XAF =
            T.let(
              :xaf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          XCD =
            T.let(
              :xcd,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          YER =
            T.let(
              :yer,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          ZAR =
            T.let(
              :zar,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          ZMW =
            T.let(
              :zmw,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          CLP =
            T.let(
              :clp,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          DJF =
            T.let(
              :djf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          GNF =
            T.let(
              :gnf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          UGX =
            T.let(
              :ugx,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          PYG =
            T.let(
              :pyg,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          XOF =
            T.let(
              :xof,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )
          XPF =
            T.let(
              :xpf,
              Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::CustomerListResponse::BillingCurrency::TaggedSymbol
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
                Stigg::Models::V1::CustomerListResponse::CouponID::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                Stigg::Models::V1::CustomerListResponse::CouponID::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::Models::V1::CustomerListResponse::CouponID)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMPTY =
            T.let(
              :"",
              Stigg::Models::V1::CustomerListResponse::CouponID::TaggedSymbol
            )
        end

        class DefaultPaymentMethod < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod,
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
              Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type::TaggedSymbol
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
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type::OrSymbol
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
                  Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type::TaggedSymbol
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
                  Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARD =
              T.let(
                :CARD,
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type::TaggedSymbol
              )
            BANK =
              T.let(
                :BANK,
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type::TaggedSymbol
              )
            CASH_APP =
              T.let(
                :CASH_APP,
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::Type::TaggedSymbol
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
                Stigg::Models::V1::CustomerListResponse::Integration,
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
              Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
            )
          end
          attr_accessor :vendor_identifier

          # External billing or CRM integration link
          sig do
            params(
              id: String,
              synced_entity_id: T.nilable(String),
              vendor_identifier:
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::OrSymbol
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
                  Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
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
                  Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTH0 =
              T.let(
                :AUTH0,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            ZUORA =
              T.let(
                :ZUORA,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            HUBSPOT =
              T.let(
                :HUBSPOT,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            AWS_MARKETPLACE =
              T.let(
                :AWS_MARKETPLACE,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            SNOWFLAKE =
              T.let(
                :SNOWFLAKE,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            SALESFORCE =
              T.let(
                :SALESFORCE,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            BIG_QUERY =
              T.let(
                :BIG_QUERY,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            OPEN_FGA =
              T.let(
                :OPEN_FGA,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )
            APP_STORE =
              T.let(
                :APP_STORE,
                Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::Models::V1::CustomerListResponse::Integration::VendorIdentifier::TaggedSymbol
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
                Stigg::Models::V1::CustomerListResponse::Passthrough,
                Stigg::Internal::AnyHash
              )
            end

          # Stripe-specific billing fields for the customer.
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe
              )
            )
          end
          attr_reader :stripe

          sig do
            params(
              stripe:
                Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::OrHash
            ).void
          end
          attr_writer :stripe

          # Zuora-specific billing fields for the customer.
          sig do
            returns(
              T.nilable(
                Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora
              )
            )
          end
          attr_reader :zuora

          sig do
            params(
              zuora:
                Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::OrHash
            ).void
          end
          attr_writer :zuora

          # Vendor-specific billing passthrough fields.
          sig do
            params(
              stripe:
                Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::OrHash,
              zuora:
                Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::OrHash
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
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe,
                zuora:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora
              }
            )
          end
          def to_hash
          end

          class Stripe < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe,
                  Stigg::Internal::AnyHash
                )
              end

            # Physical address
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::BillingAddress
                )
              )
            end
            attr_reader :billing_address

            sig do
              params(
                billing_address:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::BillingAddress::OrHash
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

            sig { params(invoice_custom_fields: T::Hash[Symbol, String]).void }
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
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::ShippingAddress
                )
              )
            end
            attr_reader :shipping_address

            sig do
              params(
                shipping_address:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::ShippingAddress::OrHash
              ).void
            end
            attr_writer :shipping_address

            # Tax IDs
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::TaxID
                  ]
                )
              )
            end
            attr_reader :tax_ids

            sig do
              params(
                tax_ids:
                  T::Array[
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::TaxID::OrHash
                  ]
              ).void
            end
            attr_writer :tax_ids

            # Stripe-specific billing fields for the customer.
            sig do
              params(
                billing_address:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::BillingAddress::OrHash,
                customer_name: String,
                invoice_custom_fields: T::Hash[Symbol, String],
                metadata: T::Hash[Symbol, String],
                payment_method_id: String,
                shipping_address:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::ShippingAddress::OrHash,
                tax_ids:
                  T::Array[
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::TaxID::OrHash
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
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::BillingAddress,
                  customer_name: String,
                  invoice_custom_fields: T::Hash[Symbol, String],
                  metadata: T::Hash[Symbol, String],
                  payment_method_id: String,
                  shipping_address:
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::ShippingAddress,
                  tax_ids:
                    T::Array[
                      Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::TaxID
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
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::BillingAddress,
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
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::ShippingAddress,
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
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Stripe::TaxID,
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
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora,
                  Stigg::Internal::AnyHash
                )
              end

            # Physical address
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::BillingAddress
                )
              )
            end
            attr_reader :billing_address

            sig do
              params(
                billing_address:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::BillingAddress::OrHash
              ).void
            end
            attr_writer :billing_address

            # Customers selected currency
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::OrSymbol
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
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::BillingAddress::OrHash,
                currency:
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::OrSymbol,
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
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::BillingAddress,
                  currency:
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol,
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
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::BillingAddress,
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
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::CustomerListResponse::Passthrough::Zuora::Currency::TaggedSymbol
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
