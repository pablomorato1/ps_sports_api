class CategoryCourse < ApplicationRecord
  # Relationships
  belongs_to :category
  belongs_to :classroom

  # Validations
  validates :category_id, presence: true
  validates :classroom_id, presence: true
end
