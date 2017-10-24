class Order < ApplicationRecord
  has_many :order_product
  has_many :products, through: :order_product
  belongs_to :customer
  belongs_to :payment_type
end
