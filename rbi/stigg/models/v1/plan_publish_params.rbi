# typed: strong

module Stigg
  module Models
    module V1
      class PlanPublishParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::PlanPublishParams, Stigg::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # Who the published version applies to: NEW_CUSTOMERS (default) leaves existing
        # subscribers on their current version, ALL_CUSTOMERS moves them onto the new
        # version immediately.
        sig { returns(Stigg::V1::PlanPublishParams::MigrationType::OrSymbol) }
        attr_accessor :migration_type

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
            migration_type:
              Stigg::V1::PlanPublishParams::MigrationType::OrSymbol,
            x_account_id: String,
            x_environment_id: String,
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Who the published version applies to: NEW_CUSTOMERS (default) leaves existing
          # subscribers on their current version, ALL_CUSTOMERS moves them onto the new
          # version immediately.
          migration_type:,
          x_account_id: nil,
          x_environment_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              migration_type:
                Stigg::V1::PlanPublishParams::MigrationType::OrSymbol,
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Who the published version applies to: NEW_CUSTOMERS (default) leaves existing
        # subscribers on their current version, ALL_CUSTOMERS moves them onto the new
        # version immediately.
        module MigrationType
          extend Stigg::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Stigg::V1::PlanPublishParams::MigrationType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEW_CUSTOMERS =
            T.let(
              :NEW_CUSTOMERS,
              Stigg::V1::PlanPublishParams::MigrationType::TaggedSymbol
            )
          ALL_CUSTOMERS =
            T.let(
              :ALL_CUSTOMERS,
              Stigg::V1::PlanPublishParams::MigrationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Stigg::V1::PlanPublishParams::MigrationType::TaggedSymbol
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
