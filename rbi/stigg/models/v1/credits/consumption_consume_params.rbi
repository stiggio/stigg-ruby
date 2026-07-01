# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class ConsumptionConsumeParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Credits::ConsumptionConsumeParams,
                Stigg::Internal::AnyHash
              )
            end

          # The amount of credits to consume
          sig { returns(Float) }
          attr_accessor :amount

          # The credit currency to consume from (required)
          sig { returns(String) }
          attr_accessor :currency_id

          # The customer to consume credits from (required)
          sig { returns(String) }
          attr_accessor :customer_id

          # A unique key used to deduplicate the consumption (required)
          sig { returns(String) }
          attr_accessor :idempotency_key

          # Optional timestamp the consumption is attributed to
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Optional dimensions describing the consumption
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Stigg::V1::Credits::ConsumptionConsumeParams::Dimension::Variants
                ]
              )
            )
          end
          attr_reader :dimensions

          sig do
            params(
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::Credits::ConsumptionConsumeParams::Dimension::Variants
                ]
            ).void
          end
          attr_writer :dimensions

          # Optional resource the consumption is attributed to
          sig { returns(T.nilable(String)) }
          attr_reader :resource_id

          sig { params(resource_id: String).void }
          attr_writer :resource_id

          sig { returns(T.nilable(String)) }
          attr_reader :x_account_id

          sig { params(x_account_id: String).void }
          attr_writer :x_account_id

          sig { returns(T.nilable(String)) }
          attr_reader :x_environment_id

          sig { params(x_environment_id: String).void }
          attr_writer :x_environment_id

          sig do
            params(
              amount: Float,
              currency_id: String,
              customer_id: String,
              idempotency_key: String,
              created_at: Time,
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::Credits::ConsumptionConsumeParams::Dimension::Variants
                ],
              resource_id: String,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount of credits to consume
            amount:,
            # The credit currency to consume from (required)
            currency_id:,
            # The customer to consume credits from (required)
            customer_id:,
            # A unique key used to deduplicate the consumption (required)
            idempotency_key:,
            # Optional timestamp the consumption is attributed to
            created_at: nil,
            # Optional dimensions describing the consumption
            dimensions: nil,
            # Optional resource the consumption is attributed to
            resource_id: nil,
            x_account_id: nil,
            x_environment_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                currency_id: String,
                customer_id: String,
                idempotency_key: String,
                created_at: Time,
                dimensions:
                  T::Hash[
                    Symbol,
                    Stigg::V1::Credits::ConsumptionConsumeParams::Dimension::Variants
                  ],
                resource_id: String,
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Dimension
            extend Stigg::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Float, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Credits::ConsumptionConsumeParams::Dimension::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
