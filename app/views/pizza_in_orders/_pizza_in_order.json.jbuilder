json.extract! pizza_in_order, :id, :order_id, :pizza_id, :created_at, :updated_at
json.url pizza_in_order_url(pizza_in_order, format: :json)
