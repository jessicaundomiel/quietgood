require 'test_helper'

class ReadsControllerTest < ActionController::TestCase
  setup do
    @read = reads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create read" do
    assert_difference('Read.count') do
      post :create, read: { book: @read.book, name: @read.name, synopsis: @read.synopsis }
    end

    assert_redirected_to read_path(assigns(:read))
  end

  test "should show read" do
    get :show, id: @read
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @read
    assert_response :success
  end

  test "should update read" do
    patch :update, id: @read, read: { book: @read.book, name: @read.name, synopsis: @read.synopsis }
    assert_redirected_to read_path(assigns(:read))
  end

  test "should destroy read" do
    assert_difference('Read.count', -1) do
      delete :destroy, id: @read
    end

    assert_redirected_to reads_path
  end
end
