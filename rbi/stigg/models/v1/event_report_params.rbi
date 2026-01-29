# typed: strong

module Stigg
  module Models
    module V1
      class EventReportParams < Stigg::Internal::Type::BaseModel
        extend Stigg::Internal::Type::RequestParameters::Converter
        include Stigg::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Stigg::V1::EventReportParams, Stigg::Internal::AnyHash)
          end

        # A list of usage events to report
        sig { returns(T::Array[Stigg::V1::EventReportParams::Event]) }
        attr_accessor :events

        sig do
          params(
            events: T::Array[Stigg::V1::EventReportParams::Event::OrHash],
            request_options: Stigg::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of usage events to report
          events:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              events: T::Array[Stigg::V1::EventReportParams::Event],
              request_options: Stigg::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Event < Stigg::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Stigg::V1::EventReportParams::Event,
                Stigg::Internal::AnyHash
              )
            end

          # Customer id
          sig { returns(String) }
          attr_accessor :customer_id

          # The name of the usage event
          sig { returns(String) }
          attr_accessor :event_name

          # Idempotency key
          sig { returns(String) }
          attr_accessor :idempotency_key

          # Dimensions associated with the usage event
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  Stigg::V1::EventReportParams::Event::Dimension::Variants
                ]
              )
            )
          end
          attr_reader :dimensions

          sig do
            params(
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::EventReportParams::Event::Dimension::Variants
                ]
            ).void
          end
          attr_writer :dimensions

          # Resource id
          sig { returns(T.nilable(String)) }
          attr_accessor :resource_id

          # Timestamp
          sig { returns(T.nilable(Time)) }
          attr_reader :timestamp

          sig { params(timestamp: Time).void }
          attr_writer :timestamp

          # Raw usage event
          sig do
            params(
              customer_id: String,
              event_name: String,
              idempotency_key: String,
              dimensions:
                T::Hash[
                  Symbol,
                  Stigg::V1::EventReportParams::Event::Dimension::Variants
                ],
              resource_id: T.nilable(String),
              timestamp: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Customer id
            customer_id:,
            # The name of the usage event
            event_name:,
            # Idempotency key
            idempotency_key:,
            # Dimensions associated with the usage event
            dimensions: nil,
            # Resource id
            resource_id: nil,
            # Timestamp
            timestamp: nil
          )
          end

          sig do
            override.returns(
              {
                customer_id: String,
                event_name: String,
                idempotency_key: String,
                dimensions:
                  T::Hash[
                    Symbol,
                    Stigg::V1::EventReportParams::Event::Dimension::Variants
                  ],
                resource_id: T.nilable(String),
                timestamp: Time
              }
            )
          end
          def to_hash
          end

          module Dimension
            extend Stigg::Internal::Type::Union

            Variants = T.type_alias { T.any(String, Float, T::Boolean) }

            sig do
              override.returns(
                T::Array[
                  Stigg::V1::EventReportParams::Event::Dimension::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
