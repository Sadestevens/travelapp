class CategoriesController < ApplicationController

  def index
    id = params(:trip_id)
    @categories = Category.find_by(trip_id: id)
    respond_to do |format|
      format.json json: @categories
    end
  end

  def show
    id = params(:trip_id)
    @category = Category.find(:id)
    respond_to do |format|
      format.json json: @category
    end
  end
end
