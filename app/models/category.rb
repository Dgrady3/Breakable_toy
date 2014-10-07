class Category < ActiveRecord::Base
 has_many :categorizations
 has_many :exercises, through: :categorizations

 validates :name, presence: true
end
