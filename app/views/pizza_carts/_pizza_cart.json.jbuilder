json.extract! pizza_cart, :id, :cart, :pizza_id, :created_at, :updated_at
json.url pizza_cart_url(pizza_cart, format: :json)
