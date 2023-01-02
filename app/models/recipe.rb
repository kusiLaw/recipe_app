class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, class_name: 'RecipeFood', dependent: :destroy
end
