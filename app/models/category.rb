class Category < ApplicationRecord
  # Relationships
  belongs_to :classroom
  has_many :category_courses, dependent: :destroy

  # Validations
  validates :name, presence: true
end
