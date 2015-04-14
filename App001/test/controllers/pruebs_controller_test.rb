require 'test_helper'

class PruebsControllerTest < ActionController::TestCase
  setup do
    @prueb = pruebs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pruebs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prueb" do
    assert_difference('Prueb.count') do
      post :create, prueb: { desc: @prueb.desc, nom: @prueb.nom }
    end

    assert_redirected_to prueb_path(assigns(:prueb))
  end

  test "should show prueb" do
    get :show, id: @prueb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prueb
    assert_response :success
  end

  test "should update prueb" do
    patch :update, id: @prueb, prueb: { desc: @prueb.desc, nom: @prueb.nom }
    assert_redirected_to prueb_path(assigns(:prueb))
  end

  test "should destroy prueb" do
    assert_difference('Prueb.count', -1) do
      delete :destroy, id: @prueb
    end

    assert_redirected_to pruebs_path
  end
end
