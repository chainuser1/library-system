require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

  test "should get show_old" do
    get :show_old
    assert_response :success
  end

  test "should get show_new" do
    get :show_new
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
