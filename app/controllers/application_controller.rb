class ApplicationController < ActionController::Base
  def index
    @recipes = Recipe.all
  end

  def add_to_cart
    pizza = Pizza.new()
    pizza.crust = Crust.find_by_thin(false)
    pizza.recipe_id = params[:recipe]
    pizza.save
    item = PizzaCart.new(cart: current_customer.cart, pizza: pizza)
    item.save
    redirect_to root_path
  end

  def add_to_cart_thin

  end
end
