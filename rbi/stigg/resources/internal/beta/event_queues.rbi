# typed: strong

module Stigg
  module Resources
    class Internal
      class Beta
        class EventQueues
          # Get event queue by queue name
          sig do
            params(
              queue_name: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::Internal::Beta::EventQueueResponse)
          end
          def retrieve(
            # The queue name identifier
            queue_name,
            request_options: {}
          )
          end

          # Update event queue configuration
          sig do
            params(
              queue_name: String,
              allowed_assume_role_arns: T::Array[String],
              create_low_priority_queues: T::Boolean,
              event_types:
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType::OrSymbol
                ],
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::Internal::Beta::EventQueueResponse)
          end
          def update(
            # The queue name identifier
            queue_name,
            allowed_assume_role_arns: nil,
            # Whether to create separate low-priority queues for standard topic events
            create_low_priority_queues: nil,
            event_types: nil,
            request_options: {}
          )
          end

          # List all event queues for the current environment
          sig do
            params(request_options: Stigg::RequestOptions::OrHash).returns(
              Stigg::Models::Internal::Beta::EventQueueListResponse
            )
          end
          def list(request_options: {})
          end

          # Delete an event queue and tear down its infrastructure
          sig do
            params(
              queue_name: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::Internal::Beta::EventQueueResponse)
          end
          def delete(
            # The queue name identifier
            queue_name,
            request_options: {}
          )
          end

          # Provision SQS queue, SNS subscriptions, and IAM role for the current environment
          sig do
            params(
              region:
                Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region::OrSymbol,
              allowed_assume_role_arns: T::Array[String],
              create_low_priority_queues: T::Boolean,
              event_types:
                T::Array[
                  Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType::OrSymbol
                ],
              suffix: String,
              request_options: Stigg::RequestOptions::OrHash
            ).returns(Stigg::Models::Internal::Beta::EventQueueResponse)
          end
          def provision(
            # AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
            region:,
            # Additional IAM role ARNs allowed to assume the external role for queue access
            allowed_assume_role_arns: nil,
            # Whether to create separate low-priority queues for standard topic events
            create_low_priority_queues: nil,
            # Event types to subscribe to. Defaults to entitlements, measurements, and
            # migrations.
            event_types: nil,
            # Optional suffix to allow multiple queues for the same environment and region
            suffix: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Stigg::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
