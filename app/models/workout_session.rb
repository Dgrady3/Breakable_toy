class WorkoutSession < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout

  validates :user_id, presence: {message: ' Not getting user id '}
  validates :workout_id, presence: {message: 'Not getting workout_id '}
  accepts_nested_attributes_for :workout, :reject_if => :all_blank, :allow_destroy => true
end
