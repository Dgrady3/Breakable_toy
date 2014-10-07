class Exercise < ActiveRecord::Base
  has_many :workout_exercise_connectors
  has_many :workouts, through: :workout_exercise_connectors

  has_many :categorizations
  has_many :categories, through: :categorizations

  validates :name, presence: true
end

