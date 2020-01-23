class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.new
  end

  def create
    # add a new review for a restaurant
    @reviews = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurants_path(@restaurant)
  end
end

# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"

private

  def review_params
    params.require(:review).permit(:content)
  end
