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

        sig do
          params(
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            name: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Description of the coupon
          description: nil,
          # Metadata associated with the entity
          metadata: nil,
          # Name of the coupon
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              description: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, String]),
              name: String,
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
