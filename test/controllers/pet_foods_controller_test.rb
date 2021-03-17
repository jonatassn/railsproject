require "test_helper"

class PetFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_food = pet_foods(:one)
  end

  test "should get index" do
    get pet_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_food_url
    assert_response :success
  end

  test "should create pet_food" do
    assert_difference('PetFood.count') do
      post pet_foods_url, params: { pet_food: { name: @pet_food.name, price: @pet_food.price } }
    end

    assert_redirected_to pet_food_url(PetFood.last)
  end

  test "should show pet_food" do
    get pet_food_url(@pet_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_food_url(@pet_food)
    assert_response :success
  end

  test "should update pet_food" do
    patch pet_food_url(@pet_food), params: { pet_food: { name: @pet_food.name, price: @pet_food.price } }
    assert_redirected_to pet_food_url(@pet_food)
  end

  test "should destroy pet_food" do
    assert_difference('PetFood.count', -1) do
      delete pet_food_url(@pet_food)
    end

    assert_redirected_to pet_foods_url
  end
end
