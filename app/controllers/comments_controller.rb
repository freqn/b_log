class CommentsController < ApplicationController
  before_action :get_comment, only: [:edit, :show, :update]
  def new
   @comment = Comment.new
  end
  def create
   @comment = Comment.new(comments_params)
   @comment.post_id = params[:post_id]
    if @comment.save
      flash[:success] = "Comment has been saved."
      redirect_to post_path(params[:post_id])
    else
      message = @comment.errors.full_messages.to_sentence
      message << "Comment has not been saved."
      flash[:error] = message
      redirect_to new_post_comment_path
    end
  end
  def update
    @comment.update(comments_params)
    if @comment.save
    flash[:success] = "Comment has been updated."
    redirect_to post_comment_path
  else
    flash[:error] = "Comment has not been updated."
    redirect_to post_comment_path
    end
  end
  private
    def comments_params
      params.require(:comment).permit(:author, :content, :post_id)
  end
  def get_comment
    @comment = Comment.find(params[:id])
  end
end
