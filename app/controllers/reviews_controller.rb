class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new # This is needed for simple_form
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save

    redirect_to restaurants_path
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
