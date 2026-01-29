# typed: strong

module Stigg
  module Models
    module V1
      class UsageHistoryResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::UsageHistoryResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Historical usage time series
        sig { returns(Stigg::Models::V1::UsageHistoryResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Stigg::Models::V1::UsageHistoryResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Response object
        sig do
          params(
            data: Stigg::Models::V1::UsageHistoryResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Historical usage time series
          data:
        )
        end

        sig do
          override.returns(
            { data: Stigg::Models::V1::UsageHistoryResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::Models::V1::UsageHistoryResponse::Data,
                Stigg::Internal::AnyHash
              )
            end

          # Markers for events that affecting feature usage
          sig do
            returns(
              T::Array[Stigg::Models::V1::UsageHistoryResponse::Data::Marker]
            )
          end
          attr_accessor :markers

          # Series of usage history
          sig do
            returns(
              T::Array[Stigg::Models::V1::UsageHistoryResponse::Data::Series]
            )
          end
          attr_accessor :series

          # Historical usage time series
          sig do
            params(
              markers:
                T::Array[
                  Stigg::Models::V1::UsageHistoryResponse::Data::Marker::OrHash
                ],
              series:
                T::Array[
                  Stigg::Models::V1::UsageHistoryResponse::Data::Series::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Markers for events that affecting feature usage
            markers:,
            # Series of usage history
            series:
          )
          end

          sig do
            override.returns(
              {
                markers:
                  T::Array[
                    Stigg::Models::V1::UsageHistoryResponse::Data::Marker
                  ],
                series:
                  T::Array[
                    Stigg::Models::V1::UsageHistoryResponse::Data::Series
                  ]
              }
            )
          end
          def to_hash
          end

          class Marker < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::UsageHistoryResponse::Data::Marker,
                  Stigg::Internal::AnyHash
                )
              end

            # Timestamp of the marker
            sig { returns(Time) }
            attr_accessor :timestamp

            # Type of marker for a usage history point
            sig do
              returns(
                Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # Usage reset or change marker
            sig do
              params(
                timestamp: Time,
                type:
                  Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Timestamp of the marker
              timestamp:,
              # Type of marker for a usage history point
              type:
            )
            end

            sig do
              override.returns(
                {
                  timestamp: Time,
                  type:
                    Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Type of marker for a usage history point
            module Type
              extend Stigg::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PERIODIC_RESET =
                T.let(
                  :PERIODIC_RESET,
                  Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type::TaggedSymbol
                )
              SUBSCRIPTION_CHANGE_RESET =
                T.let(
                  :SUBSCRIPTION_CHANGE_RESET,
                  Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Stigg::Models::V1::UsageHistoryResponse::Data::Marker::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Series < Stigg::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Stigg::Models::V1::UsageHistoryResponse::Data::Series,
                  Stigg::Internal::AnyHash
                )
              end

            # Points in the usage history series
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point
                ]
              )
            end
            attr_accessor :points

            # Tags for the usage history series
            sig do
              returns(
                T::Array[
                  Stigg::Models::V1::UsageHistoryResponse::Data::Series::Tag
                ]
              )
            end
            attr_accessor :tags

            # Usage data points with tags
            sig do
              params(
                points:
                  T::Array[
                    Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point::OrHash
                  ],
                tags:
                  T::Array[
                    Stigg::Models::V1::UsageHistoryResponse::Data::Series::Tag::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Points in the usage history series
              points:,
              # Tags for the usage history series
              tags:
            )
            end

            sig do
              override.returns(
                {
                  points:
                    T::Array[
                      Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point
                    ],
                  tags:
                    T::Array[
                      Stigg::Models::V1::UsageHistoryResponse::Data::Series::Tag
                    ]
                }
              )
            end
            def to_hash
            end

            class Point < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::UsageHistoryResponse::Data::Series::Point,
                    Stigg::Internal::AnyHash
                  )
                end

              # Indicates whether there was usage reset in this point, see `markers` for details
              sig { returns(T::Boolean) }
              attr_accessor :is_reset_point

              # Timestamp of the usage history point
              sig { returns(Time) }
              attr_accessor :timestamp

              # Value of the usage history point
              sig { returns(Float) }
              attr_accessor :value

              # Single usage data point
              sig do
                params(
                  is_reset_point: T::Boolean,
                  timestamp: Time,
                  value: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Indicates whether there was usage reset in this point, see `markers` for details
                is_reset_point:,
                # Timestamp of the usage history point
                timestamp:,
                # Value of the usage history point
                value:
              )
              end

              sig do
                override.returns(
                  { is_reset_point: T::Boolean, timestamp: Time, value: Float }
                )
              end
              def to_hash
              end
            end

            class Tag < Stigg::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Stigg::Models::V1::UsageHistoryResponse::Data::Series::Tag,
                    Stigg::Internal::AnyHash
                  )
                end

              # Key of the tag
              sig { returns(String) }
              attr_accessor :key

              # Value of the tag
              sig { returns(String) }
              attr_accessor :value

              # Grouping tag key-value
              sig do
                params(key: String, value: String).returns(T.attached_class)
              end
              def self.new(
                # Key of the tag
                key:,
                # Value of the tag
                value:
              )
              end

              sig { override.returns({ key: String, value: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
