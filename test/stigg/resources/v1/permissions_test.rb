# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::PermissionsTest < Stigg::Test::ResourceTest
  def test_check_required_params
    skip("Prism tests are disabled")

    response =
      @stigg.v1.permissions.check(
        user_id: "userId",
        resources_and_actions: [{action: "read", resource: "product"}]
      )

    assert_pattern do
      response => Stigg::Models::V1::PermissionCheckResponse
    end

    assert_pattern do
      response => {
        permitted_list: ^(Stigg::Internal::Type::ArrayOf[Stigg::Internal::Type::Boolean])
      }
    end
  end
end
