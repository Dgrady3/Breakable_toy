class Workout < ActiveRecord::Base
  validates :name, presence: true

  has_many :categorizations
  has_many :workout_exercise_connectors
  has_many :workout_sessions
end
