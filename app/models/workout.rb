class Workout < ActiveRecord::Base
  validates :name, presence: true

  has_many :workout_exercise_connectors
  has_many :exercises, through: :workout_exercise_connectors
  belongs_to :users

  accepts_nested_attributes_for :workout_exercise_connectors, :reject_if => :all_blank, :allow_destroy => true
end
