# typed: strong

module Stigg
  module Models
    module V1
      module Customers
        class PaymentMethodAttachParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Customers::PaymentMethodAttachParams,
                Stigg::Internal::AnyHash
              )
            end

          # Integration details
          sig { returns(String) }
          attr_accessor :integration_id

          # Billing provider payment method id
          sig { returns(String) }
          attr_accessor :payment_method_id

          # The vendor identifier of integration
          sig do
            returns(
              Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::OrSymbol
            )
          end
          attr_accessor :vendor_identifier

          # Customers selected currency
          sig do
            returns(
              T.nilable(
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::OrSymbol
              )
            )
          end
          attr_accessor :billing_currency

          sig do
            params(
              integration_id: String,
              payment_method_id: String,
              vendor_identifier:
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::OrSymbol,
              billing_currency:
                T.nilable(
                  Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::OrSymbol
                ),
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Integration details
            integration_id:,
            # Billing provider payment method id
            payment_method_id:,
            # The vendor identifier of integration
            vendor_identifier:,
            # Customers selected currency
            billing_currency: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                integration_id: String,
                payment_method_id: String,
                vendor_identifier:
                  Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::OrSymbol,
                billing_currency:
                  T.nilable(
                    Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::OrSymbol
                  ),
                request_options: Stigg::RequestOptions
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
                  Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTH0 =
              T.let(
                :AUTH0,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            ZUORA =
              T.let(
                :ZUORA,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            STRIPE =
              T.let(
                :STRIPE,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            HUBSPOT =
              T.let(
                :HUBSPOT,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            AWS_MARKETPLACE =
              T.let(
                :AWS_MARKETPLACE,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            SNOWFLAKE =
              T.let(
                :SNOWFLAKE,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            SALESFORCE =
              T.let(
                :SALESFORCE,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            BIG_QUERY =
              T.let(
                :BIG_QUERY,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            OPEN_FGA =
              T.let(
                :OPEN_FGA,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )
            APP_STORE =
              T.let(
                :APP_STORE,
                Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Customers::PaymentMethodAttachParams::VendorIdentifier::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Customers selected currency
          module BillingCurrency
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            ANG =
              T.let(
                :ang,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            AWG =
              T.let(
                :awg,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            AZN =
              T.let(
                :azn,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BBD =
              T.let(
                :bbd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BDT =
              T.let(
                :bdt,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BIF =
              T.let(
                :bif,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BMD =
              T.let(
                :bmd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BND =
              T.let(
                :bnd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BWP =
              T.let(
                :bwp,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BYN =
              T.let(
                :byn,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BZD =
              T.let(
                :bzd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            CDF =
              T.let(
                :cdf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            CNY =
              T.let(
                :cny,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            FJD =
              T.let(
                :fjd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            GEL =
              T.let(
                :gel,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            GIP =
              T.let(
                :gip,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            HRK =
              T.let(
                :hrk,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            HTG =
              T.let(
                :htg,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            ISK =
              T.let(
                :isk,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            KGS =
              T.let(
                :kgs,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            KMF =
              T.let(
                :kmf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            KYD =
              T.let(
                :kyd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            KZT =
              T.let(
                :kzt,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            LBP =
              T.let(
                :lbp,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            LRD =
              T.let(
                :lrd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            LSL =
              T.let(
                :lsl,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MMK =
              T.let(
                :mmk,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MRO =
              T.let(
                :mro,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MVR =
              T.let(
                :mvr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MWK =
              T.let(
                :mwk,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            NPR =
              T.let(
                :npr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            PGK =
              T.let(
                :pgk,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SBD =
              T.let(
                :sbd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SCR =
              T.let(
                :scr,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SLE =
              T.let(
                :sle,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SLL =
              T.let(
                :sll,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SOS =
              T.let(
                :sos,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            SZL =
              T.let(
                :szl,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            TJS =
              T.let(
                :tjs,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            TOP =
              T.let(
                :top,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            UAH =
              T.let(
                :uah,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            VUV =
              T.let(
                :vuv,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            WST =
              T.let(
                :wst,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            XAF =
              T.let(
                :xaf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            YER =
              T.let(
                :yer,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            ZMW =
              T.let(
                :zmw,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            DJF =
              T.let(
                :djf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            GNF =
              T.let(
                :gnf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            UGX =
              T.let(
                :ugx,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )
            XPF =
              T.let(
                :xpf,
                Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Customers::PaymentMethodAttachParams::BillingCurrency::TaggedSymbol
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
