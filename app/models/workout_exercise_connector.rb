class WorkoutExerciseConnector < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise

  validates :exercise_id, :workout_id, presence: true
end
