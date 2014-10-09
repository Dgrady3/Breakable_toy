class Exercise < ActiveRecord::Base
  has_many :workout_exercise_connectors
  has_many :workouts, through: :workout_exercise_connectors

  validates :name, presence: true
  accepts_nested_attributes_for :workouts, :reject_if => :all_blank, :allow_destroy => true
end

