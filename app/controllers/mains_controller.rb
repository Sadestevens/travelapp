class MainsController < ApplicationController
  before_action :require_current_user
  def index

  end

  def return_current_user
    @current_user = current_user
    respond_to do |format|
      format.json { render json: @current_user }
    end

    def calendar
      @suggestion = Suggestion.new(suggestion_params)
      @suggestion.user_id = current_user.id
      @suggestion.save
    end

  end
end
