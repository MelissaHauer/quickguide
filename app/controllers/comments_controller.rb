class CommentsController < ApplicationController
 
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @user = User.find(params[:user_id])
    if @comment.save
      @user.comments<< @comment
      flash[:notice] = "Your comment has been saved!"
      redirect_to user_path(params[:user_id])
    else
      flash[:alert] = "There was a problem saving your comment."
      redirect_to new_user_comment_path(params[:user_id])
    end
  end

  def edit
  end

  def update
  end
  
  def index
  end

end
