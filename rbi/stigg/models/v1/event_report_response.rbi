# typed: strong

module Stigg
  module Models
    module V1
      class EventReportResponse < Stigg::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Stigg::Models::V1::EventReportResponse,
              Stigg::Internal::AnyHash
            )
          end

        # Empty success response confirming that events were successfully ingested and
        # queued for processing by Stigg's metering system.
        sig { returns(T.anything) }
        attr_accessor :data

        # Response object
        sig { params(data: T.anything).returns(T.attached_class) }
        def self.new(
          # Empty success response confirming that events were successfully ingested and
          # queued for processing by Stigg's metering system.
          data:
        )
        end

        sig { override.returns({ data: T.anything }) }
        def to_hash
        end
      end
    end
  end
end
