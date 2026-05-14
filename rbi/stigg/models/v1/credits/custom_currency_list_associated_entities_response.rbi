# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class CustomCurrencyListAssociatedEntitiesResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse,
                Stigg::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data
              ]
            )
          end
          attr_accessor :data

          # List of entities (plans or addons) that reference a custom currency
          sig do
            params(
              data:
                T::Array[
                  Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Credits::CustomCurrencyListAssociatedEntitiesResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The reference ID of the associated entity
            sig { returns(String) }
            attr_accessor :id

            # The display name of the associated entity
            sig { returns(String) }
            attr_accessor :display_name

            # The kind of entity referencing the currency (e.g., Plan)
            sig { returns(String) }
            attr_accessor :type

            # An entity (plan or addon) that references a custom currency
            sig do
              params(id: String, display_name: String, type: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The reference ID of the associated entity
              id:,
              # The display name of the associated entity
              display_name:,
              # The kind of entity referencing the currency (e.g., Plan)
              type:
            )
            end

            sig do
              override.returns(
                { id: String, display_name: String, type: String }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
