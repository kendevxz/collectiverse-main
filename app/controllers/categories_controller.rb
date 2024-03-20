class CategoriesController < ApplicationController
  before_action :set_params, only: %i[show destroy]

  def index
    @categories = Category.all
  end

  def show
    @post = Post.new
    @posts = Post.order('karma DESC').all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:name, :photo)
  end

  def set_params
    @category = Category.find(params[:id])
  end
end
