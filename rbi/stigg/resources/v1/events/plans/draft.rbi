# typed: strong

module Stigg
  module Resources
    class V1
      class Events
        class Plans
          class Draft
            # Creates a draft version of an existing plan for modification before publishing.
            sig do
              params(
                id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(Stigg::V1::Events::Plan)
            end
            def create(
              # The unique identifier of the entity
              id,
              request_options: {}
            )
            end

            # Removes a draft version of a plan.
            sig do
              params(
                id: String,
                request_options: Stigg::RequestOptions::OrHash
              ).returns(Stigg::Models::V1::Events::Plans::DraftRemoveResponse)
            end
            def remove(
              # The unique identifier of the entity
              id,
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
end
