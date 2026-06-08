# typed: strong

module Stigg
  module Models
    module V1
      module Credits
        class CustomCurrencyListParams < Stigg::Internal::Type::BaseModel
          extend Stigg::Internal::Type::RequestParameters::Converter
          include Stigg::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::Credits::CustomCurrencyListParams,
                Stigg::Internal::AnyHash
              )
            end

          # Return items that come after this cursor
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Return items that come before this cursor
          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          # Maximum number of items to return
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Filter by custom currency status. Supports comma-separated values (e.g.,
          # `ACTIVE,ARCHIVED`). Defaults to `ACTIVE`.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Stigg::V1::Credits::CustomCurrencyListParams::Status::OrSymbol
                ]
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                T::Array[
                  Stigg::V1::Credits::CustomCurrencyListParams::Status::OrSymbol
                ]
            ).void
          end
          attr_writer :status

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
              after: String,
              before: String,
              limit: Integer,
              status:
                T::Array[
                  Stigg::V1::Credits::CustomCurrencyListParams::Status::OrSymbol
                ],
              x_account_id: String,
              x_environment_id: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Return items that come after this cursor
            after: nil,
            # Return items that come before this cursor
            before: nil,
            # Maximum number of items to return
            limit: nil,
            # Filter by custom currency status. Supports comma-separated values (e.g.,
            # `ACTIVE,ARCHIVED`). Defaults to `ACTIVE`.
            status: nil,
            x_account_id: nil,
            x_environment_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                after: String,
                before: String,
                limit: Integer,
                status:
                  T::Array[
                    Stigg::V1::Credits::CustomCurrencyListParams::Status::OrSymbol
                  ],
                x_account_id: String,
                x_environment_id: String,
                request_options: Stigg::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Status
            extend Stigg::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Stigg::V1::Credits::CustomCurrencyListParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :ACTIVE,
                Stigg::V1::Credits::CustomCurrencyListParams::Status::TaggedSymbol
              )
            ARCHIVED =
              T.let(
                :ARCHIVED,
                Stigg::V1::Credits::CustomCurrencyListParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::Credits::CustomCurrencyListParams::Status::TaggedSymbol
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
