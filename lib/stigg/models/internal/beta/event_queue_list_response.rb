# frozen_string_literal: true

module Stigg
  module Models
    module Internal
      module Beta
        # @see Stigg::Resources::Internal::Beta::EventQueues#list
        class EventQueueListResponse < Stigg::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Stigg::Models::Internal::Beta::EventQueueListResponse::Data>]
          required :data,
                   -> { Stigg::Internal::Type::ArrayOf[Stigg::Models::Internal::Beta::EventQueueListResponse::Data] }

          # @!attribute pagination
          #   Pagination metadata including cursors for navigating through results
          #
          #   @return [Stigg::Models::Internal::Beta::EventQueueListResponse::Pagination]
          required :pagination, -> { Stigg::Models::Internal::Beta::EventQueueListResponse::Pagination }

          # @!method initialize(data:, pagination:)
          #   Response list object
          #
          #   @param data [Array<Stigg::Models::Internal::Beta::EventQueueListResponse::Data>]
          #
          #   @param pagination [Stigg::Models::Internal::Beta::EventQueueListResponse::Pagination] Pagination metadata including cursors for navigating through results

          class Data < Stigg::Internal::Type::BaseModel
            # @!attribute created_at
            #   Timestamp of when the record was created
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute queue_name
            #   Unique queue identifier
            #
            #   @return [String]
            required :queue_name, String, api_name: :queueName

            # @!attribute region
            #   AWS region where the queue is deployed
            #
            #   @return [Symbol, Stigg::Models::Internal::Beta::EventQueueListResponse::Data::Region]
            required :region, enum: -> { Stigg::Models::Internal::Beta::EventQueueListResponse::Data::Region }

            # @!attribute status
            #   Current provisioning status
            #
            #   @return [Symbol, Stigg::Models::Internal::Beta::EventQueueListResponse::Data::Status]
            required :status, enum: -> { Stigg::Models::Internal::Beta::EventQueueListResponse::Data::Status }

            # @!attribute updated_at
            #   Timestamp of when the record was last updated
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute queue_url
            #   SQS queue URL
            #
            #   @return [String, nil]
            optional :queue_url, String, api_name: :queueUrl, nil?: true

            # @!attribute role_arn
            #   IAM role ARN for queue access
            #
            #   @return [String, nil]
            optional :role_arn, String, api_name: :roleArn, nil?: true

            # @!attribute suffix
            #   Queue suffix for disambiguation
            #
            #   @return [String, nil]
            optional :suffix, String, nil?: true

            # @!method initialize(created_at:, queue_name:, region:, status:, updated_at:, queue_url: nil, role_arn: nil, suffix: nil)
            #   Event queue provisioning status and details
            #
            #   @param created_at [Time] Timestamp of when the record was created
            #
            #   @param queue_name [String] Unique queue identifier
            #
            #   @param region [Symbol, Stigg::Models::Internal::Beta::EventQueueListResponse::Data::Region] AWS region where the queue is deployed
            #
            #   @param status [Symbol, Stigg::Models::Internal::Beta::EventQueueListResponse::Data::Status] Current provisioning status
            #
            #   @param updated_at [Time] Timestamp of when the record was last updated
            #
            #   @param queue_url [String, nil] SQS queue URL
            #
            #   @param role_arn [String, nil] IAM role ARN for queue access
            #
            #   @param suffix [String, nil] Queue suffix for disambiguation

            # AWS region where the queue is deployed
            #
            # @see Stigg::Models::Internal::Beta::EventQueueListResponse::Data#region
            module Region
              extend Stigg::Internal::Type::Enum

              US_EAST_1 = :"us-east-1"
              US_EAST_2 = :"us-east-2"
              US_WEST_1 = :"us-west-1"
              US_WEST_2 = :"us-west-2"
              CA_CENTRAL_1 = :"ca-central-1"
              EU_WEST_1 = :"eu-west-1"
              EU_WEST_2 = :"eu-west-2"
              EU_WEST_3 = :"eu-west-3"
              EU_CENTRAL_1 = :"eu-central-1"
              EU_CENTRAL_2 = :"eu-central-2"
              EU_NORTH_1 = :"eu-north-1"
              EU_SOUTH_1 = :"eu-south-1"
              EU_SOUTH_2 = :"eu-south-2"
              AP_SOUTHEAST_1 = :"ap-southeast-1"
              AP_SOUTHEAST_2 = :"ap-southeast-2"
              AP_SOUTHEAST_3 = :"ap-southeast-3"
              AP_NORTHEAST_1 = :"ap-northeast-1"
              AP_NORTHEAST_2 = :"ap-northeast-2"
              AP_NORTHEAST_3 = :"ap-northeast-3"
              AP_SOUTH_1 = :"ap-south-1"
              AP_SOUTH_2 = :"ap-south-2"
              AP_EAST_1 = :"ap-east-1"
              SA_EAST_1 = :"sa-east-1"
              AF_SOUTH_1 = :"af-south-1"
              ME_SOUTH_1 = :"me-south-1"
              ME_CENTRAL_1 = :"me-central-1"
              IL_CENTRAL_1 = :"il-central-1"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Current provisioning status
            #
            # @see Stigg::Models::Internal::Beta::EventQueueListResponse::Data#status
            module Status
              extend Stigg::Internal::Type::Enum

              PROVISIONING = :PROVISIONING
              ACTIVE = :ACTIVE
              FAILED = :FAILED
              DEPROVISIONING = :DEPROVISIONING

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Stigg::Models::Internal::Beta::EventQueueListResponse#pagination
          class Pagination < Stigg::Internal::Type::BaseModel
            # @!attribute next_
            #   Cursor for fetching the next page of results, or null if no additional pages
            #   exist
            #
            #   @return [String, nil]
            required :next_, String, api_name: :next, nil?: true

            # @!attribute prev
            #   Cursor for fetching the previous page of results, or null if at the beginning
            #
            #   @return [String, nil]
            required :prev, String, nil?: true

            # @!method initialize(next_:, prev:)
            #   Some parameter documentations has been truncated, see
            #   {Stigg::Models::Internal::Beta::EventQueueListResponse::Pagination} for more
            #   details.
            #
            #   Pagination metadata including cursors for navigating through results
            #
            #   @param next_ [String, nil] Cursor for fetching the next page of results, or null if no additional pages exi
            #
            #   @param prev [String, nil] Cursor for fetching the previous page of results, or null if at the beginning
          end
        end
      end
    end
  end
end
