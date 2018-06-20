require "application_system_test_case"

class PizzaCartsTest < ApplicationSystemTestCase
  setup do
    @pizza_cart = pizza_carts(:one)
  end

  test "visiting the index" do
    visit pizza_carts_url
    assert_selector "h1", text: "Pizza Carts"
  end

  test "creating a Pizza cart" do
    visit pizza_carts_url
    click_on "New Pizza Cart"

    fill_in "Cart", with: @pizza_cart.cart
    fill_in "Pizza", with: @pizza_cart.pizza_id
    click_on "Create Pizza cart"

    assert_text "Pizza cart was successfully created"
    click_on "Back"
  end

  test "updating a Pizza cart" do
    visit pizza_carts_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @pizza_cart.cart
    fill_in "Pizza", with: @pizza_cart.pizza_id
    click_on "Update Pizza cart"

    assert_text "Pizza cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Pizza cart" do
    visit pizza_carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pizza cart was successfully destroyed"
  end
end
