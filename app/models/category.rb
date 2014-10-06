class Categorization < ActiveRecord::Base
  has_many :categorizations
  belongs_to :workout
end
