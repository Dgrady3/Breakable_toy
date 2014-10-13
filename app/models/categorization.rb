class Categorization < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :category

  validates :exercise, :category_id, presence: true
end
