class Stat < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :bench
  validates_presence_of :squat
  validates_presence_of :dead_lift
  validates_presence_of :mile
  validates_presence_of :user_id
end
