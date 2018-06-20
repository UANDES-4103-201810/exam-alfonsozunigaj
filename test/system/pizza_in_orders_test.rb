require "application_system_test_case"

class PizzaInOrdersTest < ApplicationSystemTestCase
  setup do
    @pizza_in_order = pizza_in_orders(:one)
  end

  test "visiting the index" do
    visit pizza_in_orders_url
    assert_selector "h1", text: "Pizza In Orders"
  end

  test "creating a Pizza in order" do
    visit pizza_in_orders_url
    click_on "New Pizza In Order"

    fill_in "Order", with: @pizza_in_order.order_id
    fill_in "Pizza", with: @pizza_in_order.pizza_id
    click_on "Create Pizza in order"

    assert_text "Pizza in order was successfully created"
    click_on "Back"
  end

  test "updating a Pizza in order" do
    visit pizza_in_orders_url
    click_on "Edit", match: :first

    fill_in "Order", with: @pizza_in_order.order_id
    fill_in "Pizza", with: @pizza_in_order.pizza_id
    click_on "Update Pizza in order"

    assert_text "Pizza in order was successfully updated"
    click_on "Back"
  end

  test "destroying a Pizza in order" do
    visit pizza_in_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pizza in order was successfully destroyed"
  end
end
