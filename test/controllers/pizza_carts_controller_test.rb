require 'test_helper'

class PizzaCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza_cart = pizza_carts(:one)
  end

  test "should get index" do
    get pizza_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_cart_url
    assert_response :success
  end

  test "should create pizza_cart" do
    assert_difference('PizzaCart.count') do
      post pizza_carts_url, params: { pizza_cart: { cart: @pizza_cart.cart, pizza_id: @pizza_cart.pizza_id } }
    end

    assert_redirected_to pizza_cart_url(PizzaCart.last)
  end

  test "should show pizza_cart" do
    get pizza_cart_url(@pizza_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_cart_url(@pizza_cart)
    assert_response :success
  end

  test "should update pizza_cart" do
    patch pizza_cart_url(@pizza_cart), params: { pizza_cart: { cart: @pizza_cart.cart, pizza_id: @pizza_cart.pizza_id } }
    assert_redirected_to pizza_cart_url(@pizza_cart)
  end

  test "should destroy pizza_cart" do
    assert_difference('PizzaCart.count', -1) do
      delete pizza_cart_url(@pizza_cart)
    end

    assert_redirected_to pizza_carts_url
  end
end
