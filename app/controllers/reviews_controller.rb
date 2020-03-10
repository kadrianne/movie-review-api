class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        @review = Review.create(
            # user_id: User.find(params[:user_id]),
            # movie_id: Movie.find(params[:movie_id]),
            rating: params[:rating]
        )
        render json: @review
    end

end
