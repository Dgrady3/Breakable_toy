class Workout < ActiveRecord::Base
  validates :name, presence: true

  has_many :catigorizations
  has_many :workout_exercise_connectors
  has_many :workout_sessions
end
