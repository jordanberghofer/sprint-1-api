class Order < ApplicationRecord
  belongs_to :product
  belongs_to :customer
  belongs_to :payment_type
end
