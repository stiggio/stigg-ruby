# frozen_string_literal: true

require_relative "../../../../test_helper"

class Stigg::Test::Resources::V1::Events::Addons::DraftTest < Stigg::Test::ResourceTest
  def test_create_addon_draft
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.draft.create_addon_draft("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::Addons::DraftCreateAddonDraftResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::Addons::DraftCreateAddonDraftResponse::Data
      }
    end
  end

  def test_remove_addon_draft
    skip("Mock server tests are disabled")

    response = @stigg.v1.events.addons.draft.remove_addon_draft("x")

    assert_pattern do
      response => Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse
    end

    assert_pattern do
      response => {
        data: Stigg::Models::V1::Events::Addons::DraftRemoveAddonDraftResponse::Data
      }
    end
  end
end
