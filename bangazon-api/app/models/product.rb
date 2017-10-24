class Product < ApplicationRecord
  belongs_to :customer
  belongs_to :product_type
  has_many :order_product
  has_many :orders, through: :order_product
end
