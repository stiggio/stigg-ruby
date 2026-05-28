# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Stigg::Test::Resources::V1::Events::Beta::Customers::AssignmentsTest < Stigg::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.beta.customers.assignments.list("id")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::Events::Beta::Customers::AssignmentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        cadence: Stigg::Models::V1::Events::Beta::Customers::AssignmentListResponse::Cadence,
        capability_id: String,
        created_at: Time,
        entity_id: String,
        updated_at: Time,
        usage_limit: Float
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.events.beta.customers.assignments.upsert(
        "id",
        assignments: [
          {capabilityId: "compute-minutes", entityId: "workspace-001"},
          {capabilityId: "compute-minutes", entityId: "workspace-002"}
        ]
      )

    assert_pattern do
      response => Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::Events::Beta::Customers::AssignmentUpsertResponse::Data])
      }
    end
  end
end
