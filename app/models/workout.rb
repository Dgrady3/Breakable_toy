class Workout < ActiveRecord::Base
  validates :name, presence: true

  has_many :workout_exercise_connectors
  has_many :exercises, through: :workout_exercise_connectors

  has_many :workout_sessions
  has_many :users, through: :workout_sessions
end
