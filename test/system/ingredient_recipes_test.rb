require "application_system_test_case"

class IngredientRecipesTest < ApplicationSystemTestCase
  setup do
    @ingredient_recipe = ingredient_recipes(:one)
  end

  test "visiting the index" do
    visit ingredient_recipes_url
    assert_selector "h1", text: "Ingredient Recipes"
  end

  test "creating a Ingredient recipe" do
    visit ingredient_recipes_url
    click_on "New Ingredient Recipe"

    fill_in "Ingredient", with: @ingredient_recipe.ingredient_id
    fill_in "Recipe", with: @ingredient_recipe.recipe_id
    click_on "Create Ingredient recipe"

    assert_text "Ingredient recipe was successfully created"
    click_on "Back"
  end

  test "updating a Ingredient recipe" do
    visit ingredient_recipes_url
    click_on "Edit", match: :first

    fill_in "Ingredient", with: @ingredient_recipe.ingredient_id
    fill_in "Recipe", with: @ingredient_recipe.recipe_id
    click_on "Update Ingredient recipe"

    assert_text "Ingredient recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredient recipe" do
    visit ingredient_recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredient recipe was successfully destroyed"
  end
end
