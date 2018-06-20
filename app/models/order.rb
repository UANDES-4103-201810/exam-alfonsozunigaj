class Order < ApplicationRecord
  belongs_to :customer
  has_one :delivery_info
  has_many :pizza_in_orders
  has_many :pizza, through: :pizza_in_orders
  validates :payment, presence: true
end
