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
        sig { returns(T.nilable(String)) }
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

        # Additional metadata
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # The name of the customer
        sig { returns(T.nilable(String)) }
        attr_accessor :name

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
            coupon_id: T.nilable(String),
            default_payment_method:
              T.nilable(
                Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod::OrHash
              ),
            email: T.nilable(String),
            integrations:
              T::Array[
                Stigg::Models::V1::CustomerListResponse::Integration::OrHash
              ],
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String)
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
          # Additional metadata
          metadata: nil,
          # The name of the customer
          name: nil
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
              coupon_id: T.nilable(String),
              default_payment_method:
                T.nilable(
                  Stigg::Models::V1::CustomerListResponse::DefaultPaymentMethod
                ),
              email: T.nilable(String),
              integrations:
                T::Array[Stigg::Models::V1::CustomerListResponse::Integration],
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String)
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
      end
    end
  end
end
