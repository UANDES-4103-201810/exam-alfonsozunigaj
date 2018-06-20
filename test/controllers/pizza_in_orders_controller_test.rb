require 'test_helper'

class PizzaInOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza_in_order = pizza_in_orders(:one)
  end

  test "should get index" do
    get pizza_in_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_in_order_url
    assert_response :success
  end

  test "should create pizza_in_order" do
    assert_difference('PizzaInOrder.count') do
      post pizza_in_orders_url, params: { pizza_in_order: { order_id: @pizza_in_order.order_id, pizza_id: @pizza_in_order.pizza_id } }
    end

    assert_redirected_to pizza_in_order_url(PizzaInOrder.last)
  end

  test "should show pizza_in_order" do
    get pizza_in_order_url(@pizza_in_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_in_order_url(@pizza_in_order)
    assert_response :success
  end

  test "should update pizza_in_order" do
    patch pizza_in_order_url(@pizza_in_order), params: { pizza_in_order: { order_id: @pizza_in_order.order_id, pizza_id: @pizza_in_order.pizza_id } }
    assert_redirected_to pizza_in_order_url(@pizza_in_order)
  end

  test "should destroy pizza_in_order" do
    assert_difference('PizzaInOrder.count', -1) do
      delete pizza_in_order_url(@pizza_in_order)
    end

    assert_redirected_to pizza_in_orders_url
  end
end
