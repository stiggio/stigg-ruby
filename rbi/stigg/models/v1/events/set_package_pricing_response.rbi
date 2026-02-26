# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class SetPackagePricingResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::SetPackagePricingResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Result of setting package pricing.
          sig { returns(Stigg::V1::Events::SetPackagePricingResponse::Data) }
          attr_reader :data

          sig do
            params(
              data: Stigg::V1::Events::SetPackagePricingResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data: Stigg::V1::Events::SetPackagePricingResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Result of setting package pricing.
            data:
          )
          end

          sig do
            override.returns(
              { data: Stigg::V1::Events::SetPackagePricingResponse::Data }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::V1::Events::SetPackagePricingResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The package identifier (refId)
            sig { returns(String) }
            attr_accessor :id

            # The pricing type that was set
            sig do
              returns(
                Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType::TaggedSymbol
              )
            end
            attr_accessor :pricing_type

            # Result of setting package pricing.
            sig do
              params(
                id: String,
                pricing_type:
                  Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The package identifier (refId)
              id:,
              # The pricing type that was set
              pricing_type:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  pricing_type:
                    Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The pricing type that was set
            module PricingType
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FREE =
                T.let(
                  :FREE,
                  Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType::TaggedSymbol
                )
              PAID =
                T.let(
                  :PAID,
                  Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :CUSTOM,
                  Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::V1::Events::SetPackagePricingResponse::Data::PricingType::TaggedSymbol
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
end
