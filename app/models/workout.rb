class Workout < ActiveRecord::Base
  validates :name, presence: true
end
