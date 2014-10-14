class WorkoutExerciseConnector < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise

  

  accepts_nested_attributes_for :exercise, :allow_destroy => true
end
