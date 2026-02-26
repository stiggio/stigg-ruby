# frozen_string_literal: true

require_relative "../../../../test_helper"

class Stigg::Test::Resources::V1::Events::Plans::DraftTest < Stigg::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.plans.draft.create("x")

    assert_pattern do
      response => Stigg::V1::Events::Plan
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Events::Plan::Data
      }
    end
  end

  def test_remove
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.plans.draft.remove("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::Plans::DraftRemoveResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::Plans::DraftRemoveResponse::Data
      }
    end
  end
end
