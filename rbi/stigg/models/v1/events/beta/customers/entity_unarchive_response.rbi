# typed: strong

module Stigg
  module Models
    module V1
      module Events
        module Beta
          module Customers
            class EntityUnarchiveResponse < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse,
                    Stigg::Internal::AnyHash
                  )
                end

              # List of entity identifiers that were acted on
              sig do
                returns(
                  Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data
                )
              end
              attr_reader :data

              sig do
                params(
                  data:
                    Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data::OrHash
                ).void
              end
              attr_writer :data

              # Wrapped response echoing the ids that were acted on by an archive/unarchive call
              sig do
                params(
                  data:
                    Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # List of entity identifiers that were acted on
                data:
              )
              end

              sig do
                override.returns(
                  {
                    data:
                      Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data
                  }
                )
              end
              def to_hash
              end

              class Data < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Events::Beta::Customers::EntityUnarchiveResponse::Data,
                      Stigg::Internal::AnyHash
                    )
                  end

                # Entity identifiers to act on
                sig { returns(T::Array[String]) }
                attr_accessor :ids

                # List of entity identifiers that were acted on
                sig { params(ids: T::Array[String]).returns(T.attached_class) }
                def self.new(
                  # Entity identifiers to act on
                  ids:
                )
                end

                sig { override.returns({ ids: T::Array[String] }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
