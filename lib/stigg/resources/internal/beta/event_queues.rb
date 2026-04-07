# frozen_string_literal: true

module Stigg
  module Resources
    class Internal
      class Beta
        class EventQueues
          # Get event queue by queue name
          #
          # @overload retrieve(queue_name, request_options: {})
          #
          # @param queue_name [String] The queue name identifier
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::Internal::Beta::EventQueueResponse]
          #
          # @see Stigg::Models::Internal::Beta::EventQueueRetrieveParams
          def retrieve(queue_name, params = {})
            @client.request(
              method: :get,
              path: ["internal/beta/event-queues/%1$s", queue_name],
              model: Stigg::Models::Internal::Beta::EventQueueResponse,
              options: params[:request_options]
            )
          end

          # Update event queue configuration
          #
          # @overload update(queue_name, allowed_assume_role_arns: nil, create_low_priority_queues: nil, event_types: nil, request_options: {})
          #
          # @param queue_name [String] The queue name identifier
          #
          # @param allowed_assume_role_arns [Array<String>]
          #
          # @param create_low_priority_queues [Boolean] Whether to create separate low-priority queues for standard topic events
          #
          # @param event_types [Array<Symbol, Stigg::Models::Internal::Beta::EventQueueUpdateParams::EventType>]
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::Internal::Beta::EventQueueResponse]
          #
          # @see Stigg::Models::Internal::Beta::EventQueueUpdateParams
          def update(queue_name, params = {})
            parsed, options = Stigg::Models::Internal::Beta::EventQueueUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["internal/beta/event-queues/%1$s", queue_name],
              body: parsed,
              model: Stigg::Models::Internal::Beta::EventQueueResponse,
              options: options
            )
          end

          # List all event queues for the current environment
          #
          # @overload list(request_options: {})
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::Internal::Beta::EventQueueListResponse]
          #
          # @see Stigg::Models::Internal::Beta::EventQueueListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "internal/beta/event-queues",
              model: Stigg::Models::Internal::Beta::EventQueueListResponse,
              options: params[:request_options]
            )
          end

          # Delete an event queue and tear down its infrastructure
          #
          # @overload delete(queue_name, request_options: {})
          #
          # @param queue_name [String] The queue name identifier
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::Internal::Beta::EventQueueResponse]
          #
          # @see Stigg::Models::Internal::Beta::EventQueueDeleteParams
          def delete(queue_name, params = {})
            @client.request(
              method: :delete,
              path: ["internal/beta/event-queues/%1$s", queue_name],
              model: Stigg::Models::Internal::Beta::EventQueueResponse,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {Stigg::Models::Internal::Beta::EventQueueProvisionParams} for more details.
          #
          # Provision SQS queue, SNS subscriptions, and IAM role for the current environment
          #
          # @overload provision(region:, allowed_assume_role_arns: nil, create_low_priority_queues: nil, event_types: nil, suffix: nil, request_options: {})
          #
          # @param region [Symbol, Stigg::Models::Internal::Beta::EventQueueProvisionParams::Region] AWS region for the SQS queue (e.g., us-east-1, eu-west-1)
          #
          # @param allowed_assume_role_arns [Array<String>] Additional IAM role ARNs allowed to assume the external role for queue access
          #
          # @param create_low_priority_queues [Boolean] Whether to create separate low-priority queues for standard topic events
          #
          # @param event_types [Array<Symbol, Stigg::Models::Internal::Beta::EventQueueProvisionParams::EventType>] Event types to subscribe to. Defaults to entitlements, measurements, and migrati
          #
          # @param suffix [String] Optional suffix to allow multiple queues for the same environment and region
          #
          # @param request_options [Stigg::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Stigg::Models::Internal::Beta::EventQueueResponse]
          #
          # @see Stigg::Models::Internal::Beta::EventQueueProvisionParams
          def provision(params)
            parsed, options = Stigg::Models::Internal::Beta::EventQueueProvisionParams.dump_request(params)
            @client.request(
              method: :post,
              path: "internal/beta/event-queues/provision",
              body: parsed,
              model: Stigg::Models::Internal::Beta::EventQueueResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Stigg::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
