class Workout < ActiveRecord::Base
  validates :name, presence: {message: 'Name cannot be blank'}

  has_many :workout_exercise_connectors
  has_many :exercises, through: :workout_exercise_connectors

  has_many :workout_sessions
  has_many :users, through: :workout_sessions

  accepts_nested_attributes_for :workout_exercise_connectors, allow_destroy: true
end
