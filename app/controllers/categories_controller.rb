class CategoriesController < ApplicationController
  before_filter :require_login

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_registration_path
    end
  end
end
