class CategoryController < ApplicationController
  def index
    @category = Category.all
  end
end



#make category model
