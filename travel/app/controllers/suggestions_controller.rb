class SuggestionsController < ApplicationController
  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.user_id = current_user.id
    @suggestion.save
  end


  def upvote
    id = params[:id]
    @suggestion = Suggestion.find(id)
    @suggestion.upvote += 1
    @suggestion.save
  end

  def downvote
    id = params[:id]
    @suggestion = Suggestion.find(id)
    @suggestion.downvote += 1
    @suggestion.save
  end

  def destroy
    id = params[:id]
    @suggestion = Suggestion.find(id)
    @suggestion.destroy
  end

  private

  def suggestion_params
    @suggestion_params ||= params.require(:suggestion).permit(:title, :content, :link, :category_id)
  end
end
