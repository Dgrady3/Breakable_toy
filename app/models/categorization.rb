class Categorization < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :category

  validates :exercise, :category, presence: true
end
