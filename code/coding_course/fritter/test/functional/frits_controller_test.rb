require 'test_helper'

class FritsControllerTest < ActionController::TestCase
  setup do
    @frit = frits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frit" do
    assert_difference('Frit.count') do
      post :create, frit: { publish_date: @frit.publish_date, text: @frit.text, user_id: @frit.user_id }
    end

    assert_redirected_to frit_path(assigns(:frit))
  end

  test "should show frit" do
    get :show, id: @frit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frit
    assert_response :success
  end

  test "should update frit" do
    put :update, id: @frit, frit: { publish_date: @frit.publish_date, text: @frit.text, user_id: @frit.user_id }
    assert_redirected_to frit_path(assigns(:frit))
  end

  test "should destroy frit" do
    assert_difference('Frit.count', -1) do
      delete :destroy, id: @frit
    end

    assert_redirected_to frits_path
  end
end
