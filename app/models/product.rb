class Product < ApplicationRecord
  # relation
  has_many :types
  # Validations to ensure that the product data is valid
  validates :product_name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :img, presence: true
end