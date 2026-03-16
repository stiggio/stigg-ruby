# typed: strong

module Stigg
  module Models
    module V1
      class SubscriptionProvisionParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::SubscriptionProvisionParams,
              Stigg::Internal::AnyHash
            )
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
            T.nilable(T::Array[Stigg::V1::SubscriptionProvisionParams::Addon])
          )
        end
        attr_reader :addons

        sig do
          params(
            addons:
              T::Array[Stigg::V1::SubscriptionProvisionParams::Addon::OrHash]
          ).void
        end
        attr_writer :addons

        # Coupon configuration
        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionProvisionParams::AppliedCoupon)
          )
        end
        attr_reader :applied_coupon

        sig do
          params(
            applied_coupon:
              Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::OrHash
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

        # Billing cycle anchor behavior for the subscription
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor::OrSymbol
            )
          )
        end
        attr_reader :billing_cycle_anchor

        sig do
          params(
            billing_cycle_anchor:
              Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor::OrSymbol
          ).void
        end
        attr_writer :billing_cycle_anchor

        # External billing system identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_id

        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionProvisionParams::BillingInformation
            )
          )
        end
        attr_reader :billing_information

        sig do
          params(
            billing_information:
              Stigg::V1::SubscriptionProvisionParams::BillingInformation::OrHash
          ).void
        end
        attr_writer :billing_information

        # Billing period (MONTHLY or ANNUALLY)
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionProvisionParams::BillingPeriod::OrSymbol
            )
          )
        end
        attr_reader :billing_period

        sig do
          params(
            billing_period:
              Stigg::V1::SubscriptionProvisionParams::BillingPeriod::OrSymbol
          ).void
        end
        attr_writer :billing_period

        sig do
          returns(T.nilable(Stigg::V1::SubscriptionProvisionParams::Budget))
        end
        attr_reader :budget

        sig do
          params(
            budget:
              T.nilable(Stigg::V1::SubscriptionProvisionParams::Budget::OrHash)
          ).void
        end
        attr_writer :budget

        sig do
          returns(
            T.nilable(T::Array[Stigg::V1::SubscriptionProvisionParams::Charge])
          )
        end
        attr_reader :charges

        sig do
          params(
            charges:
              T::Array[Stigg::V1::SubscriptionProvisionParams::Charge::OrHash]
          ).void
        end
        attr_writer :charges

        # Checkout page configuration for payment collection
        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionProvisionParams::CheckoutOptions)
          )
        end
        attr_reader :checkout_options

        sig do
          params(
            checkout_options:
              Stigg::V1::SubscriptionProvisionParams::CheckoutOptions::OrHash
          ).void
        end
        attr_writer :checkout_options

        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit
                )
              ]
            )
          )
        end
        attr_reader :entitlements

        sig do
          params(
            entitlements:
              T::Array[
                T.any(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::OrHash,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::OrHash
                )
              ]
          ).void
        end
        attr_writer :entitlements

        # Additional metadata for the subscription
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        # Minimum spend amount
        sig do
          returns(
            T.nilable(Stigg::V1::SubscriptionProvisionParams::MinimumSpend)
          )
        end
        attr_reader :minimum_spend

        sig do
          params(
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::OrHash
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
              Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::OrSymbol
            )
          )
        end
        attr_reader :payment_collection_method

        sig do
          params(
            payment_collection_method:
              Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::OrSymbol
          ).void
        end
        attr_writer :payment_collection_method

        sig do
          returns(
            T.nilable(
              T::Array[Stigg::V1::SubscriptionProvisionParams::PriceOverride]
            )
          )
        end
        attr_reader :price_overrides

        sig do
          params(
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::OrHash
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
              Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::OrSymbol
            )
          )
        end
        attr_reader :schedule_strategy

        sig do
          params(
            schedule_strategy:
              Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::OrSymbol
          ).void
        end
        attr_writer :schedule_strategy

        # Subscription start date
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        # Trial period override settings
        sig do
          returns(
            T.nilable(
              Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration
            )
          )
        end
        attr_reader :trial_override_configuration

        sig do
          params(
            trial_override_configuration:
              Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::OrHash
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
              T::Array[Stigg::V1::SubscriptionProvisionParams::Addon::OrHash],
            applied_coupon:
              Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::OrHash,
            await_payment_confirmation: T::Boolean,
            billing_country_code: T.nilable(String),
            billing_cycle_anchor:
              Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor::OrSymbol,
            billing_id: T.nilable(String),
            billing_information:
              Stigg::V1::SubscriptionProvisionParams::BillingInformation::OrHash,
            billing_period:
              Stigg::V1::SubscriptionProvisionParams::BillingPeriod::OrSymbol,
            budget:
              T.nilable(Stigg::V1::SubscriptionProvisionParams::Budget::OrHash),
            charges:
              T::Array[Stigg::V1::SubscriptionProvisionParams::Charge::OrHash],
            checkout_options:
              Stigg::V1::SubscriptionProvisionParams::CheckoutOptions::OrHash,
            entitlements:
              T::Array[
                T.any(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::OrHash,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::OrHash
                )
              ],
            metadata: T::Hash[Symbol, String],
            minimum_spend:
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::OrHash
              ),
            paying_customer_id: T.nilable(String),
            payment_collection_method:
              Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::OrSymbol,
            price_overrides:
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::OrHash
              ],
            resource_id: T.nilable(String),
            salesforce_id: T.nilable(String),
            schedule_strategy:
              Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::OrSymbol,
            start_date: Time,
            trial_override_configuration:
              Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::OrHash,
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
          # Billing cycle anchor behavior for the subscription
          billing_cycle_anchor: nil,
          # External billing system identifier
          billing_id: nil,
          billing_information: nil,
          # Billing period (MONTHLY or ANNUALLY)
          billing_period: nil,
          budget: nil,
          charges: nil,
          # Checkout page configuration for payment collection
          checkout_options: nil,
          entitlements: nil,
          # Additional metadata for the subscription
          metadata: nil,
          # Minimum spend amount
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
              addons: T::Array[Stigg::V1::SubscriptionProvisionParams::Addon],
              applied_coupon:
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon,
              await_payment_confirmation: T::Boolean,
              billing_country_code: T.nilable(String),
              billing_cycle_anchor:
                Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor::OrSymbol,
              billing_id: T.nilable(String),
              billing_information:
                Stigg::V1::SubscriptionProvisionParams::BillingInformation,
              billing_period:
                Stigg::V1::SubscriptionProvisionParams::BillingPeriod::OrSymbol,
              budget: T.nilable(Stigg::V1::SubscriptionProvisionParams::Budget),
              charges: T::Array[Stigg::V1::SubscriptionProvisionParams::Charge],
              checkout_options:
                Stigg::V1::SubscriptionProvisionParams::CheckoutOptions,
              entitlements:
                T::Array[
                  T.any(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit
                  )
                ],
              metadata: T::Hash[Symbol, String],
              minimum_spend:
                T.nilable(Stigg::V1::SubscriptionProvisionParams::MinimumSpend),
              paying_customer_id: T.nilable(String),
              payment_collection_method:
                Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::OrSymbol,
              price_overrides:
                T::Array[Stigg::V1::SubscriptionProvisionParams::PriceOverride],
              resource_id: T.nilable(String),
              salesforce_id: T.nilable(String),
              schedule_strategy:
                Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::OrSymbol,
              start_date: Time,
              trial_override_configuration:
                Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration,
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
                Stigg::V1::SubscriptionProvisionParams::Addon,
                Stigg::Internal::AnyHash
              )
            end

          # Addon ID
          sig { returns(String) }
          attr_accessor :id

          # Number of addon instances
          sig { returns(Integer) }
          attr_accessor :quantity

          # Addon configuration
          sig do
            params(id: String, quantity: Integer).returns(T.attached_class)
          end
          def self.new(
            # Addon ID
            id:,
            # Number of addon instances
            quantity:
          )
          end

          sig { override.returns({ id: String, quantity: Integer }) }
          def to_hash
          end
        end

        class AppliedCoupon < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon,
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
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration
              )
            )
          end
          attr_reader :configuration

          sig do
            params(
              configuration:
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration::OrHash
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
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount
              )
            )
          end
          attr_reader :discount

          sig do
            params(
              discount:
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::OrHash
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
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration::OrHash,
              coupon_id: String,
              discount:
                Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::OrHash,
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
                  Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration,
                coupon_id: String,
                discount:
                  Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount,
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
                  Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Configuration,
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
                  Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount,
                  Stigg::Internal::AnyHash
                )
              end

            # Fixed amounts off by currency
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff
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
                      Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::OrHash
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
                        Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff
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
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # ISO 4217 currency code
              sig do
                returns(
                  Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
                )
              end
              attr_accessor :currency

              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionProvisionParams::AppliedCoupon::Discount::AmountsOff::Currency::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        # Billing cycle anchor behavior for the subscription
        module BillingCycleAnchor
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNCHANGED =
            T.let(
              :UNCHANGED,
              Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor::TaggedSymbol
            )
          NOW =
            T.let(
              :NOW,
              Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::BillingCycleAnchor::TaggedSymbol
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
                Stigg::V1::SubscriptionProvisionParams::BillingInformation,
                Stigg::Internal::AnyHash
              )
            end

          # Billing address for the subscription
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress
              )
            )
          end
          attr_reader :billing_address

          sig do
            params(
              billing_address:
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress::OrHash
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
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::OrSymbol
              )
            )
          end
          attr_reader :proration_behavior

          sig do
            params(
              proration_behavior:
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::OrSymbol
            ).void
          end
          attr_writer :proration_behavior

          # Customer tax identification numbers
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::TaxID
                ]
              )
            )
          end
          attr_reader :tax_ids

          sig do
            params(
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::TaxID::OrHash
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
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress::OrHash,
              charge_on_behalf_of_account: T.nilable(String),
              integration_id: T.nilable(String),
              invoice_days_until_due: Float,
              is_backdated: T::Boolean,
              is_invoice_paid: T::Boolean,
              metadata: T::Hash[Symbol, String],
              proration_behavior:
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::OrSymbol,
              tax_ids:
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::TaxID::OrHash
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
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress,
                charge_on_behalf_of_account: T.nilable(String),
                integration_id: T.nilable(String),
                invoice_days_until_due: Float,
                is_backdated: T::Boolean,
                is_invoice_paid: T::Boolean,
                metadata: T::Hash[Symbol, String],
                proration_behavior:
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::OrSymbol,
                tax_ids:
                  T::Array[
                    Stigg::V1::SubscriptionProvisionParams::BillingInformation::TaxID
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
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::BillingAddress,
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
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INVOICE_IMMEDIATELY =
              T.let(
                :INVOICE_IMMEDIATELY,
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            CREATE_PRORATIONS =
              T.let(
                :CREATE_PRORATIONS,
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )
            NONE =
              T.let(
                :NONE,
                Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::ProrationBehavior::TaggedSymbol
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
                  Stigg::V1::SubscriptionProvisionParams::BillingInformation::TaxID,
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

        # Billing period (MONTHLY or ANNUALLY)
        module BillingPeriod
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Stigg::V1::SubscriptionProvisionParams::BillingPeriod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :MONTHLY,
              Stigg::V1::SubscriptionProvisionParams::BillingPeriod::TaggedSymbol
            )
          ANNUALLY =
            T.let(
              :ANNUALLY,
              Stigg::V1::SubscriptionProvisionParams::BillingPeriod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::BillingPeriod::TaggedSymbol
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
                Stigg::V1::SubscriptionProvisionParams::Budget,
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
                Stigg::V1::SubscriptionProvisionParams::Charge,
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
            returns(
              Stigg::V1::SubscriptionProvisionParams::Charge::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Charge item
          sig do
            params(
              id: String,
              quantity: Float,
              type:
                Stigg::V1::SubscriptionProvisionParams::Charge::Type::OrSymbol
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
                  Stigg::V1::SubscriptionProvisionParams::Charge::Type::OrSymbol
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
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionProvisionParams::Charge::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FEATURE =
              T.let(
                :FEATURE,
                Stigg::V1::SubscriptionProvisionParams::Charge::Type::TaggedSymbol
              )
            CREDIT =
              T.let(
                :CREDIT,
                Stigg::V1::SubscriptionProvisionParams::Charge::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::Charge::Type::TaggedSymbol
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
                Stigg::V1::SubscriptionProvisionParams::CheckoutOptions,
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

        # Feature entitlement configuration for a subscription
        module Entitlement
          extend Stigg::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature,
                Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit
              )
            end

          class Feature < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature,
                  Stigg::Internal::AnyHash
                )
              end

            # The feature ID to attach the entitlement to
            sig { returns(String) }
            attr_accessor :id

            # SubscriptionFeatureEntitlementRequest
            sig { returns(Symbol) }
            attr_accessor :type

            # Whether the usage limit is a soft limit
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_soft_limit

            sig { params(has_soft_limit: T::Boolean).void }
            attr_writer :has_soft_limit

            # Whether usage is unlimited
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_unlimited_usage

            sig { params(has_unlimited_usage: T::Boolean).void }
            attr_writer :has_unlimited_usage

            # Configuration for monthly reset period
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration
                )
              )
            end
            attr_reader :monthly_reset_period_configuration

            sig do
              params(
                monthly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :monthly_reset_period_configuration

            # Period at which usage resets
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::OrSymbol
                )
              )
            end
            attr_reader :reset_period

            sig do
              params(
                reset_period:
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::OrSymbol
              ).void
            end
            attr_writer :reset_period

            # Maximum allowed usage for the feature
            sig { returns(T.nilable(Integer)) }
            attr_reader :usage_limit

            sig { params(usage_limit: Integer).void }
            attr_writer :usage_limit

            # Configuration for weekly reset period
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration
                )
              )
            end
            attr_reader :weekly_reset_period_configuration

            sig do
              params(
                weekly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :weekly_reset_period_configuration

            # Configuration for yearly reset period
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration
                )
              )
            end
            attr_reader :yearly_reset_period_configuration

            sig do
              params(
                yearly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::OrHash
                  )
              ).void
            end
            attr_writer :yearly_reset_period_configuration

            # Feature entitlement configuration for a subscription
            sig do
              params(
                id: String,
                has_soft_limit: T::Boolean,
                has_unlimited_usage: T::Boolean,
                monthly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::OrHash
                  ),
                reset_period:
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::OrSymbol,
                usage_limit: Integer,
                weekly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::OrHash
                  ),
                yearly_reset_period_configuration:
                  T.nilable(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::OrHash
                  ),
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The feature ID to attach the entitlement to
              id:,
              # Whether the usage limit is a soft limit
              has_soft_limit: nil,
              # Whether usage is unlimited
              has_unlimited_usage: nil,
              # Configuration for monthly reset period
              monthly_reset_period_configuration: nil,
              # Period at which usage resets
              reset_period: nil,
              # Maximum allowed usage for the feature
              usage_limit: nil,
              # Configuration for weekly reset period
              weekly_reset_period_configuration: nil,
              # Configuration for yearly reset period
              yearly_reset_period_configuration: nil,
              # SubscriptionFeatureEntitlementRequest
              type: :FEATURE
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  type: Symbol,
                  has_soft_limit: T::Boolean,
                  has_unlimited_usage: T::Boolean,
                  monthly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration
                    ),
                  reset_period:
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::OrSymbol,
                  usage_limit: Integer,
                  weekly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration
                    ),
                  yearly_reset_period_configuration:
                    T.nilable(
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration
                    )
                }
              )
            end
            def to_hash
            end

            class MonthlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              sig do
                returns(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # Configuration for monthly reset period
              sig do
                params(
                  according_to:
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Reset anchor (SubscriptionStart or StartOfTheMonth)
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Reset anchor (SubscriptionStart or StartOfTheMonth)
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                START_OF_THE_MONTH =
                  T.let(
                    :StartOfTheMonth,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::MonthlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # Period at which usage resets
            module ResetPeriod
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              YEAR =
                T.let(
                  :YEAR,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                )
              MONTH =
                T.let(
                  :MONTH,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                )
              WEEK =
                T.let(
                  :WEEK,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                )
              DAY =
                T.let(
                  :DAY,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                )
              HOUR =
                T.let(
                  :HOUR,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::ResetPeriod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class WeeklyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Reset anchor (SubscriptionStart or specific day)
              sig do
                returns(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # Configuration for weekly reset period
              sig do
                params(
                  according_to:
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Reset anchor (SubscriptionStart or specific day)
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Reset anchor (SubscriptionStart or specific day)
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_SUNDAY =
                  T.let(
                    :EverySunday,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_MONDAY =
                  T.let(
                    :EveryMonday,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_TUESDAY =
                  T.let(
                    :EveryTuesday,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_WEDNESDAY =
                  T.let(
                    :EveryWednesday,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_THURSDAY =
                  T.let(
                    :EveryThursday,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_FRIDAY =
                  T.let(
                    :EveryFriday,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )
                EVERY_SATURDAY =
                  T.let(
                    :EverySaturday,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::WeeklyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class YearlyResetPeriodConfiguration < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration,
                    Stigg::Internal::AnyHash
                  )
                end

              # Reset anchor (SubscriptionStart)
              sig do
                returns(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                )
              end
              attr_accessor :according_to

              # Configuration for yearly reset period
              sig do
                params(
                  according_to:
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Reset anchor (SubscriptionStart)
                according_to:
              )
              end

              sig do
                override.returns(
                  {
                    according_to:
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Reset anchor (SubscriptionStart)
              module AccordingTo
                extend Stigg::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SUBSCRIPTION_START =
                  T.let(
                    :SubscriptionStart,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionProvisionParams::Entitlement::Feature::YearlyResetPeriodConfiguration::AccordingTo::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Credit < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit,
                  Stigg::Internal::AnyHash
                )
              end

            # The custom currency ID for the credit entitlement
            sig { returns(String) }
            attr_accessor :id

            # Credit grant amount
            sig { returns(Float) }
            attr_accessor :amount

            # Credit grant cadence (MONTH or YEAR)
            sig do
              returns(
                Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            # SubscriptionCreditEntitlementRequest
            sig { returns(Symbol) }
            attr_accessor :type

            # Credit entitlement configuration for a subscription
            sig do
              params(
                id: String,
                amount: Float,
                cadence:
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence::OrSymbol,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The custom currency ID for the credit entitlement
              id:,
              # Credit grant amount
              amount:,
              # Credit grant cadence (MONTH or YEAR)
              cadence:,
              # SubscriptionCreditEntitlementRequest
              type: :CREDIT
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  cadence:
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence::OrSymbol,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            # Credit grant cadence (MONTH or YEAR)
            module Cadence
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MONTH =
                T.let(
                  :MONTH,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence::TaggedSymbol
                )
              YEAR =
                T.let(
                  :YEAR,
                  Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::SubscriptionProvisionParams::Entitlement::Credit::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::Entitlement::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class MinimumSpend < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend,
                Stigg::Internal::AnyHash
              )
            end

          # The price amount
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # The price currency
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::OrSymbol
              )
            )
          end
          attr_reader :currency

          sig do
            params(
              currency:
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::OrSymbol
            ).void
          end
          attr_writer :currency

          # Minimum spend amount
          sig do
            params(
              amount: Float,
              currency:
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The price amount
            amount: nil,
            # The price currency
            currency: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                currency:
                  Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::OrSymbol
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
                  Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            ANG =
              T.let(
                :ang,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            AWG =
              T.let(
                :awg,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            AZN =
              T.let(
                :azn,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BBD =
              T.let(
                :bbd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BDT =
              T.let(
                :bdt,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BIF =
              T.let(
                :bif,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BMD =
              T.let(
                :bmd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BND =
              T.let(
                :bnd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BWP =
              T.let(
                :bwp,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BYN =
              T.let(
                :byn,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BZD =
              T.let(
                :bzd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            CDF =
              T.let(
                :cdf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            CNY =
              T.let(
                :cny,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            FJD =
              T.let(
                :fjd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            GEL =
              T.let(
                :gel,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            GIP =
              T.let(
                :gip,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            HRK =
              T.let(
                :hrk,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            HTG =
              T.let(
                :htg,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            ISK =
              T.let(
                :isk,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            KGS =
              T.let(
                :kgs,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            KMF =
              T.let(
                :kmf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            KYD =
              T.let(
                :kyd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            KZT =
              T.let(
                :kzt,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            LBP =
              T.let(
                :lbp,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            LRD =
              T.let(
                :lrd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            LSL =
              T.let(
                :lsl,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MMK =
              T.let(
                :mmk,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MRO =
              T.let(
                :mro,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MVR =
              T.let(
                :mvr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MWK =
              T.let(
                :mwk,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            NPR =
              T.let(
                :npr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            PGK =
              T.let(
                :pgk,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SBD =
              T.let(
                :sbd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SCR =
              T.let(
                :scr,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SLE =
              T.let(
                :sle,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SLL =
              T.let(
                :sll,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SOS =
              T.let(
                :sos,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            SZL =
              T.let(
                :szl,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            TJS =
              T.let(
                :tjs,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            TOP =
              T.let(
                :top,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            UAH =
              T.let(
                :uah,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            VUV =
              T.let(
                :vuv,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            WST =
              T.let(
                :wst,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            XAF =
              T.let(
                :xaf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            YER =
              T.let(
                :yer,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            ZMW =
              T.let(
                :zmw,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            DJF =
              T.let(
                :djf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            GNF =
              T.let(
                :gnf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            UGX =
              T.let(
                :ugx,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )
            XPF =
              T.let(
                :xpf,
                Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::MinimumSpend::Currency::TaggedSymbol
                ]
              )
            end
            def self.values
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
                Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGE =
            T.let(
              :CHARGE,
              Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::TaggedSymbol
            )
          NONE =
            T.let(
              :NONE,
              Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::PaymentCollectionMethod::TaggedSymbol
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
                Stigg::V1::SubscriptionProvisionParams::PriceOverride,
                Stigg::Internal::AnyHash
              )
            end

          # Addon identifier for the price override
          sig { returns(T.nilable(String)) }
          attr_accessor :addon_id

          # The price amount
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # Whether this is a base charge override
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :base_charge

          sig { params(base_charge: T::Boolean).void }
          attr_writer :base_charge

          # The billing country code of the price
          sig { returns(T.nilable(String)) }
          attr_reader :billing_country_code

          sig { params(billing_country_code: String).void }
          attr_writer :billing_country_code

          # Block size for pricing
          sig { returns(T.nilable(Float)) }
          attr_reader :block_size

          sig { params(block_size: Float).void }
          attr_writer :block_size

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence::OrSymbol
              )
            )
          end
          attr_reader :credit_grant_cadence

          sig do
            params(
              credit_grant_cadence:
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence::OrSymbol
            ).void
          end
          attr_writer :credit_grant_cadence

          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditRate
              )
            )
          end
          attr_reader :credit_rate

          sig do
            params(
              credit_rate:
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditRate::OrHash
            ).void
          end
          attr_writer :credit_rate

          # The price currency
          sig do
            returns(
              T.nilable(
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::OrSymbol
              )
            )
          end
          attr_reader :currency

          sig do
            params(
              currency:
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::OrSymbol
            ).void
          end
          attr_writer :currency

          # Feature identifier for the price override
          sig { returns(T.nilable(String)) }
          attr_accessor :feature_id

          # Pricing tiers configuration
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier
                ]
              )
            )
          end
          attr_reader :tiers

          sig do
            params(
              tiers:
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::OrHash
                ]
            ).void
          end
          attr_writer :tiers

          sig do
            params(
              addon_id: T.nilable(String),
              amount: Float,
              base_charge: T::Boolean,
              billing_country_code: String,
              block_size: Float,
              credit_grant_cadence:
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence::OrSymbol,
              credit_rate:
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditRate::OrHash,
              currency:
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::OrSymbol,
              feature_id: T.nilable(String),
              tiers:
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Addon identifier for the price override
            addon_id: nil,
            # The price amount
            amount: nil,
            # Whether this is a base charge override
            base_charge: nil,
            # The billing country code of the price
            billing_country_code: nil,
            # Block size for pricing
            block_size: nil,
            credit_grant_cadence: nil,
            credit_rate: nil,
            # The price currency
            currency: nil,
            # Feature identifier for the price override
            feature_id: nil,
            # Pricing tiers configuration
            tiers: nil
          )
          end

          sig do
            override.returns(
              {
                addon_id: T.nilable(String),
                amount: Float,
                base_charge: T::Boolean,
                billing_country_code: String,
                block_size: Float,
                credit_grant_cadence:
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence::OrSymbol,
                credit_rate:
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditRate,
                currency:
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::OrSymbol,
                feature_id: T.nilable(String),
                tiers:
                  T::Array[
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier
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
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BEGINNING_OF_BILLING_PERIOD =
              T.let(
                :BEGINNING_OF_BILLING_PERIOD,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :MONTHLY,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditGrantCadence::TaggedSymbol
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
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::CreditRate,
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

          # The price currency
          module Currency
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USD =
              T.let(
                :usd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            AED =
              T.let(
                :aed,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            ALL =
              T.let(
                :all,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            AMD =
              T.let(
                :amd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            ANG =
              T.let(
                :ang,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            AUD =
              T.let(
                :aud,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            AWG =
              T.let(
                :awg,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            AZN =
              T.let(
                :azn,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BAM =
              T.let(
                :bam,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BBD =
              T.let(
                :bbd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BDT =
              T.let(
                :bdt,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BGN =
              T.let(
                :bgn,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BIF =
              T.let(
                :bif,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BMD =
              T.let(
                :bmd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BND =
              T.let(
                :bnd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BSD =
              T.let(
                :bsd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BWP =
              T.let(
                :bwp,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BYN =
              T.let(
                :byn,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BZD =
              T.let(
                :bzd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            BRL =
              T.let(
                :brl,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :cad,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            CDF =
              T.let(
                :cdf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            CHF =
              T.let(
                :chf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            CNY =
              T.let(
                :cny,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            CZK =
              T.let(
                :czk,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            DKK =
              T.let(
                :dkk,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            DOP =
              T.let(
                :dop,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            DZD =
              T.let(
                :dzd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            EGP =
              T.let(
                :egp,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            ETB =
              T.let(
                :etb,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :eur,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            FJD =
              T.let(
                :fjd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :gbp,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            GEL =
              T.let(
                :gel,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            GIP =
              T.let(
                :gip,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            GMD =
              T.let(
                :gmd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            GYD =
              T.let(
                :gyd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            HKD =
              T.let(
                :hkd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            HRK =
              T.let(
                :hrk,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            HTG =
              T.let(
                :htg,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            IDR =
              T.let(
                :idr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            ILS =
              T.let(
                :ils,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            INR =
              T.let(
                :inr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            ISK =
              T.let(
                :isk,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            JMD =
              T.let(
                :jmd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            JPY =
              T.let(
                :jpy,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            KES =
              T.let(
                :kes,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            KGS =
              T.let(
                :kgs,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            KHR =
              T.let(
                :khr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            KMF =
              T.let(
                :kmf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            KRW =
              T.let(
                :krw,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            KYD =
              T.let(
                :kyd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            KZT =
              T.let(
                :kzt,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            LBP =
              T.let(
                :lbp,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            LKR =
              T.let(
                :lkr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            LRD =
              T.let(
                :lrd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            LSL =
              T.let(
                :lsl,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MAD =
              T.let(
                :mad,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MDL =
              T.let(
                :mdl,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MGA =
              T.let(
                :mga,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MKD =
              T.let(
                :mkd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MMK =
              T.let(
                :mmk,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MNT =
              T.let(
                :mnt,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MOP =
              T.let(
                :mop,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MRO =
              T.let(
                :mro,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MVR =
              T.let(
                :mvr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MWK =
              T.let(
                :mwk,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MXN =
              T.let(
                :mxn,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MYR =
              T.let(
                :myr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            MZN =
              T.let(
                :mzn,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            NAD =
              T.let(
                :nad,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            NGN =
              T.let(
                :ngn,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            NOK =
              T.let(
                :nok,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            NPR =
              T.let(
                :npr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            NZD =
              T.let(
                :nzd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            PGK =
              T.let(
                :pgk,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            PHP =
              T.let(
                :php,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            PKR =
              T.let(
                :pkr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            PLN =
              T.let(
                :pln,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            QAR =
              T.let(
                :qar,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            RON =
              T.let(
                :ron,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            RSD =
              T.let(
                :rsd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            RUB =
              T.let(
                :rub,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            RWF =
              T.let(
                :rwf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SAR =
              T.let(
                :sar,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SBD =
              T.let(
                :sbd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SCR =
              T.let(
                :scr,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SEK =
              T.let(
                :sek,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SGD =
              T.let(
                :sgd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SLE =
              T.let(
                :sle,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SLL =
              T.let(
                :sll,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SOS =
              T.let(
                :sos,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            SZL =
              T.let(
                :szl,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            THB =
              T.let(
                :thb,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            TJS =
              T.let(
                :tjs,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            TOP =
              T.let(
                :top,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            TRY =
              T.let(
                :try,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            TTD =
              T.let(
                :ttd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            TZS =
              T.let(
                :tzs,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            UAH =
              T.let(
                :uah,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            UZS =
              T.let(
                :uzs,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            VND =
              T.let(
                :vnd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            VUV =
              T.let(
                :vuv,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            WST =
              T.let(
                :wst,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            XAF =
              T.let(
                :xaf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            XCD =
              T.let(
                :xcd,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            YER =
              T.let(
                :yer,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            ZAR =
              T.let(
                :zar,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            ZMW =
              T.let(
                :zmw,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            CLP =
              T.let(
                :clp,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            DJF =
              T.let(
                :djf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            GNF =
              T.let(
                :gnf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            UGX =
              T.let(
                :ugx,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            PYG =
              T.let(
                :pyg,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            XOF =
              T.let(
                :xof,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )
            XPF =
              T.let(
                :xpf,
                Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Currency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Tier < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier,
                  Stigg::Internal::AnyHash
                )
              end

            # The flat fee price of the price tier
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice
                )
              )
            end
            attr_reader :flat_price

            sig do
              params(
                flat_price:
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::OrHash
              ).void
            end
            attr_writer :flat_price

            # The unit price of the price tier
            sig do
              returns(
                T.nilable(
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice
                )
              )
            end
            attr_reader :unit_price

            sig do
              params(
                unit_price:
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::OrHash
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
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::OrHash,
                unit_price:
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::OrHash,
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
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice,
                  unit_price:
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice,
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
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # ISO 4217 currency code
              sig do
                returns(
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::OrSymbol
                )
              end
              attr_accessor :currency

              # The flat fee price of the price tier
              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::FlatPrice::Currency::TaggedSymbol
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
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice,
                    Stigg::Internal::AnyHash
                  )
                end

              # The price amount
              sig { returns(Float) }
              attr_accessor :amount

              # ISO 4217 currency code
              sig do
                returns(
                  Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::OrSymbol
                )
              end
              attr_accessor :currency

              # The unit price of the price tier
              sig do
                params(
                  amount: Float,
                  currency:
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::OrSymbol
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
                      Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USD =
                  T.let(
                    :usd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AED =
                  T.let(
                    :aed,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ALL =
                  T.let(
                    :all,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AMD =
                  T.let(
                    :amd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ANG =
                  T.let(
                    :ang,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AUD =
                  T.let(
                    :aud,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AWG =
                  T.let(
                    :awg,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                AZN =
                  T.let(
                    :azn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BAM =
                  T.let(
                    :bam,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BBD =
                  T.let(
                    :bbd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BDT =
                  T.let(
                    :bdt,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BGN =
                  T.let(
                    :bgn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BIF =
                  T.let(
                    :bif,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BMD =
                  T.let(
                    :bmd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BND =
                  T.let(
                    :bnd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BSD =
                  T.let(
                    :bsd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BWP =
                  T.let(
                    :bwp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BYN =
                  T.let(
                    :byn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BZD =
                  T.let(
                    :bzd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                BRL =
                  T.let(
                    :brl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CAD =
                  T.let(
                    :cad,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CDF =
                  T.let(
                    :cdf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CHF =
                  T.let(
                    :chf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CNY =
                  T.let(
                    :cny,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CZK =
                  T.let(
                    :czk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DKK =
                  T.let(
                    :dkk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DOP =
                  T.let(
                    :dop,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DZD =
                  T.let(
                    :dzd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                EGP =
                  T.let(
                    :egp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ETB =
                  T.let(
                    :etb,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                EUR =
                  T.let(
                    :eur,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                FJD =
                  T.let(
                    :fjd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GBP =
                  T.let(
                    :gbp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GEL =
                  T.let(
                    :gel,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GIP =
                  T.let(
                    :gip,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GMD =
                  T.let(
                    :gmd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GYD =
                  T.let(
                    :gyd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                HKD =
                  T.let(
                    :hkd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                HRK =
                  T.let(
                    :hrk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                HTG =
                  T.let(
                    :htg,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                IDR =
                  T.let(
                    :idr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ILS =
                  T.let(
                    :ils,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                INR =
                  T.let(
                    :inr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ISK =
                  T.let(
                    :isk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                JMD =
                  T.let(
                    :jmd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                JPY =
                  T.let(
                    :jpy,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KES =
                  T.let(
                    :kes,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KGS =
                  T.let(
                    :kgs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KHR =
                  T.let(
                    :khr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KMF =
                  T.let(
                    :kmf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KRW =
                  T.let(
                    :krw,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KYD =
                  T.let(
                    :kyd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                KZT =
                  T.let(
                    :kzt,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LBP =
                  T.let(
                    :lbp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LKR =
                  T.let(
                    :lkr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LRD =
                  T.let(
                    :lrd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                LSL =
                  T.let(
                    :lsl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MAD =
                  T.let(
                    :mad,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MDL =
                  T.let(
                    :mdl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MGA =
                  T.let(
                    :mga,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MKD =
                  T.let(
                    :mkd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MMK =
                  T.let(
                    :mmk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MNT =
                  T.let(
                    :mnt,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MOP =
                  T.let(
                    :mop,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MRO =
                  T.let(
                    :mro,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MVR =
                  T.let(
                    :mvr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MWK =
                  T.let(
                    :mwk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MXN =
                  T.let(
                    :mxn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MYR =
                  T.let(
                    :myr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                MZN =
                  T.let(
                    :mzn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NAD =
                  T.let(
                    :nad,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NGN =
                  T.let(
                    :ngn,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NOK =
                  T.let(
                    :nok,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NPR =
                  T.let(
                    :npr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                NZD =
                  T.let(
                    :nzd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PGK =
                  T.let(
                    :pgk,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PHP =
                  T.let(
                    :php,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PKR =
                  T.let(
                    :pkr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PLN =
                  T.let(
                    :pln,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                QAR =
                  T.let(
                    :qar,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RON =
                  T.let(
                    :ron,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RSD =
                  T.let(
                    :rsd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RUB =
                  T.let(
                    :rub,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                RWF =
                  T.let(
                    :rwf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SAR =
                  T.let(
                    :sar,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SBD =
                  T.let(
                    :sbd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SCR =
                  T.let(
                    :scr,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SEK =
                  T.let(
                    :sek,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SGD =
                  T.let(
                    :sgd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SLE =
                  T.let(
                    :sle,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SLL =
                  T.let(
                    :sll,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SOS =
                  T.let(
                    :sos,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                SZL =
                  T.let(
                    :szl,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                THB =
                  T.let(
                    :thb,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TJS =
                  T.let(
                    :tjs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TOP =
                  T.let(
                    :top,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TRY =
                  T.let(
                    :try,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TTD =
                  T.let(
                    :ttd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                TZS =
                  T.let(
                    :tzs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                UAH =
                  T.let(
                    :uah,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                UZS =
                  T.let(
                    :uzs,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                VND =
                  T.let(
                    :vnd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                VUV =
                  T.let(
                    :vuv,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                WST =
                  T.let(
                    :wst,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XAF =
                  T.let(
                    :xaf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XCD =
                  T.let(
                    :xcd,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                YER =
                  T.let(
                    :yer,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ZAR =
                  T.let(
                    :zar,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                ZMW =
                  T.let(
                    :zmw,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                CLP =
                  T.let(
                    :clp,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                DJF =
                  T.let(
                    :djf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                GNF =
                  T.let(
                    :gnf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                UGX =
                  T.let(
                    :ugx,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                PYG =
                  T.let(
                    :pyg,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XOF =
                  T.let(
                    :xof,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )
                XPF =
                  T.let(
                    :xpf,
                    Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Stigg::V1::SubscriptionProvisionParams::PriceOverride::Tier::UnitPrice::Currency::TaggedSymbol
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
                Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          END_OF_BILLING_PERIOD =
            T.let(
              :END_OF_BILLING_PERIOD,
              Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::TaggedSymbol
            )
          END_OF_BILLING_MONTH =
            T.let(
              :END_OF_BILLING_MONTH,
              Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::TaggedSymbol
            )
          IMMEDIATE =
            T.let(
              :IMMEDIATE,
              Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::SubscriptionProvisionParams::ScheduleStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class TrialOverrideConfiguration < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration,
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
                Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
              )
            )
          end
          attr_reader :trial_end_behavior

          sig do
            params(
              trial_end_behavior:
                Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol
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
                Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
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
                  Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior::OrSymbol,
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
                  Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONVERT_TO_PAID =
              T.let(
                :CONVERT_TO_PAID,
                Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )
            CANCEL_SUBSCRIPTION =
              T.let(
                :CANCEL_SUBSCRIPTION,
                Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::SubscriptionProvisionParams::TrialOverrideConfiguration::TrialEndBehavior::TaggedSymbol
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
