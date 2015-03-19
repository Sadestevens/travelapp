class CalendarsController < ApplicationController

  def index
      @suggestions = Suggestion.all
      @suggestions = Suggestion.where(category_id: params[:category_id])
  end

end
