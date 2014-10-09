class WorkoutSession < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout

  validates :user_id, :workout_id, presence: true
  accepts_nested_attributes_for :workouts, :reject_if => :all_blank, :allow_destroy => true
end
