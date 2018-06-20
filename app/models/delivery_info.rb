class DeliveryInfo < ApplicationRecord
  belongs_to :customer
  validates :address1, presence: true
  validates :phone, numericality: true, presence: true
end
