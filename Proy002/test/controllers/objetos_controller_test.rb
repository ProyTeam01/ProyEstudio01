require 'test_helper'

class ObjetosControllerTest < ActionController::TestCase
  setup do
    @objeto = objetos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objetos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objeto" do
    assert_difference('Objeto.count') do
      post :create, objeto: { content: @objeto.content, createdby: @objeto.createdby, downvote: @objeto.downvote, padreid: @objeto.padreid, titulo: @objeto.titulo, upvote: @objeto.upvote }
    end

    assert_redirected_to objeto_path(assigns(:objeto))
  end

  test "should show objeto" do
    get :show, id: @objeto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @objeto
    assert_response :success
  end

  test "should update objeto" do
    patch :update, id: @objeto, objeto: { content: @objeto.content, createdby: @objeto.createdby, downvote: @objeto.downvote, padreid: @objeto.padreid, titulo: @objeto.titulo, upvote: @objeto.upvote }
    assert_redirected_to objeto_path(assigns(:objeto))
  end

  test "should destroy objeto" do
    assert_difference('Objeto.count', -1) do
      delete :destroy, id: @objeto
    end

    assert_redirected_to objetos_path
  end
end
