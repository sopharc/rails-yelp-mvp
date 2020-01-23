class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    # add a new restaurant and be redirected to the show view of that restaurant
    # GET "restaurants/new"
    # POST "restaurants"
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    # see details of a restaurant with all reviews related
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
