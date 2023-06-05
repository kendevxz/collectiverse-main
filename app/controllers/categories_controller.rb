class CategoriesController < ApplicationController
  before_action :set_params, only: %i[show destroy]

  def index
    @categories = Category.all
    if params[:query].present?
      @categories = @categories.where(name: params[:query])
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path # adjust later
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy
    redirect_to root_path, status: :see_other  # adjust later
  end

  private
  def category_params
    params.require(:category).permit(:title, :content)
  end

  def set_params
    @category = category.find(params[:id])
  end
end
