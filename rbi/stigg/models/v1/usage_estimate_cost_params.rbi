# typed: strong

module Stigg
  module Models
    module V1
      class UsageEstimateCostParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::UsageEstimateCostParams, Stigg::Internal::AnyHash)
          end

        # Customer id
        sig { returns(String) }
        attr_accessor :customer_id

        # Feature id
        sig { returns(String) }
        attr_accessor :feature_id

        # The value to report for usage
        sig { returns(Integer) }
        attr_accessor :value

        # Additional dimensions for the usage report
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Stigg::V1::UsageEstimateCostParams::Dimension::Variants
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
                Stigg::V1::UsageEstimateCostParams::Dimension::Variants
              ]
          ).void
        end
        attr_writer :dimensions

        # Resource id
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # The method by which the usage value should be updated
        sig do
          returns(
            T.nilable(
              Stigg::V1::UsageEstimateCostParams::UpdateBehavior::OrSymbol
            )
          )
        end
        attr_reader :update_behavior

        sig do
          params(
            update_behavior:
              Stigg::V1::UsageEstimateCostParams::UpdateBehavior::OrSymbol
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
            value: Integer,
            dimensions:
              T::Hash[
                Symbol,
                Stigg::V1::UsageEstimateCostParams::Dimension::Variants
              ],
            resource_id: T.nilable(String),
            update_behavior:
              Stigg::V1::UsageEstimateCostParams::UpdateBehavior::OrSymbol,
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
          # The value to report for usage
          value:,
          # Additional dimensions for the usage report
          dimensions: nil,
          # Resource id
          resource_id: nil,
          # The method by which the usage value should be updated
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
              value: Integer,
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::UsageEstimateCostParams::Dimension::Variants
                ],
              resource_id: T.nilable(String),
              update_behavior:
                Stigg::V1::UsageEstimateCostParams::UpdateBehavior::OrSymbol,
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
              T::Array[Stigg::V1::UsageEstimateCostParams::Dimension::Variants]
            )
          end
          def self.variants
          end
        end

        # The method by which the usage value should be updated
        module UpdateBehavior
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::UsageEstimateCostParams::UpdateBehavior)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELTA =
            T.let(
              :DELTA,
              Stigg::V1::UsageEstimateCostParams::UpdateBehavior::TaggedSymbol
            )
          SET =
            T.let(
              :SET,
              Stigg::V1::UsageEstimateCostParams::UpdateBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::UsageEstimateCostParams::UpdateBehavior::TaggedSymbol
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
