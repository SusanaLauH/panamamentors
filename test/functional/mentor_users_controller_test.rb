require 'test_helper'

class MentorUsersControllerTest < ActionController::TestCase
  setup do
    @mentor_user = mentor_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mentor_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mentor_user" do
    assert_difference('MentorUser.count') do
      post :create, mentor_user: { email: @mentor_user.email, field: @mentor_user.field, firstname: @mentor_user.firstname, interests: @mentor_user.interests, lastname: @mentor_user.lastname, password: @mentor_user.password, studies_level: @mentor_user.studies_level }
    end

    assert_redirected_to mentor_user_path(assigns(:mentor_user))
  end

  test "should show mentor_user" do
    get :show, id: @mentor_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mentor_user
    assert_response :success
  end

  test "should update mentor_user" do
    put :update, id: @mentor_user, mentor_user: { email: @mentor_user.email, field: @mentor_user.field, firstname: @mentor_user.firstname, interests: @mentor_user.interests, lastname: @mentor_user.lastname, password: @mentor_user.password, studies_level: @mentor_user.studies_level }
    assert_redirected_to mentor_user_path(assigns(:mentor_user))
  end

  test "should destroy mentor_user" do
    assert_difference('MentorUser.count', -1) do
      delete :destroy, id: @mentor_user
    end

    assert_redirected_to mentor_users_path
  end
end
