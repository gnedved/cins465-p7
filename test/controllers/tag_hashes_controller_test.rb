require 'test_helper'

class TagHashesControllerTest < ActionController::TestCase
  setup do
    @tag_hash = tag_hashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_hashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_hash" do
    assert_difference('TagHash.count') do
      post :create, tag_hash: { key: @tag_hash.key, photograph_id: @tag_hash.photograph_id, value: @tag_hash.value }
    end

    assert_redirected_to tag_hash_path(assigns(:tag_hash))
  end

  test "should show tag_hash" do
    get :show, id: @tag_hash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_hash
    assert_response :success
  end

  test "should update tag_hash" do
    patch :update, id: @tag_hash, tag_hash: { key: @tag_hash.key, photograph_id: @tag_hash.photograph_id, value: @tag_hash.value }
    assert_redirected_to tag_hash_path(assigns(:tag_hash))
  end

  test "should destroy tag_hash" do
    assert_difference('TagHash.count', -1) do
      delete :destroy, id: @tag_hash
    end

    assert_redirected_to tag_hashes_path
  end
end
