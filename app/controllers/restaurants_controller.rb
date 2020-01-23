class RestaurantsController < ApplicationController
  def index
    # a user can see a list of all restaurants
    @restaurants = Restaurant.all
  end

  def new
    # add a new restaurant and be redirected to the show view of that restaurant
    # GET "restaurants/new"
    # POST "restaurants"
    @restaurants = Restaurant.new
    redirect_to restaurants_path
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant = Restaurant.save
    redirect_to restaurant_path

  end

  def show
    # see details of a restaurant with all reviews related
    @restaurants = Restaurant.find(params[:restaurant])
  end

  def edit
    @restaurants = Restaurant.find(params[:restaurant])
  end
end
