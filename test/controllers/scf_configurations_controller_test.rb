require 'test_helper'

class ScfConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scf_configuration = scf_configurations(:one)
  end

  test "should get index" do
    get scf_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_scf_configuration_url
    assert_response :success
  end

  test "should create scf_configuration" do
    assert_difference('ScfConfiguration.count') do
      post scf_configurations_url, params: { scf_configuration: { client_id: @scf_configuration.client_id, scf_id: @scf_configuration.scf_id, value: @scf_configuration.value } }
    end

    assert_redirected_to scf_configuration_url(ScfConfiguration.last)
  end

  test "should show scf_configuration" do
    get scf_configuration_url(@scf_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_scf_configuration_url(@scf_configuration)
    assert_response :success
  end

  test "should update scf_configuration" do
    patch scf_configuration_url(@scf_configuration), params: { scf_configuration: { client_id: @scf_configuration.client_id, scf_id: @scf_configuration.scf_id, value: @scf_configuration.value } }
    assert_redirected_to scf_configuration_url(@scf_configuration)
  end

  test "should destroy scf_configuration" do
    assert_difference('ScfConfiguration.count', -1) do
      delete scf_configuration_url(@scf_configuration)
    end

    assert_redirected_to scf_configurations_url
  end
end
