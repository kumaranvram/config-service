require 'test_helper'

class ScfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scf = scfs(:one)
  end

  test "should get index" do
    get scfs_url
    assert_response :success
  end

  test "should get new" do
    get new_scf_url
    assert_response :success
  end

  test "should create scf" do
    assert_difference('Scf.count') do
      post scfs_url, params: { scf: { description: @scf.description, name: @scf.name } }
    end

    assert_redirected_to scf_url(Scf.last)
  end

  test "should show scf" do
    get scf_url(@scf)
    assert_response :success
  end

  test "should get edit" do
    get edit_scf_url(@scf)
    assert_response :success
  end

  test "should update scf" do
    patch scf_url(@scf), params: { scf: { description: @scf.description, name: @scf.name } }
    assert_redirected_to scf_url(@scf)
  end

  test "should destroy scf" do
    assert_difference('Scf.count', -1) do
      delete scf_url(@scf)
    end

    assert_redirected_to scfs_url
  end
end
