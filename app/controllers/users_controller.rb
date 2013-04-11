class UsersController < ApplicationController
  
  def new
    @user = User.new  
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up successfully!"
    else
      flash[:alert] = "Sign up failed."
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User updated successfully."
    else
      flash[:alert] = "User could not be updated."
    end
    redirect_to edit_user_path(params[:id])
  end

  def index
    @users = User.all
  end

end
