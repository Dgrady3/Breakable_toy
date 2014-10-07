class Categorization < ActiveRecord::Base
  belongs_to :workout
  belongs_to :category

  validates :workout_id, :category_id, presence: true
end
