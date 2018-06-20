json.extract! order, :id, :customer_id, :payment, :created_at, :updated_at
json.url order_url(order, format: :json)
