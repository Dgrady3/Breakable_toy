class Category < ActiveRecord::Base
 has_many :categorizations

 validates :name, presence: true
end
