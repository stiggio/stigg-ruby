# frozen_string_literal: true

require_relative "../../test_helper"

class Stigg::Test::Resources::V1::FeaturesTest < Stigg::Test::ResourceTest
  def test_archive_feature
    skip("Mock server tests are disabled")

    response = @stigg.v1.features.archive_feature("x")

    assert_pattern do
      response => Stigg::V1::Feature
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Feature::Data
      }
    end
  end

  def test_create_feature_required_params
    skip("Mock server tests are disabled")

    response =
      @stigg.v1.features.create_feature(id: "id", display_name: "displayName", feature_type: :BOOLEAN)

    assert_pattern do
      response => Stigg::V1::Feature
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Feature::Data
      }
    end
  end

  def test_list_features
    skip("Mock server tests are disabled")

    response = @stigg.v1.features.list_features

    assert_pattern do
      response => Stigg::Internal::MyCursorIDPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Stigg::Models::V1::FeatureListFeaturesResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        display_name: String,
        enum_configuration: ^(Stigg::Internal::Type::ArrayOf[Stigg::Models::V1::FeatureListFeaturesResponse::EnumConfiguration]) | nil,
        feature_status: Stigg::Models::V1::FeatureListFeaturesResponse::FeatureStatus,
        feature_type: Stigg::Models::V1::FeatureListFeaturesResponse::FeatureType,
        feature_units: String | nil,
        feature_units_plural: String | nil,
        metadata: ^(Stigg::Internal::Type::HashOf[String]),
        meter_type: Stigg::Models::V1::FeatureListFeaturesResponse::MeterType,
        unit_transformation: Stigg::Models::V1::FeatureListFeaturesResponse::UnitTransformation | nil,
        updated_at: Time
      }
    end
  end

  def test_retrieve_feature
    skip("Mock server tests are disabled")

    response = @stigg.v1.features.retrieve_feature("x")

    assert_pattern do
      response => Stigg::V1::Feature
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Feature::Data
      }
    end
  end

  def test_unarchive_feature
    skip("Mock server tests are disabled")

    response = @stigg.v1.features.unarchive_feature("x")

    assert_pattern do
      response => Stigg::V1::Feature
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Feature::Data
      }
    end
  end

  def test_update_feature
    skip("Mock server tests are disabled")

    response = @stigg.v1.features.update_feature("x")

    assert_pattern do
      response => Stigg::V1::Feature
    end

    assert_pattern do
      response => {
        data: Stigg::V1::Feature::Data
      }
    end
  end
end
