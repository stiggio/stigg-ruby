# typed: strong

module Stigg
  module Models
    module V1
      class EventEstimateCostParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::EventEstimateCostParams, Stigg::Internal::AnyHash)
          end

        # Customer id
        sig { returns(String) }
        attr_accessor :customer_id

        # The name of the usage event
        sig { returns(String) }
        attr_accessor :event_name

        # Dimensions associated with the usage event
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Stigg::V1::EventEstimateCostParams::Dimension::Variants
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
                Stigg::V1::EventEstimateCostParams::Dimension::Variants
              ]
          ).void
        end
        attr_writer :dimensions

        # Resource id
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

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
            event_name: String,
            dimensions:
              T::Hash[
                Symbol,
                Stigg::V1::EventEstimateCostParams::Dimension::Variants
              ],
            resource_id: T.nilable(String),
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer id
          customer_id:,
          # The name of the usage event
          event_name:,
          # Dimensions associated with the usage event
          dimensions: nil,
          # Resource id
          resource_id: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              event_name: String,
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::EventEstimateCostParams::Dimension::Variants
                ],
              resource_id: T.nilable(String),
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
              T::Array[Stigg::V1::EventEstimateCostParams::Dimension::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
