# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionCreateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::SubscriptionCreateParams, Stigg::Internal::AnyHash)
          end

        # Customer ID to provision the subscription for
        sig { returns(String) }
        attr_accessor :customer_id

        # Plan ID to provision
        sig { returns(String) }
        attr_accessor :plan_id

        # Unique identifier for the subscription
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SubscriptionCreateParams::Addon])
          )
        end
        attr_reader :addons

        sig do
          params(
            addons: T::Array[Stigg::V1::SubscriptionCreateParams::Addon::OrHash]
          ).void
        end
        attr_writer :addons

        # Coupon configuration
        sig do
          returns(T.nilable(Stigg::V1::SubscriptionCreateParams::AppliedCoupon))
        end
        attr_reader :applied_coupon

        sig do
          params(
            applied_coupon:
              Stigg::V1::SubscriptionCreateParams::AppliedCoupon::OrHash
          ).void
        end
        attr_writer :applied_coupon

        # Whether to wait for payment confirmation before returning the subscription
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :await_payment_confirmation

        sig { params(await_payment_confirmation: T::Boolean).void }
        attr_writer :await_payment_confirmation

        # The ISO 3166-1 alpha-2 country code for billing
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_country_code

        # External billing system identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_id

        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionCreateParams::BillingInformation)
          )
        end
        attr_reader :billing_information

        sig do
          params(
            billing_information:
              Stigg::V1::SubscriptionCreateParams::BillingInformation::OrHash
          ).void
        end
        attr_writer :billing_information

        # Billing period (MONTHLY or ANNUALLY)
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol
            )
          )
        end
        attr_reader :billing_period

        sig do
          params(
            billing_period:
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol
          ).void
        end
        attr_writer :billing_period

        sig { returns(T.nilable(Stigg::V1::SubscriptionCreateParams::Budget)) }
        attr_reader :budget

        sig do
          params(
            budget:
              T.nilable(Stigg::V1::SubscriptionCreateParams::Budget::OrHash)
          ).void
        end
        attr_writer :budget

        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SubscriptionCreateParams::Charge])
          )
        end
        attr_reader :charges

        sig do
          params(
            charges:
              T::Array[Stigg::V1::SubscriptionCreateParams::Charge::OrHash]
          ).void
        end
        attr_writer :charges

        # Checkout page configuration for payment collection
        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionCreateParams::CheckoutOptions)
          )
        end
        attr_reader :checkout_options

        sig do
          params(
            checkout_options:
              Stigg::V1::SubscriptionCreateParams::CheckoutOptions::OrHash
          ).void
        end
        attr_writer :checkout_options

        # Additional metadata for the subscription
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          returns(T.nilable(Stigg::V1::SubscriptionCreateParams::MinimumSpend))
        end
        attr_reader :minimum_spend

        sig do
          params(
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::MinimumSpend::OrHash
              )
          ).void
        end
        attr_writer :minimum_spend

        # Optional paying customer ID for split billing scenarios
        sig { returns(T.nilable(String)) }
        attr_accessor :paying_customer_id

        # How payments should be collected for this subscription
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::OrSymbol
            )
          )
        end
        attr_reader :payment_collection_method

        sig do
          params(
            payment_collection_method:
              Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::OrSymbol
          ).void
        end
        attr_writer :payment_collection_method

        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::SubscriptionCreateParams::PriceOverride]
            )
          )
        end
        attr_reader :price_overrides

        sig do
          params(
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionCreateParams::PriceOverride::OrHash
              ]
          ).void
        end
        attr_writer :price_overrides

        # Optional resource ID for multi-instance subscriptions
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # Salesforce ID
        sig { returns(T.nilable(String)) }
        attr_accessor :salesforce_id

        # Strategy for scheduling subscription changes
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::OrSymbol
            )
          )
        end
        attr_reader :schedule_strategy

        sig do
          params(
            schedule_strategy:
              Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::OrSymbol
          ).void
        end
        attr_writer :schedule_strategy

        # Subscription start date
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        sig do
          returns(
            T.nilable(
              T::Array[
                Stigg::V1::SubscriptionCreateParams::SubscriptionEntitlement
              ]
            )
          )
        end
        attr_reader :subscription_entitlements

        sig do
          params(
            subscription_entitlements:
              T::Array[
                Stigg::V1::SubscriptionCreateParams::SubscriptionEntitlement::OrHash
              ]
          ).void
        end
        attr_writer :subscription_entitlements

        # Trial period override settings
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration
            )
          )
        end
        attr_reader :trial_override_configuration

        sig do
          params(
            trial_override_configuration:
              Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::OrHash
          ).void
        end
        attr_writer :trial_override_configuration

        sig { returns(T.nilable(Float)) }
        attr_reader :unit_quantity

        sig { params(unit_quantity: Float).void }
        attr_writer :unit_quantity

        sig do
          params(
            customer_id: String,
            plan_id: String,
            id: String,
            addons:
              T::Array[Stigg::V1::SubscriptionCreateParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionCreateParams::AppliedCoupon::OrHash,
            await_payment_confirmation: T::Boolean,
            billing_country_code: T.nilable(String),
            billing_id: T.nilable(String),
            billing_information:
              Stigg::V1::SubscriptionCreateParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol,
            budget:
              T.nilable(Stigg::V1::SubscriptionCreateParams::Budget::OrHash),
            charges:
              T::Array[Stigg::V1::SubscriptionCreateParams::Charge::OrHash],
            checkout_options:
              Stigg::V1::SubscriptionCreateParams::CheckoutOptions::OrHash,
            metadata: T::Hash[Symbol, String],
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::MinimumSpend::OrHash
              ),
            paying_customer_id: T.nilable(String),
            payment_collection_method:
              Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::OrSymbol,
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionCreateParams::PriceOverride::OrHash
              ],
            resource_id: T.nilable(String),
            salesforce_id: T.nilable(String),
            schedule_strategy:
              Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::OrSymbol,
            start_date: Time,
            subscription_entitlements:
              T::Array[
                Stigg::V1::SubscriptionCreateParams::SubscriptionEntitlement::OrHash
              ],
            trial_override_configuration:
              Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::OrHash,
            unit_quantity: Float,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer ID to provision the subscription for
          customer_id:,
          # Plan ID to provision
          plan_id:,
          # Unique identifier for the subscription
          id: nil,
          addons: nil,
          # Coupon configuration
          applied_coupon: nil,
          # Whether to wait for payment confirmation before returning the subscription
          await_payment_confirmation: nil,
          # The ISO 3166-1 alpha-2 country code for billing
          billing_country_code: nil,
          # External billing system identifier
          billing_id: nil,
          billing_information: nil,
          # Billing period (MONTHLY or ANNUALLY)
          billing_period: nil,
          budget: nil,
          charges: nil,
          # Checkout page configuration for payment collection
          checkout_options: nil,
          # Additional metadata for the subscription
          metadata: nil,
          minimum_spend: nil,
          # Optional paying customer ID for split billing scenarios
          paying_customer_id: nil,
          # How payments should be collected for this subscription
          payment_collection_method: nil,
          price_overrides: nil,
          # Optional resource ID for multi-instance subscriptions
          resource_id: nil,
          # Salesforce ID
          salesforce_id: nil,
          # Strategy for scheduling subscription changes
          schedule_strategy: nil,
          # Subscription start date
          start_date: nil,
          subscription_entitlements: nil,
          # Trial period override settings
          trial_override_configuration: nil,
          unit_quantity: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              plan_id: String,
              id: String,
              addons: T::Array[Stigg::V1::SubscriptionCreateParams::Addon],
              applied_coupon:
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon,
              await_payment_confirmation: T::Boolean,
              billing_country_code: T.nilable(String),
              billing_id: T.nilable(String),
              billing_information:
                Stigg::V1::SubscriptionCreateParams::BillingInformation,
              billing_period:
                Stigg::V1::SubscriptionCreateParams::BillingPeriod::OrSymbol,
              budget: T.nilable(Stigg::V1::SubscriptionCreateParams::Budget),
              charges: T::Array[Stigg::V1::SubscriptionCreateParams::Charge],
              checkout_options:
                Stigg::V1::SubscriptionCreateParams::CheckoutOptions,
              metadata: T::Hash[Symbol, String],
              minimum_spend:
                T.nilable(Stigg::V1::SubscriptionCreateParams::MinimumSpend),
              paying_customer_id: T.nilable(String),
              payment_collection_method:
                Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::OrSymbol,
              price_overrides:
                T::Array[Stigg::V1::SubscriptionCreateParams::PriceOverride],
              resource_id: T.nilable(String),
              salesforce_id: T.nilable(String),
              schedule_strategy:
                Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::OrSymbol,
              start_date: Time,
              subscription_entitlements:
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::SubscriptionEntitlement
                ],
              trial_override_configuration:
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration,
              unit_quantity: Float,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Addon < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::Addon,
                Stigg::Internal::AnyHash
              )
            end

          # Addon identifier
          sig { returns(String) }
          attr_accessor :addon_id

          # Number of addon units
          sig { returns(T.nilable(Integer)) }
          attr_reader :quantity

          sig { params(quantity: Integer).void }
          attr_writer :quantity

          sig do
            params(addon_id: String, quantity: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Addon identifier
            addon_id:,
            # Number of addon units
            quantity: nil
          )
          end

          sig { override.returns({ addon_id: String, quantity: Integer }) }
          def to_hash
          end
        end

        class AppliedCoupon < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon,
                Stigg::Internal::AnyHash
              )
            end

          # Billing provider coupon ID
          sig { returns(T.nilable(String)) }
          attr_reader :billing_coupon_id

          sig { params(billing_coupon_id: String).void }
          attr_writer :billing_coupon_id

          # Coupon timing configuration
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Configuration
              )
            )
          end
          attr_reader :configuration

          sig do
            params(
              configuration:
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Configuration::OrHash
            ).void
          end
          attr_writer :configuration

          # Stigg coupon ID
          sig { returns(T.nilable(String)) }
          attr_reader :coupon_id

          sig { params(coupon_id: String).void }
          attr_writer :coupon_id

          # Ad-hoc discount configuration
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount
              )
            )
          end
          attr_reader :discount

          sig do
            params(
              discount:
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::OrHash
            ).void
          end
          attr_writer :discount

          # Promotion code to apply
          sig { returns(T.nilable(String)) }
          attr_reader :promotion_code

          sig { params(promotion_code: String).void }
          attr_writer :promotion_code

          # Coupon configuration
          sig do
            params(
              billing_coupon_id: String,
              configuration:
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Configuration::OrHash,
              coupon_id: String,
              discount:
                Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::OrHash,
              promotion_code: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Billing provider coupon ID
            billing_coupon_id: nil,
            # Coupon timing configuration
            configuration: nil,
            # Stigg coupon ID
            coupon_id: nil,
            # Ad-hoc discount configuration
            discount: nil,
            # Promotion code to apply
            promotion_code: nil
          )
          end

          sig do
            override.returns(
              {
                billing_coupon_id: String,
                configuration:
                  Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Configuration,
                coupon_id: String,
                discount:
                  Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount,
                promotion_code: String
              }
            )
          end
          def to_hash
          end

          class Configuration < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Configuration,
                  Stigg::Internal::AnyHash
                )
              end

            # Coupon start date
            sig { returns(T.nilable(Time)) }
            attr_reader :start_date

            sig { params(start_date: Time).void }
            attr_writer :start_date

            # Coupon timing configuration
            sig { params(start_date: Time).returns(T.attached_class) }
            def self.new(
              # Coupon start date
              start_date: nil
            )
            end

            sig { override.returns({ start_date: Time }) }
            def to_hash
            end
          end

          class Discount < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount,
                  Stigg::Internal::AnyHash
                )
              end

            # Fixed amounts off by currency
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff
                  ]
                )
              )
            end
            attr_accessor :amounts_off

            # Ad-hoc discount
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Duration in months
            sig { returns(T.nilable(Float)) }
            attr_reader :duration_in_months

            sig { params(duration_in_months: Float).void }
            attr_writer :duration_in_months

            # Discount name
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # Percentage discount
            sig { returns(T.nilable(Float)) }
            attr_reader :percent_off

            sig { params(percent_off: Float).void }
            attr_writer :percent_off

            # Ad-hoc discount configuration
            sig do
              params(
                amounts_off:
                  T.nilable(
                    T::Array[
                      Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::OrHash
                    ]
                  ),
                description: String,
                duration_in_months: Float,
                name: String,
                percent_off: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Fixed amounts off by currency
              amounts_off: nil,
              # Ad-hoc discount
              description: nil,
              # Duration in months
              duration_in_months: nil,
              # Discount name
              name: nil,
              # Percentage discount
              percent_off: nil
            )
            end

            sig do
              override.returns(
                {
                  amounts_off:
                    T.nilable(
                      T::Array[
                        Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff
                      ]
                    ),
                  description: String,
                  duration_in_months: Float,
                  name: String,
                  percent_off: Float
                }
              )
            end
            def to_hash
            end

            class AmountsOff < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # The price currency
              sig do
                returns(
                  Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                )
              end
              attr_accessor :currency

              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionCreateParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class BillingInformation < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::BillingInformation,
                Stigg::Internal::AnyHash
              )
            end

          # Billing address for the subscription
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::BillingInformation::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                Stigg::V1::SubscriptionCreateParams::BillingInformation::BillingAddress::OrHash
            ).void
          end
          attr_writer :billing_address

          # Stripe Connect account to charge on behalf of
          sig { returns(T.nilable(String)) }
          attr_accessor :charge_on_behalf_of_account

          # Billing integration identifier
          sig { returns(T.nilable(String)) }
          attr_accessor :integration_id

          # Number of days until invoice is due
          sig { returns(T.nilable(Float)) }
          attr_reader :invoice_days_until_due

          sig { params(invoice_days_until_due: Float).void }
          attr_writer :invoice_days_until_due

          # Whether the subscription is backdated
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_backdated

          sig { params(is_backdated: T::Boolean).void }
          attr_writer :is_backdated

          # Whether the invoice is marked as paid
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_invoice_paid

          sig { params(is_invoice_paid: T::Boolean).void }
          attr_writer :is_invoice_paid

          # Additional metadata for the subscription
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, String]).void }
          attr_writer :metadata

          # How to handle proration for billing changes
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::OrSymbol
              )
            )
          end
          attr_reader :proration_behavior

          sig do
            params(
              proration_behavior:
                Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::OrSymbol
            ).void
          end
          attr_writer :proration_behavior

          # Customer tax identification numbers
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::TaxID
                ]
              )
            )
          end
          attr_reader :tax_ids

          sig do
            params(
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::TaxID::OrHash
                ]
            ).void
          end
          attr_writer :tax_ids

          # Tax percentage (0-100)
          sig { returns(T.nilable(Float)) }
          attr_reader :tax_percentage

          sig { params(tax_percentage: Float).void }
          attr_writer :tax_percentage

          # Tax rate identifiers to apply
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :tax_rate_ids

          sig { params(tax_rate_ids: T::Array[String]).void }
          attr_writer :tax_rate_ids

          sig do
            params(
              billing_address:
                Stigg::V1::SubscriptionCreateParams::BillingInformation::BillingAddress::OrHash,
              charge_on_behalf_of_account: T.nilable(String),
              integration_id: T.nilable(String),
              invoice_days_until_due: Float,
              is_backdated: T::Boolean,
              is_invoice_paid: T::Boolean,
              metadata: T::Hash[Symbol, String],
              proration_behavior:
                Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::OrSymbol,
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::TaxID::OrHash
                ],
              tax_percentage: Float,
              tax_rate_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Billing address for the subscription
            billing_address: nil,
            # Stripe Connect account to charge on behalf of
            charge_on_behalf_of_account: nil,
            # Billing integration identifier
            integration_id: nil,
            # Number of days until invoice is due
            invoice_days_until_due: nil,
            # Whether the subscription is backdated
            is_backdated: nil,
            # Whether the invoice is marked as paid
            is_invoice_paid: nil,
            # Additional metadata for the subscription
            metadata: nil,
            # How to handle proration for billing changes
            proration_behavior: nil,
            # Customer tax identification numbers
            tax_ids: nil,
            # Tax percentage (0-100)
            tax_percentage: nil,
            # Tax rate identifiers to apply
            tax_rate_ids: nil
          )
          end

          sig do
            override.returns(
              {
                billing_address:
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::BillingAddress,
                charge_on_behalf_of_account: T.nilable(String),
                integration_id: T.nilable(String),
                invoice_days_until_due: Float,
                is_backdated: T::Boolean,
                is_invoice_paid: T::Boolean,
                metadata: T::Hash[Symbol, String],
                proration_behavior:
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::OrSymbol,
                tax_ids:
                  T::Array[
                    Stigg::V1::SubscriptionCreateParams::BillingInformation::TaxID
                  ],
                tax_percentage: Float,
                tax_rate_ids: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class BillingAddress < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::BillingAddress,
                  Stigg::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :city

            sig { params(city: String).void }
            attr_writer :city

            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { params(country: String).void }
            attr_writer :country

            sig { returns(T.nilable(String)) }
            attr_reader :line1

            sig { params(line1: String).void }
            attr_writer :line1

            sig { returns(T.nilable(String)) }
            attr_reader :line2

            sig { params(line2: String).void }
            attr_writer :line2

            sig { returns(T.nilable(String)) }
            attr_reader :postal_code

            sig { params(postal_code: String).void }
            attr_writer :postal_code

            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            # Billing address for the subscription
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
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
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

          # How to handle proration for billing changes
          module ProrationBehavior
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INVOICE_IMMEDIATELY =
              T.let(
                :INVOICE_IMMEDIATELY,
                Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            CREATE_PRORATIONS =
              T.let(
                :CREATE_PRORATIONS,
                Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::ProrationBehavior::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class TaxID < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::BillingInformation::TaxID,
                  Stigg::Internal::AnyHash
                )
              end

            # The type of tax exemption identifier, such as VAT.
            sig { returns(String) }
            attr_accessor :type

            # The actual tax identifier value
            sig { returns(String) }
            attr_accessor :value

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

        # Billing period (MONTHLY or ANNUALLY)
        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::SubscriptionCreateParams::BillingPeriod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::TaggedSymbol
            )
          ANNUALLY =
            T.let(
              :ANNUALLY,
              Stigg::V1::SubscriptionCreateParams::BillingPeriod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionCreateParams::BillingPeriod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Budget < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::Budget,
                Stigg::Internal::AnyHash
              )
            end

          # Whether the budget is a soft limit
          sig { returns(T::Boolean) }
          attr_accessor :has_soft_limit

          # Maximum spending limit
          sig { returns(Float) }
          attr_accessor :limit

          sig do
            params(has_soft_limit: T::Boolean, limit: Float).returns(
              T.attached_class
            )
          end
          def self.new(
            # Whether the budget is a soft limit
            has_soft_limit:,
            # Maximum spending limit
            limit:
          )
          end

          sig { override.returns({ has_soft_limit: T::Boolean, limit: Float }) }
          def to_hash
          end
        end

        class Charge < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::Charge,
                Stigg::Internal::AnyHash
              )
            end

          # Charge ID
          sig { returns(String) }
          attr_accessor :id

          # Charge quantity
          sig { returns(Float) }
          attr_accessor :quantity

          # Charge type
          sig do
            returns(Stigg::V1::SubscriptionCreateParams::Charge::Type::OrSymbol)
          end
          attr_accessor :type

          # Charge item
          sig do
            params(
              id: String,
              quantity: Float,
              type: Stigg::V1::SubscriptionCreateParams::Charge::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Charge ID
            id:,
            # Charge quantity
            quantity:,
            # Charge type
            type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                quantity: Float,
                type:
                  Stigg::V1::SubscriptionCreateParams::Charge::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Charge type
          module Type
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Stigg::V1::SubscriptionCreateParams::Charge::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEATURE =
              T.let(
                :FEATURE,
                Stigg::V1::SubscriptionCreateParams::Charge::Type::TaggedSymbol
              )
            CREDIT =
              T.let(
                :CREDIT,
                Stigg::V1::SubscriptionCreateParams::Charge::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::Charge::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CheckoutOptions < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::CheckoutOptions,
                Stigg::Internal::AnyHash
              )
            end

          # URL to redirect to if checkout is canceled
          sig { returns(String) }
          attr_accessor :cancel_url

          # URL to redirect to after successful checkout
          sig { returns(String) }
          attr_accessor :success_url

          # Allow promotional codes during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :allow_promo_codes

          sig { params(allow_promo_codes: T::Boolean).void }
          attr_writer :allow_promo_codes

          # Allow tax ID collection during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :allow_tax_id_collection

          sig { params(allow_tax_id_collection: T::Boolean).void }
          attr_writer :allow_tax_id_collection

          # Collect billing address during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :collect_billing_address

          sig { params(collect_billing_address: T::Boolean).void }
          attr_writer :collect_billing_address

          # Collect phone number during checkout
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :collect_phone_number

          sig { params(collect_phone_number: T::Boolean).void }
          attr_writer :collect_phone_number

          # Optional reference ID for the checkout session
          sig { returns(T.nilable(String)) }
          attr_accessor :reference_id

          # Checkout page configuration for payment collection
          sig do
            params(
              cancel_url: String,
              success_url: String,
              allow_promo_codes: T::Boolean,
              allow_tax_id_collection: T::Boolean,
              collect_billing_address: T::Boolean,
              collect_phone_number: T::Boolean,
              reference_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # URL to redirect to if checkout is canceled
            cancel_url:,
            # URL to redirect to after successful checkout
            success_url:,
            # Allow promotional codes during checkout
            allow_promo_codes: nil,
            # Allow tax ID collection during checkout
            allow_tax_id_collection: nil,
            # Collect billing address during checkout
            collect_billing_address: nil,
            # Collect phone number during checkout
            collect_phone_number: nil,
            # Optional reference ID for the checkout session
            reference_id: nil
          )
          end

          sig do
            override.returns(
              {
                cancel_url: String,
                success_url: String,
                allow_promo_codes: T::Boolean,
                allow_tax_id_collection: T::Boolean,
                collect_billing_address: T::Boolean,
                collect_phone_number: T::Boolean,
                reference_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class MinimumSpend < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::MinimumSpend,
                Stigg::Internal::AnyHash
              )
            end

          # Minimum spend amount
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum
              )
            )
          end
          attr_reader :minimum

          sig do
            params(
              minimum:
                T.nilable(
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::OrHash
                )
            ).void
          end
          attr_writer :minimum

          sig do
            params(
              minimum:
                T.nilable(
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Minimum spend amount
            minimum: nil
          )
          end

          sig do
            override.returns(
              {
                minimum:
                  T.nilable(
                    Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum
                  )
              }
            )
          end
          def to_hash
          end

          class Minimum < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum,
                  Stigg::Internal::AnyHash
                )
              end

            # The price amount
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The billing country code of the price
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_country_code

            # The price currency
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::OrSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::OrSymbol
              ).void
            end
            attr_writer :currency

            # Minimum spend amount
            sig do
              params(
                amount: Float,
                billing_country_code: T.nilable(String),
                currency:
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price amount
              amount: nil,
              # The billing country code of the price
              billing_country_code: nil,
              # The price currency
              currency: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  billing_country_code: T.nilable(String),
                  currency:
                    Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::OrSymbol
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
                    Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionCreateParams::MinimumSpend::Minimum::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        # How payments should be collected for this subscription
        module PaymentCollectionMethod
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGE =
            T.let(
              :CHARGE,
              Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionCreateParams::PaymentCollectionMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PriceOverride < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::PriceOverride,
                Stigg::Internal::AnyHash
              )
            end

          # Addon identifier for the price override
          sig { returns(T.nilable(String)) }
          attr_accessor :addon_id

          # Whether this is a base charge override
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :base_charge

          sig { params(base_charge: T::Boolean).void }
          attr_writer :base_charge

          # Block size for pricing
          sig { returns(T.nilable(Float)) }
          attr_reader :block_size

          sig { params(block_size: Float).void }
          attr_writer :block_size

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence::OrSymbol
              )
            )
          end
          attr_reader :credit_grant_cadence

          sig do
            params(
              credit_grant_cadence:
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence::OrSymbol
            ).void
          end
          attr_writer :credit_grant_cadence

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditRate
              )
            )
          end
          attr_reader :credit_rate

          sig do
            params(
              credit_rate:
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditRate::OrHash
            ).void
          end
          attr_writer :credit_rate

          # Feature identifier for the price override
          sig { returns(T.nilable(String)) }
          attr_accessor :feature_id

          # Override price amount
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::PriceOverride::Price
              )
            )
          end
          attr_reader :price

          sig do
            params(
              price:
                Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::OrHash
            ).void
          end
          attr_writer :price

          # Pricing tiers configuration
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier
                ]
              )
            )
          end
          attr_reader :tiers

          sig do
            params(
              tiers:
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::OrHash
                ]
            ).void
          end
          attr_writer :tiers

          sig do
            params(
              addon_id: T.nilable(String),
              base_charge: T::Boolean,
              block_size: Float,
              credit_grant_cadence:
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence::OrSymbol,
              credit_rate:
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditRate::OrHash,
              feature_id: T.nilable(String),
              price:
                Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::OrHash,
              tiers:
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Addon identifier for the price override
            addon_id: nil,
            # Whether this is a base charge override
            base_charge: nil,
            # Block size for pricing
            block_size: nil,
            credit_grant_cadence: nil,
            credit_rate: nil,
            # Feature identifier for the price override
            feature_id: nil,
            # Override price amount
            price: nil,
            # Pricing tiers configuration
            tiers: nil
          )
          end

          sig do
            override.returns(
              {
                addon_id: T.nilable(String),
                base_charge: T::Boolean,
                block_size: Float,
                credit_grant_cadence:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence::OrSymbol,
                credit_rate:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditRate,
                feature_id: T.nilable(String),
                price:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price,
                tiers:
                  T::Array[
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          module CreditGrantCadence
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BEGINNING_OF_BILLING_PERIOD =
              T.let(
                :BEGINNING_OF_BILLING_PERIOD,
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :MONTHLY,
                Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditGrantCadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class CreditRate < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::CreditRate,
                  Stigg::Internal::AnyHash
                )
              end

            # The credit rate amount
            sig { returns(Float) }
            attr_accessor :amount

            # The custom currency refId for the credit rate
            sig { returns(String) }
            attr_accessor :currency_id

            # A custom formula for calculating cost based on single event dimensions
            sig { returns(T.nilable(String)) }
            attr_accessor :cost_formula

            sig do
              params(
                amount: Float,
                currency_id: String,
                cost_formula: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The credit rate amount
              amount:,
              # The custom currency refId for the credit rate
              currency_id:,
              # A custom formula for calculating cost based on single event dimensions
              cost_formula: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  currency_id: String,
                  cost_formula: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class Price < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price,
                  Stigg::Internal::AnyHash
                )
              end

            # The price amount
            sig { returns(T.nilable(Float)) }
            attr_reader :amount

            sig { params(amount: Float).void }
            attr_writer :amount

            # The billing country code of the price
            sig { returns(T.nilable(String)) }
            attr_accessor :billing_country_code

            # The price currency
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::OrSymbol
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::OrSymbol
              ).void
            end
            attr_writer :currency

            # Override price amount
            sig do
              params(
                amount: Float,
                billing_country_code: T.nilable(String),
                currency:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The price amount
              amount: nil,
              # The billing country code of the price
              billing_country_code: nil,
              # The price currency
              currency: nil
            )
            end

            sig do
              override.returns(
                {
                  amount: Float,
                  billing_country_code: T.nilable(String),
                  currency:
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::OrSymbol
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
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USD =
                T.let(
                  :usd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AED =
                T.let(
                  :aed,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ALL =
                T.let(
                  :all,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AMD =
                T.let(
                  :amd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ANG =
                T.let(
                  :ang,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AUD =
                T.let(
                  :aud,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AWG =
                T.let(
                  :awg,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              AZN =
                T.let(
                  :azn,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BAM =
                T.let(
                  :bam,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BBD =
                T.let(
                  :bbd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BDT =
                T.let(
                  :bdt,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BGN =
                T.let(
                  :bgn,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BIF =
                T.let(
                  :bif,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BMD =
                T.let(
                  :bmd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BND =
                T.let(
                  :bnd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BSD =
                T.let(
                  :bsd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BWP =
                T.let(
                  :bwp,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BYN =
                T.let(
                  :byn,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BZD =
                T.let(
                  :bzd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              BRL =
                T.let(
                  :brl,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CAD =
                T.let(
                  :cad,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CDF =
                T.let(
                  :cdf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CHF =
                T.let(
                  :chf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CNY =
                T.let(
                  :cny,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CZK =
                T.let(
                  :czk,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DKK =
                T.let(
                  :dkk,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DOP =
                T.let(
                  :dop,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DZD =
                T.let(
                  :dzd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              EGP =
                T.let(
                  :egp,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ETB =
                T.let(
                  :etb,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              EUR =
                T.let(
                  :eur,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              FJD =
                T.let(
                  :fjd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GBP =
                T.let(
                  :gbp,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GEL =
                T.let(
                  :gel,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GIP =
                T.let(
                  :gip,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GMD =
                T.let(
                  :gmd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GYD =
                T.let(
                  :gyd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              HKD =
                T.let(
                  :hkd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              HRK =
                T.let(
                  :hrk,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              HTG =
                T.let(
                  :htg,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              IDR =
                T.let(
                  :idr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ILS =
                T.let(
                  :ils,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              INR =
                T.let(
                  :inr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ISK =
                T.let(
                  :isk,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              JMD =
                T.let(
                  :jmd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              JPY =
                T.let(
                  :jpy,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KES =
                T.let(
                  :kes,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KGS =
                T.let(
                  :kgs,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KHR =
                T.let(
                  :khr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KMF =
                T.let(
                  :kmf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KRW =
                T.let(
                  :krw,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KYD =
                T.let(
                  :kyd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              KZT =
                T.let(
                  :kzt,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LBP =
                T.let(
                  :lbp,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LKR =
                T.let(
                  :lkr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LRD =
                T.let(
                  :lrd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              LSL =
                T.let(
                  :lsl,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MAD =
                T.let(
                  :mad,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MDL =
                T.let(
                  :mdl,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MGA =
                T.let(
                  :mga,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MKD =
                T.let(
                  :mkd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MMK =
                T.let(
                  :mmk,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MNT =
                T.let(
                  :mnt,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MOP =
                T.let(
                  :mop,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MRO =
                T.let(
                  :mro,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MVR =
                T.let(
                  :mvr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MWK =
                T.let(
                  :mwk,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MXN =
                T.let(
                  :mxn,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MYR =
                T.let(
                  :myr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              MZN =
                T.let(
                  :mzn,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NAD =
                T.let(
                  :nad,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NGN =
                T.let(
                  :ngn,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NOK =
                T.let(
                  :nok,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NPR =
                T.let(
                  :npr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              NZD =
                T.let(
                  :nzd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PGK =
                T.let(
                  :pgk,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PHP =
                T.let(
                  :php,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PKR =
                T.let(
                  :pkr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PLN =
                T.let(
                  :pln,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              QAR =
                T.let(
                  :qar,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RON =
                T.let(
                  :ron,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RSD =
                T.let(
                  :rsd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RUB =
                T.let(
                  :rub,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              RWF =
                T.let(
                  :rwf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SAR =
                T.let(
                  :sar,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SBD =
                T.let(
                  :sbd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SCR =
                T.let(
                  :scr,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SEK =
                T.let(
                  :sek,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SGD =
                T.let(
                  :sgd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SLE =
                T.let(
                  :sle,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SLL =
                T.let(
                  :sll,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SOS =
                T.let(
                  :sos,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              SZL =
                T.let(
                  :szl,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              THB =
                T.let(
                  :thb,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TJS =
                T.let(
                  :tjs,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TOP =
                T.let(
                  :top,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TRY =
                T.let(
                  :try,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TTD =
                T.let(
                  :ttd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              TZS =
                T.let(
                  :tzs,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              UAH =
                T.let(
                  :uah,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              UZS =
                T.let(
                  :uzs,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              VND =
                T.let(
                  :vnd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              VUV =
                T.let(
                  :vuv,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              WST =
                T.let(
                  :wst,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XAF =
                T.let(
                  :xaf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XCD =
                T.let(
                  :xcd,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              YER =
                T.let(
                  :yer,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ZAR =
                T.let(
                  :zar,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              ZMW =
                T.let(
                  :zmw,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              CLP =
                T.let(
                  :clp,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              DJF =
                T.let(
                  :djf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              GNF =
                T.let(
                  :gnf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              UGX =
                T.let(
                  :ugx,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              PYG =
                T.let(
                  :pyg,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XOF =
                T.let(
                  :xof,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )
              XPF =
                T.let(
                  :xpf,
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Price::Currency::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Tier < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier,
                  Stigg::Internal::AnyHash
                )
              end

            # The flat fee price of the price tier
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice
                )
              )
            end
            attr_reader :flat_price

            sig do
              params(
                flat_price:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::OrHash
              ).void
            end
            attr_writer :flat_price

            # The unit price of the price tier
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice
                )
              )
            end
            attr_reader :unit_price

            sig do
              params(
                unit_price:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::OrHash
              ).void
            end
            attr_writer :unit_price

            # The up to quantity of the price tier
            sig { returns(T.nilable(Float)) }
            attr_reader :up_to

            sig { params(up_to: Float).void }
            attr_writer :up_to

            sig do
              params(
                flat_price:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::OrHash,
                unit_price:
                  Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::OrHash,
                up_to: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # The flat fee price of the price tier
              flat_price: nil,
              # The unit price of the price tier
              unit_price: nil,
              # The up to quantity of the price tier
              up_to: nil
            )
            end

            sig do
              override.returns(
                {
                  flat_price:
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice,
                  unit_price:
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice,
                  up_to: Float
                }
              )
            end
            def to_hash
            end

            class FlatPrice < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # The billing country code of the price
              sig { returns(T.nilable(String)) }
              attr_accessor :billing_country_code

              # The price currency
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::OrSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              # The flat fee price of the price tier
              sig do
                params(
                  amount: Float,
                  billing_country_code: T.nilable(String),
                  currency:
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The price amount
                amount: nil,
                # The billing country code of the price
                billing_country_code: nil,
                # The price currency
                currency: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    billing_country_code: T.nilable(String),
                    currency:
                      Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class UnitPrice < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(T.nilable(Float)) }
              attr_reader :amount

              sig { params(amount: Float).void }
              attr_writer :amount

              # The billing country code of the price
              sig { returns(T.nilable(String)) }
              attr_accessor :billing_country_code

              # The price currency
              sig do
                returns(
                  T.nilable(
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::OrSymbol
                  )
                )
              end
              attr_reader :currency

              sig do
                params(
                  currency:
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::OrSymbol
                ).void
              end
              attr_writer :currency

              # The unit price of the price tier
              sig do
                params(
                  amount: Float,
                  billing_country_code: T.nilable(String),
                  currency:
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The price amount
                amount: nil,
                # The billing country code of the price
                billing_country_code: nil,
                # The price currency
                currency: nil
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    billing_country_code: T.nilable(String),
                    currency:
                      Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionCreateParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        # Strategy for scheduling subscription changes
        module ScheduleStrategy
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionCreateParams::ScheduleStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          END_OF_BILLING_PERIOD =
            T.let(
              :END_OF_BILLING_PERIOD,
              Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::TaggedSymbol
            )
          END_OF_BILLING_MONTH =
            T.let(
              :END_OF_BILLING_MONTH,
              Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::TaggedSymbol
            )
          IMMEDIATE =
            T.let(
              :IMMEDIATE,
              Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionCreateParams::ScheduleStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SubscriptionEntitlement < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::SubscriptionEntitlement,
                Stigg::Internal::AnyHash
              )
            end

          # Feature ID
          sig { returns(String) }
          attr_accessor :feature_id

          sig { returns(Float) }
          attr_accessor :usage_limit

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_granted

          sig { params(is_granted: T::Boolean).void }
          attr_writer :is_granted

          sig do
            params(
              feature_id: String,
              usage_limit: Float,
              is_granted: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Feature ID
            feature_id:,
            usage_limit:,
            is_granted: nil
          )
          end

          sig do
            override.returns(
              { feature_id: String, usage_limit: Float, is_granted: T::Boolean }
            )
          end
          def to_hash
          end
        end

        class TrialOverrideConfiguration < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration,
                Stigg::Internal::AnyHash
              )
            end

          # Whether the subscription should start with a trial period
          sig { returns(T::Boolean) }
          attr_accessor :is_trial

          # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
              )
            )
          end
          attr_reader :trial_end_behavior

          sig do
            params(
              trial_end_behavior:
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
            ).void
          end
          attr_writer :trial_end_behavior

          # Custom trial end date
          sig { returns(T.nilable(Time)) }
          attr_reader :trial_end_date

          sig { params(trial_end_date: Time).void }
          attr_writer :trial_end_date

          # Trial period override settings
          sig do
            params(
              is_trial: T::Boolean,
              trial_end_behavior:
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
              trial_end_date: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the subscription should start with a trial period
            is_trial:,
            # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
            trial_end_behavior: nil,
            # Custom trial end date
            trial_end_date: nil
          )
          end

          sig do
            override.returns(
              {
                is_trial: T::Boolean,
                trial_end_behavior:
                  Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
                trial_end_date: Time
              }
            )
          end
          def to_hash
          end

          # Behavior when trial ends: CONVERT_TO_PAID or CANCEL_SUBSCRIPTION
          module TrialEndBehavior
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONVERT_TO_PAID =
              T.let(
                :CONVERT_TO_PAID,
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )
            CANCEL_SUBSCRIPTION =
              T.let(
                :CANCEL_SUBSCRIPTION,
                Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionCreateParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
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
