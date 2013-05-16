class IngredientController < ApplicationController
 
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params[:Ingredient])
    @user = User.find(params[:user_id])
    if @ingredient.save
      @user.ingredients << @Ingredient
      flash[:notice] = "Your Ingredient has been saved!"
      redirect_to user_path(params[:user_id])
    else
      flash[:alert] = "There was a problem saving your Ingredient."
      redirect_to new_user_Ingredient_path(params[:user_id])
    end
  end

  def edit
  end

  def update
  end
  
  def index
  	@ingredients=Ingredient.order(:name)

  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @comment = Comment.new
  end

  def search
    @ingredients = Ingredient.search(params[:search])
  end

end
