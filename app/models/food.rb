class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods

  validates :name, presence: { message: "Name can't be null" }
  validates :quantity, numericality: { only_integer: true, greater_than: 0, message: 'Quantity must be greater than 0' }
  validates :measurement_unit, presence: { message: "Measurement unit can't be null" }
  validates :price, presence: { message: "Price can't be null" }
  validates :price, numericality: { only_float: true, greater_than: 0, message: 'Price must be greater than 0' }
end
