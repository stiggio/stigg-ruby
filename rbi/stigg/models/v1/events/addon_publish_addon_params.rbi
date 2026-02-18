# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class AddonPublishAddonParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Events::AddonPublishAddonParams,
                Stigg::Internal::AnyHash
              )
            end

          # The migration type of the package
          sig do
            returns(
              Stigg::V1::Events::AddonPublishAddonParams::MigrationType::OrSymbol
            )
          end
          attr_accessor :migration_type

          sig do
            params(
              migration_type:
                Stigg::V1::Events::AddonPublishAddonParams::MigrationType::OrSymbol,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The migration type of the package
            migration_type:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                migration_type:
                  Stigg::V1::Events::AddonPublishAddonParams::MigrationType::OrSymbol,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          # The migration type of the package
          module MigrationType
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Events::AddonPublishAddonParams::MigrationType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEW_CUSTOMERS =
              T.let(
                :NEW_CUSTOMERS,
                Stigg::V1::Events::AddonPublishAddonParams::MigrationType::TaggedSymbol
              )
            ALL_CUSTOMERS =
              T.let(
                :ALL_CUSTOMERS,
                Stigg::V1::Events::AddonPublishAddonParams::MigrationType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Events::AddonPublishAddonParams::MigrationType::TaggedSymbol
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
