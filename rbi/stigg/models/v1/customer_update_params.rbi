# typed: strong

module Stigg
  module Models
    module V1
      class CustomerUpdateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CustomerUpdateParams, Stigg::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # The billing currency of the customer
        sig do
          returns(
            T.nilable(
              Stigg::V1::CustomerUpdateParams::BillingCurrency::OrSymbol
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

        # The email of the customer
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # List of integrations
        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::CustomerUpdateParams::Integration])
          )
        end
        attr_reader :integrations

        sig do
          params(
            integrations:
              T::Array[Stigg::V1::CustomerUpdateParams::Integration::OrHash]
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

        sig do
          params(
            id: String,
            billing_currency:
              T.nilable(
                Stigg::V1::CustomerUpdateParams::BillingCurrency::OrSymbol
              ),
            billing_id: T.nilable(String),
            coupon_id: T.nilable(String),
            email: T.nilable(String),
            integrations:
              T::Array[Stigg::V1::CustomerUpdateParams::Integration::OrHash],
            metadata: T::Hash[Symbol, String],
            name: T.nilable(String),
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The billing currency of the customer
          billing_currency: nil,
          # The unique identifier for the entity in the billing provider
          billing_id: nil,
          # Customer level coupon
          coupon_id: nil,
          # The email of the customer
          email: nil,
          # List of integrations
          integrations: nil,
          # Additional metadata
          metadata: nil,
          # The name of the customer
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_currency:
                T.nilable(
                  Stigg::V1::CustomerUpdateParams::BillingCurrency::OrSymbol
                ),
              billing_id: T.nilable(String),
              coupon_id: T.nilable(String),
              email: T.nilable(String),
              integrations:
                T::Array[Stigg::V1::CustomerUpdateParams::Integration],
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              request_options: Stigg::RequestOptions
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
              T.all(Symbol, Stigg::V1::CustomerUpdateParams::BillingCurrency)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD =
            T.let(
              :usd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          AED =
            T.let(
              :aed,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          AMD =
            T.let(
              :amd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          ANG =
            T.let(
              :ang,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          AUD =
            T.let(
              :aud,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          AWG =
            T.let(
              :awg,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          AZN =
            T.let(
              :azn,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BAM =
            T.let(
              :bam,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BBD =
            T.let(
              :bbd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BDT =
            T.let(
              :bdt,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BGN =
            T.let(
              :bgn,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BIF =
            T.let(
              :bif,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BMD =
            T.let(
              :bmd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BND =
            T.let(
              :bnd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BSD =
            T.let(
              :bsd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BWP =
            T.let(
              :bwp,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BYN =
            T.let(
              :byn,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BZD =
            T.let(
              :bzd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          BRL =
            T.let(
              :brl,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          CAD =
            T.let(
              :cad,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          CDF =
            T.let(
              :cdf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          CHF =
            T.let(
              :chf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          CNY =
            T.let(
              :cny,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          CZK =
            T.let(
              :czk,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          DKK =
            T.let(
              :dkk,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          DOP =
            T.let(
              :dop,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          DZD =
            T.let(
              :dzd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          EGP =
            T.let(
              :egp,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          ETB =
            T.let(
              :etb,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          EUR =
            T.let(
              :eur,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          FJD =
            T.let(
              :fjd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          GBP =
            T.let(
              :gbp,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          GEL =
            T.let(
              :gel,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          GIP =
            T.let(
              :gip,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          GMD =
            T.let(
              :gmd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          GYD =
            T.let(
              :gyd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          HKD =
            T.let(
              :hkd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          HRK =
            T.let(
              :hrk,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          HTG =
            T.let(
              :htg,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          IDR =
            T.let(
              :idr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          ILS =
            T.let(
              :ils,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          INR =
            T.let(
              :inr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          ISK =
            T.let(
              :isk,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          JMD =
            T.let(
              :jmd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          JPY =
            T.let(
              :jpy,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          KES =
            T.let(
              :kes,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          KGS =
            T.let(
              :kgs,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          KHR =
            T.let(
              :khr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          KMF =
            T.let(
              :kmf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          KRW =
            T.let(
              :krw,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          KYD =
            T.let(
              :kyd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          KZT =
            T.let(
              :kzt,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          LBP =
            T.let(
              :lbp,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          LKR =
            T.let(
              :lkr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          LRD =
            T.let(
              :lrd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          LSL =
            T.let(
              :lsl,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MAD =
            T.let(
              :mad,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MDL =
            T.let(
              :mdl,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MGA =
            T.let(
              :mga,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MKD =
            T.let(
              :mkd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MMK =
            T.let(
              :mmk,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MNT =
            T.let(
              :mnt,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MOP =
            T.let(
              :mop,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MRO =
            T.let(
              :mro,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MVR =
            T.let(
              :mvr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MWK =
            T.let(
              :mwk,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MXN =
            T.let(
              :mxn,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MYR =
            T.let(
              :myr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          NAD =
            T.let(
              :nad,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          NGN =
            T.let(
              :ngn,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          NOK =
            T.let(
              :nok,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          NPR =
            T.let(
              :npr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          NZD =
            T.let(
              :nzd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          PGK =
            T.let(
              :pgk,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          PHP =
            T.let(
              :php,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          PKR =
            T.let(
              :pkr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          PLN =
            T.let(
              :pln,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          QAR =
            T.let(
              :qar,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          RON =
            T.let(
              :ron,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          RSD =
            T.let(
              :rsd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          RUB =
            T.let(
              :rub,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          RWF =
            T.let(
              :rwf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SAR =
            T.let(
              :sar,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SBD =
            T.let(
              :sbd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SCR =
            T.let(
              :scr,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SEK =
            T.let(
              :sek,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SGD =
            T.let(
              :sgd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SLE =
            T.let(
              :sle,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SLL =
            T.let(
              :sll,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SOS =
            T.let(
              :sos,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          SZL =
            T.let(
              :szl,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          THB =
            T.let(
              :thb,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          TJS =
            T.let(
              :tjs,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          TOP =
            T.let(
              :top,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          TRY =
            T.let(
              :try,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          TTD =
            T.let(
              :ttd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          TZS =
            T.let(
              :tzs,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          UAH =
            T.let(
              :uah,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          UZS =
            T.let(
              :uzs,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          VND =
            T.let(
              :vnd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          VUV =
            T.let(
              :vuv,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          WST =
            T.let(
              :wst,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          XAF =
            T.let(
              :xaf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          XCD =
            T.let(
              :xcd,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          YER =
            T.let(
              :yer,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          ZAR =
            T.let(
              :zar,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          ZMW =
            T.let(
              :zmw,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          CLP =
            T.let(
              :clp,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          DJF =
            T.let(
              :djf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          GNF =
            T.let(
              :gnf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          UGX =
            T.let(
              :ugx,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          PYG =
            T.let(
              :pyg,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          XOF =
            T.let(
              :xof,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )
          XPF =
            T.let(
              :xpf,
              Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::CustomerUpdateParams::BillingCurrency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Integration < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::CustomerUpdateParams::Integration,
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
              Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::OrSymbol
            )
          end
          attr_accessor :vendor_identifier

          # External billing or CRM integration link
          sig do
            params(
              id: String,
              synced_entity_id: T.nilable(String),
              vendor_identifier:
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::OrSymbol
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
                  Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::OrSymbol
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
                  Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTH0 =
              T.let(
                :AUTH0,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            ZUORA =
              T.let(
                :ZUORA,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            HUBSPOT =
              T.let(
                :HUBSPOT,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            AWS_MARKETPLACE =
              T.let(
                :AWS_MARKETPLACE,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            SNOWFLAKE =
              T.let(
                :SNOWFLAKE,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            SALESFORCE =
              T.let(
                :SALESFORCE,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            BIG_QUERY =
              T.let(
                :BIG_QUERY,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            OPEN_FGA =
              T.let(
                :OPEN_FGA,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )
            APP_STORE =
              T.let(
                :APP_STORE,
                Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::CustomerUpdateParams::Integration::VendorIdentifier::TaggedSymbol
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
