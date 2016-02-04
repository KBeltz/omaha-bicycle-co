require 'test_helper'

class PedalHappiesControllerTest < ActionController::TestCase
  setup do
    @pedal_happy = pedal_happies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedal_happies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedal_happy" do
    assert_difference('PedalHappy.count') do
      post :create, pedal_happy: { description: @pedal_happy.description, name: @pedal_happy.name }
    end

    assert_redirected_to pedal_happy_path(assigns(:pedal_happy))
  end

  test "should show pedal_happy" do
    get :show, id: @pedal_happy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedal_happy
    assert_response :success
  end

  test "should update pedal_happy" do
    patch :update, id: @pedal_happy, pedal_happy: { description: @pedal_happy.description, name: @pedal_happy.name }
    assert_redirected_to pedal_happy_path(assigns(:pedal_happy))
  end

  test "should destroy pedal_happy" do
    assert_difference('PedalHappy.count', -1) do
      delete :destroy, id: @pedal_happy
    end

    assert_redirected_to pedal_happies_path
  end
end
