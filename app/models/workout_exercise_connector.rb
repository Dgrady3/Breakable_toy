class WorkoutExerciseConnector < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise

  accepts_nested_attributes_for :exercise, :reject_if => :all_blank, :allow_destroy => true
end
