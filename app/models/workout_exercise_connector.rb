class Workout_Exercise_Connector < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise

  validates :exercise_id, :workout_category_id, :sets, :reps, presence: true
end
