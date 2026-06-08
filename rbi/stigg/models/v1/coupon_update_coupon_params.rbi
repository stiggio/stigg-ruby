# typed: strong

module Stigg
  module Models
    module V1
      class CouponUpdateCouponParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::CouponUpdateCouponParams, Stigg::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # Description of the coupon
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Metadata associated with the entity
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        # Name of the coupon
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

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
            id: String,
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            name: String,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Description of the coupon
          description: nil,
          # Metadata associated with the entity
          metadata: nil,
          # Name of the coupon
          name: nil,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              name: String,
              x_account_id: String,
              x_environment_id: String,
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
