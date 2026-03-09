# typed: strong

module Stigg
  module Models
    module V1
      module Events
        class CreditGetUsageResponse < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::Events::CreditGetUsageResponse,
                Stigg::Internal::AnyHash
              )
            end

          # Credit usage data grouped by feature with time-series points
          sig do
            returns(Stigg::Models::V1::Events::CreditGetUsageResponse::Data)
          end
          attr_reader :data

          sig do
            params(
              data:
                Stigg::Models::V1::Events::CreditGetUsageResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response object
          sig do
            params(
              data:
                Stigg::Models::V1::Events::CreditGetUsageResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Credit usage data grouped by feature with time-series points
            data:
          )
          end

          sig do
            override.returns(
              { data: Stigg::Models::V1::Events::CreditGetUsageResponse::Data }
            )
          end
          def to_hash
          end

          class Data < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::Events::CreditGetUsageResponse::Data,
                  Stigg::Internal::AnyHash
                )
              end

            # The custom currency used for credit measurement
            sig do
              returns(
                T.nilable(
                  Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency
                )
              )
            end
            attr_reader :currency

            sig do
              params(
                currency:
                  T.nilable(
                    Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency::OrHash
                  )
              ).void
            end
            attr_writer :currency

            # Credit usage series grouped by feature
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series
                ]
              )
            end
            attr_accessor :series

            # Credit usage data grouped by feature with time-series points
            sig do
              params(
                currency:
                  T.nilable(
                    Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency::OrHash
                  ),
                series:
                  T::Array[
                    Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The custom currency used for credit measurement
              currency:,
              # Credit usage series grouped by feature
              series:
            )
            end

            sig do
              override.returns(
                {
                  currency:
                    T.nilable(
                      Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency
                    ),
                  series:
                    T::Array[
                      Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series
                    ]
                }
              )
            end
            def to_hash
            end

            class Currency < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Currency,
                    Stigg::Internal::AnyHash
                  )
                end

              # The currency identifier
              sig { returns(String) }
              attr_accessor :currency_id

              # The display name of the currency
              sig { returns(String) }
              attr_accessor :display_name

              # Plural unit label
              sig { returns(T.nilable(String)) }
              attr_accessor :plural

              # Singular unit label
              sig { returns(T.nilable(String)) }
              attr_accessor :singular

              # The currency symbol
              sig { returns(T.nilable(String)) }
              attr_accessor :symbol

              # The custom currency used for credit measurement
              sig do
                params(
                  currency_id: String,
                  display_name: String,
                  plural: T.nilable(String),
                  singular: T.nilable(String),
                  symbol: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The currency identifier
                currency_id:,
                # The display name of the currency
                display_name:,
                # Plural unit label
                plural:,
                # Singular unit label
                singular:,
                # The currency symbol
                symbol:
              )
              end

              sig do
                override.returns(
                  {
                    currency_id: String,
                    display_name: String,
                    plural: T.nilable(String),
                    singular: T.nilable(String),
                    symbol: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Series < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series,
                    Stigg::Internal::AnyHash
                  )
                end

              # The feature ID
              sig { returns(String) }
              attr_accessor :feature_id

              # The display name of the feature
              sig { returns(String) }
              attr_accessor :feature_name

              # Time-series data points for this feature
              sig do
                returns(
                  T::Array[
                    Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::Point
                  ]
                )
              end
              attr_accessor :points

              # Total credits consumed by this feature in the time range
              sig { returns(Float) }
              attr_accessor :total_credits

              # Credit usage data for a single feature
              sig do
                params(
                  feature_id: String,
                  feature_name: String,
                  points:
                    T::Array[
                      Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::Point::OrHash
                    ],
                  total_credits: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # The feature ID
                feature_id:,
                # The display name of the feature
                feature_name:,
                # Time-series data points for this feature
                points:,
                # Total credits consumed by this feature in the time range
                total_credits:
              )
              end

              sig do
                override.returns(
                  {
                    feature_id: String,
                    feature_name: String,
                    points:
                      T::Array[
                        Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::Point
                      ],
                    total_credits: Float
                  }
                )
              end
              def to_hash
              end

              class Point < Stigg::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Stigg::Models::V1::Events::CreditGetUsageResponse::Data::Series::Point,
                      Stigg::Internal::AnyHash
                    )
                  end

                # The timestamp of the data point
                sig { returns(Time) }
                attr_accessor :timestamp

                # The credit usage value at this point
                sig { returns(Float) }
                attr_accessor :value

                # A single data point in the credit usage time series
                sig do
                  params(timestamp: Time, value: Float).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # The timestamp of the data point
                  timestamp:,
                  # The credit usage value at this point
                  value:
                )
                end

                sig { override.returns({ timestamp: Time, value: Float }) }
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
