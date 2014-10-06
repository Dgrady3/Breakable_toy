class Workout_session < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout
end
