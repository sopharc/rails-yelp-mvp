class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def show
    @restaurants = Restaurant.find(params[:restaurant])
  end

  def edit
    @restaurants = Restaurant.find(params[:restaurant])
  end
end
