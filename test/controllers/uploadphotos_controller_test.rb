require 'test_helper'

class UploadphotosControllerTest < ActionController::TestCase
  setup do
    @uploadphoto = uploadphotos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uploadphotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uploadphoto" do
    assert_difference('Uploadphoto.count') do
      post :create, uploadphoto: { content_type: @uploadphoto.content_type, file: @uploadphoto.file, name: @uploadphoto.name, size: @uploadphoto.size }
    end

    assert_redirected_to uploadphoto_path(assigns(:uploadphoto))
  end

  test "should show uploadphoto" do
    get :show, id: @uploadphoto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uploadphoto
    assert_response :success
  end

  test "should update uploadphoto" do
    patch :update, id: @uploadphoto, uploadphoto: { content_type: @uploadphoto.content_type, file: @uploadphoto.file, name: @uploadphoto.name, size: @uploadphoto.size }
    assert_redirected_to uploadphoto_path(assigns(:uploadphoto))
  end

  test "should destroy uploadphoto" do
    assert_difference('Uploadphoto.count', -1) do
      delete :destroy, id: @uploadphoto
    end

    assert_redirected_to uploadphotos_path
  end
end
