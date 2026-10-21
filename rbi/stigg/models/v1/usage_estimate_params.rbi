# typed: strong

module Stigg
  module Models
    module V1
      class UsageEstimateParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::UsageEstimateParams, Stigg::Internal::AnyHash)
          end

        # Customer id
        sig { returns(String) }
        attr_accessor :customer_id

        # Feature id
        sig { returns(String) }
        attr_accessor :feature_id

        # The value to report for usage. Fractional values are accepted and rounded half
        # away from zero to 5 decimal places. A value with a fractional part must have an
        # absolute value below 34,359,738,368 (2^35); whole numbers are accepted up to
        # ±9,007,199,254,740,991.
        sig { returns(Float) }
        attr_accessor :value

        # Additional dimensions for the usage report
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Stigg::V1::UsageEstimateParams::Dimension::Variants
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
                Stigg::V1::UsageEstimateParams::Dimension::Variants
              ]
          ).void
        end
        attr_writer :dimensions

        # The customer resource this usage applies to. Optional — only required if the
        # customer has multiple resources (for example, one subscription per workspace or
        # site) and usage needs to be tracked separately per resource; omit it to report
        # usage at the customer level.
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # How the reported value is applied: DELTA (default) adds it to the feature's
        # current usage; SET treats it as the new absolute usage total, and Stigg computes
        # the delta internally.
        sig do
          returns(
            T.nilable(Stigg::V1::UsageEstimateParams::UpdateBehavior::OrSymbol)
          )
        end
        attr_reader :update_behavior

        sig do
          params(
            update_behavior:
              Stigg::V1::UsageEstimateParams::UpdateBehavior::OrSymbol
          ).void
        end
        attr_writer :update_behavior

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
            customer_id: String,
            feature_id: String,
            value: Float,
            dimensions:
              T::Hash[
                Symbol,
                Stigg::V1::UsageEstimateParams::Dimension::Variants
              ],
            resource_id: T.nilable(String),
            update_behavior:
              Stigg::V1::UsageEstimateParams::UpdateBehavior::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer id
          customer_id:,
          # Feature id
          feature_id:,
          # The value to report for usage. Fractional values are accepted and rounded half
          # away from zero to 5 decimal places. A value with a fractional part must have an
          # absolute value below 34,359,738,368 (2^35); whole numbers are accepted up to
          # ±9,007,199,254,740,991.
          value:,
          # Additional dimensions for the usage report
          dimensions: nil,
          # The customer resource this usage applies to. Optional — only required if the
          # customer has multiple resources (for example, one subscription per workspace or
          # site) and usage needs to be tracked separately per resource; omit it to report
          # usage at the customer level.
          resource_id: nil,
          # How the reported value is applied: DELTA (default) adds it to the feature's
          # current usage; SET treats it as the new absolute usage total, and Stigg computes
          # the delta internally.
          update_behavior: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              feature_id: String,
              value: Float,
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::UsageEstimateParams::Dimension::Variants
                ],
              resource_id: T.nilable(String),
              update_behavior:
                Stigg::V1::UsageEstimateParams::UpdateBehavior::OrSymbol,
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
              T::Array[Stigg::V1::UsageEstimateParams::Dimension::Variants]
            )
          end
          def self.variants
          end
        end

        # How the reported value is applied: DELTA (default) adds it to the feature's
        # current usage; SET treats it as the new absolute usage total, and Stigg computes
        # the delta internally.
        module UpdateBehavior
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::UsageEstimateParams::UpdateBehavior)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELTA =
            T.let(
              :DELTA,
              Stigg::V1::UsageEstimateParams::UpdateBehavior::TaggedSymbol
            )
          SET =
            T.let(
              :SET,
              Stigg::V1::UsageEstimateParams::UpdateBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::UsageEstimateParams::UpdateBehavior::TaggedSymbol
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
