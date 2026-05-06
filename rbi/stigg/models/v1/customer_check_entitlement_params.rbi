# typed: strong

module Stigg
  module Models
    module V1
      class CustomerCheckEntitlementParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Stigg::V1::CustomerCheckEntitlementParams,
              Stigg::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Currency ID (refId) to check for credit entitlements. Mutually exclusive with
        # `featureId`.
        sig { returns(T.nilable(String)) }
        attr_reader :currency_id

        sig { params(currency_id: String).void }
        attr_writer :currency_id

        # Feature ID (refId) to check. Mutually exclusive with `currencyId`.
        sig { returns(T.nilable(String)) }
        attr_reader :feature_id

        sig { params(feature_id: String).void }
        attr_writer :feature_id

        # Requested usage amount to evaluate against the entitlement limit (numeric
        # features only)
        sig { returns(T.nilable(Integer)) }
        attr_reader :requested_usage

        sig { params(requested_usage: Integer).void }
        attr_writer :requested_usage

        # Requested values to evaluate against allowed values (enum features only)
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :requested_values

        sig { params(requested_values: T::Array[String]).void }
        attr_writer :requested_values

        # Resource ID to scope the entitlement check to a specific resource
        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        sig do
          params(
            id: String,
            currency_id: String,
            feature_id: String,
            requested_usage: Integer,
            requested_values: T::Array[String],
            resource_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Currency ID (refId) to check for credit entitlements. Mutually exclusive with
          # `featureId`.
          currency_id: nil,
          # Feature ID (refId) to check. Mutually exclusive with `currencyId`.
          feature_id: nil,
          # Requested usage amount to evaluate against the entitlement limit (numeric
          # features only)
          requested_usage: nil,
          # Requested values to evaluate against allowed values (enum features only)
          requested_values: nil,
          # Resource ID to scope the entitlement check to a specific resource
          resource_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              currency_id: String,
              feature_id: String,
              requested_usage: Integer,
              requested_values: T::Array[String],
              resource_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
