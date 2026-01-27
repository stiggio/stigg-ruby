# typed: strong

module Stigg
  module Models
    class V1CreateUsageParams < Stigg::Internal::Type::BaseModel
      extend Stigg::Internal::Type::RequestParameters::Converter
      include Stigg::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Stigg::V1CreateUsageParams, Stigg::Internal::AnyHash)
        end

      # A list of usage reports to be submitted in bulk
      sig { returns(T::Array[Stigg::V1CreateUsageParams::Usage]) }
      attr_accessor :usages

      sig do
        params(
          usages: T::Array[Stigg::V1CreateUsageParams::Usage::OrHash],
          request_options: Stigg::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of usage reports to be submitted in bulk
        usages:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            usages: T::Array[Stigg::V1CreateUsageParams::Usage],
            request_options: Stigg::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Usage < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Stigg::V1CreateUsageParams::Usage, Stigg::Internal::AnyHash)
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

        # Timestamp of when the record was created
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Additional dimensions for the usage report
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :dimensions

        sig { params(dimensions: T::Hash[Symbol, String]).void }
        attr_writer :dimensions

        # Resource id
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # The method by which the usage value should be updated
        sig do
          returns(
            T.nilable(
              Stigg::V1CreateUsageParams::Usage::UpdateBehavior::OrSymbol
            )
          )
        end
        attr_reader :update_behavior

        sig do
          params(
            update_behavior:
              Stigg::V1CreateUsageParams::Usage::UpdateBehavior::OrSymbol
          ).void
        end
        attr_writer :update_behavior

        sig do
          params(
            customer_id: String,
            feature_id: String,
            value: Integer,
            created_at: Time,
            dimensions: T::Hash[Symbol, String],
            resource_id: T.nilable(String),
            update_behavior:
              Stigg::V1CreateUsageParams::Usage::UpdateBehavior::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer id
          customer_id:,
          # Feature id
          feature_id:,
          # The value to report for usage
          value:,
          # Timestamp of when the record was created
          created_at: nil,
          # Additional dimensions for the usage report
          dimensions: nil,
          # Resource id
          resource_id: nil,
          # The method by which the usage value should be updated
          update_behavior: nil
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              feature_id: String,
              value: Integer,
              created_at: Time,
              dimensions: T::Hash[Symbol, String],
              resource_id: T.nilable(String),
              update_behavior:
                Stigg::V1CreateUsageParams::Usage::UpdateBehavior::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The method by which the usage value should be updated
        module UpdateBehavior
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1CreateUsageParams::Usage::UpdateBehavior)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELTA =
            T.let(
              :DELTA,
              Stigg::V1CreateUsageParams::Usage::UpdateBehavior::TaggedSymbol
            )
          SET =
            T.let(
              :SET,
              Stigg::V1CreateUsageParams::Usage::UpdateBehavior::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1CreateUsageParams::Usage::UpdateBehavior::TaggedSymbol
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
