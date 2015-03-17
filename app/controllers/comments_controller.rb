class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.json { render json: @comment }
    end
  end

  def index
    @all_comments = Comment.all
    respond_to do |format|
      format.json { render json: @all_comments }
    end
  end

  def suggestion_comments
    @comments = Comment.where(suggestion_id: params[:id]).all
    respond_to do |format|
      format.json { render json: @comments }
    end
  end

  private

  def comment_params
    @comment_params ||= params.require(:comment).permit(:suggestion_id, :user_id, :content)
  end

end
