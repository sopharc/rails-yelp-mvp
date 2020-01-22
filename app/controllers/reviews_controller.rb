class ReviewsController < ApplicationController

def new
  @reviews = Review.new
end

def create
  @reviews = Review.new(params[:restaurant])
  @reviews = Review.save
  redirect_to restaurants_path
end
end
