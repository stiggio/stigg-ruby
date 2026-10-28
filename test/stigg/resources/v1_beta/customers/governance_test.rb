# frozen_string_literal: true

require_relative "../../../test_helper"

class Stigg::Test::Resources::V1Beta::Customers::GovernanceTest < Stigg::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @stigg.v1_beta.customers.governance.list("id")

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1Beta::Customers::GovernanceListResponse
    end

    assert_pattern do
      row => {
        cadence: String | nil,
        current_usage: Float | nil,
        display_name: String | nil,
        entity_id: String,
        entity_type_id: String,
        parent_id: String | nil,
        scope_entity_ids: ^(Stigg::Internal::Type::ArrayOf[String]),
        usage_limit: Float | nil,
        usage_period_end: Time | nil,
        usage_period_start: Time | nil,
        utilization: Float | nil,
        currency_id: String | nil,
        feature_id: String | nil
      }
    end
  end
end
