require 'test_helper'

class PreservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preservice = preservices(:one)
  end

  test "should get index" do
    get preservices_url
    assert_response :success
  end

  test "should get new" do
    get new_preservice_url
    assert_response :success
  end

  test "should create preservice" do
    assert_difference('Preservice.count') do
      post preservices_url, params: { preservice: { note: @preservice.note, patient_id: @preservice.patient_id, reasons: @preservice.reasons, situation: @preservice.situation, type_service: @preservice.type_service, user_id: @preservice.user_id } }
    end

    assert_redirected_to preservice_url(Preservice.last)
  end

  test "should show preservice" do
    get preservice_url(@preservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_preservice_url(@preservice)
    assert_response :success
  end

  test "should update preservice" do
    patch preservice_url(@preservice), params: { preservice: { note: @preservice.note, patient_id: @preservice.patient_id, reasons: @preservice.reasons, situation: @preservice.situation, type_service: @preservice.type_service, user_id: @preservice.user_id } }
    assert_redirected_to preservice_url(@preservice)
  end

  test "should destroy preservice" do
    assert_difference('Preservice.count', -1) do
      delete preservice_url(@preservice)
    end

    assert_redirected_to preservices_url
  end
end
