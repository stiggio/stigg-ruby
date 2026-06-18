# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1Beta::Customers::AssignmentsTest < Stigg::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.assignments.list("id")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1Beta::Customers::AssignmentListResponse
    end

    assert_pattern do
      row => {
        id: String,
        cadence: Stigg::Models::V1Beta::Customers::AssignmentListResponse::Cadence,
        created_at: Time,
        entity_id: String,
        parent_id: String | nil,
        scope_entity_ids: ^(Stigg::Internal::Type::ArrayOf[String]),
        updated_at: Time,
        usage_limit: Float | nil,
        currency_id: String | nil,
        feature_id: String | nil
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1_beta.customers.assignments.upsert(
        "id",
        assignments: [{entityId: "workspace-001"}, {entityId: "workspace-002"}]
      )

    assert_pattern do
      response => Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse
    end

    assert_pattern do
      response => {
        data: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1Beta::Customers::AssignmentUpsertResponse::Data])
      }
    end
  end
end
