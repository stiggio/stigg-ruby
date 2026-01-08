# typed: strong

module Stigg
  module Models
    class V1CreateUsageResponse < Stigg::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Stigg::Models::V1CreateUsageResponse, Stigg::Internal::AnyHash)
        end

      sig { returns(T::Array[Stigg::Models::V1CreateUsageResponse::Data]) }
      attr_accessor :data

      sig do
        params(
          data: T::Array[Stigg::Models::V1CreateUsageResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: T::Array[Stigg::Models::V1CreateUsageResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1CreateUsageResponse::Data,
              Stigg::Internal::AnyHash
            )
          end

        # Unique identifier for the entity
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the record was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Customer id
        sig { returns(String) }
        attr_accessor :customer_id

        # Feature id
        sig { returns(String) }
        attr_accessor :feature_id

        # Timestamp
        sig { returns(Time) }
        attr_accessor :timestamp

        # The usage measurement record
        sig { returns(Float) }
        attr_accessor :value

        # The current measured usage value
        sig { returns(T.nilable(Float)) }
        attr_accessor :current_usage

        # The date when the next usage reset will occur
        sig { returns(T.nilable(Time)) }
        attr_accessor :next_reset_date

        # Resource id
        sig { returns(T.nilable(String)) }
        attr_accessor :resource_id

        # The end date of the usage period in which this measurement resides (for
        # entitlements with a reset period)
        sig { returns(T.nilable(Time)) }
        attr_accessor :usage_period_end

        # The start date of the usage period in which this measurement resides (for
        # entitlements with a reset period)
        sig { returns(T.nilable(Time)) }
        attr_accessor :usage_period_start

        sig do
          params(
            id: String,
            created_at: Time,
            customer_id: String,
            feature_id: String,
            timestamp: Time,
            value: Float,
            current_usage: T.nilable(Float),
            next_reset_date: T.nilable(Time),
            resource_id: T.nilable(String),
            usage_period_end: T.nilable(Time),
            usage_period_start: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the entity
          id:,
          # Timestamp of when the record was created
          created_at:,
          # Customer id
          customer_id:,
          # Feature id
          feature_id:,
          # Timestamp
          timestamp:,
          # The usage measurement record
          value:,
          # The current measured usage value
          current_usage: nil,
          # The date when the next usage reset will occur
          next_reset_date: nil,
          # Resource id
          resource_id: nil,
          # The end date of the usage period in which this measurement resides (for
          # entitlements with a reset period)
          usage_period_end: nil,
          # The start date of the usage period in which this measurement resides (for
          # entitlements with a reset period)
          usage_period_start: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              customer_id: String,
              feature_id: String,
              timestamp: Time,
              value: Float,
              current_usage: T.nilable(Float),
              next_reset_date: T.nilable(Time),
              resource_id: T.nilable(String),
              usage_period_end: T.nilable(Time),
              usage_period_start: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
