require "application_system_test_case"

class PetFoodsTest < ApplicationSystemTestCase
  setup do
    @pet_food = pet_foods(:one)
  end

  test "visiting the index" do
    visit pet_foods_url
    assert_selector "h1", text: "Pet Foods"
  end

  test "creating a Pet food" do
    visit pet_foods_url
    click_on "New Pet Food"

    fill_in "Name", with: @pet_food.name
    fill_in "Price", with: @pet_food.price
    click_on "Create Pet food"

    assert_text "Pet food was successfully created"
    click_on "Back"
  end

  test "updating a Pet food" do
    visit pet_foods_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pet_food.name
    fill_in "Price", with: @pet_food.price
    click_on "Update Pet food"

    assert_text "Pet food was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet food" do
    visit pet_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet food was successfully destroyed"
  end
end
