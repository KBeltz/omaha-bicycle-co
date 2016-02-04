require 'test_helper'

class CoffeeAndTeasControllerTest < ActionController::TestCase
  setup do
    @coffee_and_tea = coffee_and_teas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffee_and_teas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffee_and_tea" do
    assert_difference('CoffeeAndTea.count') do
      post :create, coffee_and_tea: { brand: @coffee_and_tea.brand, description: @coffee_and_tea.description, image: @coffee_and_tea.image }
    end

    assert_redirected_to coffee_and_tea_path(assigns(:coffee_and_tea))
  end

  test "should show coffee_and_tea" do
    get :show, id: @coffee_and_tea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coffee_and_tea
    assert_response :success
  end

  test "should update coffee_and_tea" do
    patch :update, id: @coffee_and_tea, coffee_and_tea: { brand: @coffee_and_tea.brand, description: @coffee_and_tea.description, image: @coffee_and_tea.image }
    assert_redirected_to coffee_and_tea_path(assigns(:coffee_and_tea))
  end

  test "should destroy coffee_and_tea" do
    assert_difference('CoffeeAndTea.count', -1) do
      delete :destroy, id: @coffee_and_tea
    end

    assert_redirected_to coffee_and_teas_path
  end
end
