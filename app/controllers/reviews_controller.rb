class ReviewsController < ApplicationController
  before_action :authorize

  def create
    @review = Review.new(review_params)
    @review.user = logged_in_user

    @review.save

    @reviews = Review.where("product_id = ?", params[:product_id]).order(created_at: :asc)

    #binding.pry

    respond_to do |format|
      format.js
    end
  end

  private

    def review_params
      params.permit(:content, :product_id)
    end
end
