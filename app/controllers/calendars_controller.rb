class CalendarsController < ApplicationController

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.user_id = current_user.id
    @suggestion.save
    redirect_to '/calendar'
  end

  def index
      @suggestions = Suggestion.all
      @suggestions = Suggestion.where(category_id: params[:category_id])
  end

  def edit
    @suggestions = Suggestion.where(category_id: params[:category_id])
  end

  def destroy
    id = params[:id]
    @suggestion = Suggestion.find(id)
    @suggestion.destroy
  end

  private

  def suggestion_params
    @suggestion_params ||= params.require(:suggestion).permit(:title, :content, :chosen_date, :link, :category_id)
  end
end
