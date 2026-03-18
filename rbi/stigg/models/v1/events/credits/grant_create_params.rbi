# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Credits
          class GrantCreateParams < Stigg::Internal::Type::BaseModel
            extend Stigg::Internal::Type::RequestParameters::Converter
            include Stigg::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::Credits::GrantCreateParams,
                  Stigg::Internal::AnyHash
                )
              end

            # The credit amount to grant
            sig { returns(Float) }
            attr_accessor :amount

            # The credit currency ID (required)
            sig { returns(String) }
            attr_accessor :currency_id

            # The customer ID to grant credits to (required)
            sig { returns(String) }
            attr_accessor :customer_id

            # The display name for the credit grant
            sig { returns(String) }
            attr_accessor :display_name

            # The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            sig do
              returns(
                Stigg::V1::Events::Credits::GrantCreateParams::GrantType::OrSymbol
              )
            end
            attr_accessor :grant_type

            # Whether to wait for payment confirmation before returning (default: true)
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :await_payment_confirmation

            sig { params(await_payment_confirmation: T::Boolean).void }
            attr_writer :await_payment_confirmation

            # Billing information for the credit grant
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation
                )
              )
            end
            attr_reader :billing_information

            sig do
              params(
                billing_information:
                  Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::OrHash
              ).void
            end
            attr_writer :billing_information

            # An optional comment on the credit grant
            sig { returns(T.nilable(String)) }
            attr_reader :comment

            sig { params(comment: String).void }
            attr_writer :comment

            # The monetary cost of the credit grant
            sig do
              returns(
                T.nilable(Stigg::V1::Events::Credits::GrantCreateParams::Cost)
              )
            end
            attr_reader :cost

            sig do
              params(
                cost:
                  Stigg::V1::Events::Credits::GrantCreateParams::Cost::OrHash
              ).void
            end
            attr_writer :cost

            # The date when the credit grant becomes effective
            sig { returns(T.nilable(Time)) }
            attr_reader :effective_at

            sig { params(effective_at: Time).void }
            attr_writer :effective_at

            # The date when the credit grant expires
            sig { returns(T.nilable(Time)) }
            attr_reader :expire_at

            sig { params(expire_at: Time).void }
            attr_writer :expire_at

            # Additional metadata for the credit grant
            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, String]).void }
            attr_writer :metadata

            # The payment collection method (CHARGE, INVOICE, NONE)
            sig do
              returns(
                T.nilable(
                  Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::OrSymbol
                )
              )
            end
            attr_reader :payment_collection_method

            sig do
              params(
                payment_collection_method:
                  Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::OrSymbol
              ).void
            end
            attr_writer :payment_collection_method

            # The priority of the credit grant (lower number = higher priority)
            sig { returns(T.nilable(Integer)) }
            attr_reader :priority

            sig { params(priority: Integer).void }
            attr_writer :priority

            # The resource ID to scope the grant to
            sig { returns(T.nilable(String)) }
            attr_reader :resource_id

            sig { params(resource_id: String).void }
            attr_writer :resource_id

            sig do
              params(
                amount: Float,
                currency_id: String,
                customer_id: String,
                display_name: String,
                grant_type:
                  Stigg::V1::Events::Credits::GrantCreateParams::GrantType::OrSymbol,
                await_payment_confirmation: T::Boolean,
                billing_information:
                  Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::OrHash,
                comment: String,
                cost:
                  Stigg::V1::Events::Credits::GrantCreateParams::Cost::OrHash,
                effective_at: Time,
                expire_at: Time,
                metadata: T::Hash[Symbol, String],
                payment_collection_method:
                  Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::OrSymbol,
                priority: Integer,
                resource_id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The credit amount to grant
              amount:,
              # The credit currency ID (required)
              currency_id:,
              # The customer ID to grant credits to (required)
              customer_id:,
              # The display name for the credit grant
              display_name:,
              # The type of credit grant (PAID, PROMOTIONAL, RECURRING)
              grant_type:,
              # Whether to wait for payment confirmation before returning (default: true)
              await_payment_confirmation: nil,
              # Billing information for the credit grant
              billing_information: nil,
              # An optional comment on the credit grant
              comment: nil,
              # The monetary cost of the credit grant
              cost: nil,
              # The date when the credit grant becomes effective
              effective_at: nil,
              # The date when the credit grant expires
              expire_at: nil,
              # Additional metadata for the credit grant
              metadata: nil,
              # The payment collection method (CHARGE, INVOICE, NONE)
              payment_collection_method: nil,
              # The priority of the credit grant (lower number = higher priority)
              priority: nil,
              # The resource ID to scope the grant to
              resource_id: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency_id: String,
                  customer_id: String,
                  display_name: String,
                  grant_type:
                    Stigg::V1::Events::Credits::GrantCreateParams::GrantType::OrSymbol,
                  await_payment_confirmation: T::Boolean,
                  billing_information:
                    Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation,
                  comment: String,
                  cost: Stigg::V1::Events::Credits::GrantCreateParams::Cost,
                  effective_at: Time,
                  expire_at: Time,
                  metadata: T::Hash[Symbol, String],
                  payment_collection_method:
                    Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::OrSymbol,
                  priority: Integer,
                  resource_id: String,
                  request_options: Stigg::RequestOptions
                }
              )
            end
            def to_hash
            end

            # The type of credit grant (PAID, PROMOTIONAL, RECURRING)
            module GrantType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::Credits::GrantCreateParams::GrantType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PAID =
                T.let(
                  :PAID,
                  Stigg::V1::Events::Credits::GrantCreateParams::GrantType::TaggedSymbol
                )
              PROMOTIONAL =
                T.let(
                  :PROMOTIONAL,
                  Stigg::V1::Events::Credits::GrantCreateParams::GrantType::TaggedSymbol
                )
              RECURRING =
                T.let(
                  :RECURRING,
                  Stigg::V1::Events::Credits::GrantCreateParams::GrantType::TaggedSymbol
                )
              OVERDRAFT =
                T.let(
                  :OVERDRAFT,
                  Stigg::V1::Events::Credits::GrantCreateParams::GrantType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::Credits::GrantCreateParams::GrantType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class BillingInformation < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation,
                    Stigg::Internal::AnyHash
                  )
                end

              # The billing address
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress
                  )
                )
              end
              attr_reader :billing_address

              sig do
                params(
                  billing_address:
                    Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress::OrHash
                ).void
              end
              attr_writer :billing_address

              # Days until the invoice is due
              sig { returns(T.nilable(Float)) }
              attr_reader :invoice_days_until_due

              sig { params(invoice_days_until_due: Float).void }
              attr_writer :invoice_days_until_due

              # Whether the invoice is already paid
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_invoice_paid

              sig { params(is_invoice_paid: T::Boolean).void }
              attr_writer :is_invoice_paid

              # Billing information for the credit grant
              sig do
                params(
                  billing_address:
                    Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress::OrHash,
                  invoice_days_until_due: Float,
                  is_invoice_paid: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(
                # The billing address
                billing_address: nil,
                # Days until the invoice is due
                invoice_days_until_due: nil,
                # Whether the invoice is already paid
                is_invoice_paid: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_address:
                      Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress,
                    invoice_days_until_due: Float,
                    is_invoice_paid: T::Boolean
                  }
                )
              end
              def to_hash
              end

              class BillingAddress < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::V1::Events::Credits::GrantCreateParams::BillingInformation::BillingAddress,
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

                # The billing address
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
            end

            class Cost < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # ISO 4217 currency code
              sig do
                returns(
                  Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::OrSymbol
                )
              end
              attr_accessor :currency

              # The monetary cost of the credit grant
              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The price amount
                amount:,
                # ISO 4217 currency code
                currency:
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    currency:
                      Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # ISO 4217 currency code
              module Currency
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::Events::Credits::GrantCreateParams::Cost::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The payment collection method (CHARGE, INVOICE, NONE)
            module PaymentCollectionMethod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARGE =
                T.let(
                  :CHARGE,
                  Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::TaggedSymbol
                )
              INVOICE =
                T.let(
                  :INVOICE,
                  Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::TaggedSymbol
                )
              NONE =
                T.let(
                  :NONE,
                  Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::Credits::GrantCreateParams::PaymentCollectionMethod::TaggedSymbol
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
