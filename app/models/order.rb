class Order < ApplicationRecord
  belongs_to :customer
  has_one :delivery_info
  has_many :pizzas
  validates :payment, presence: true
  validates :pizzas, length: { minimum: 1 }
end
