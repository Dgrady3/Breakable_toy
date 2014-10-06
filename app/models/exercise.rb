class Exercise < ActiveRecord::Base
  has_many :workout_exercise_connectors
  validates :name, presence: true
end

