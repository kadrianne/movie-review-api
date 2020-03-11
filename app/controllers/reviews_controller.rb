class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: ReviewSerializer.new(reviews).to_serialized_json
    end

    def show
        review = Review.find(params[:id])
        render json: ReviewSerializer.new(review).to_serialized_json
    end

    def create
        user = User.find(params[:user])
        movie = Movie.find(params[:movie])
        review = Review.create(
            rating: params[:rating],
            user: user,
            movie: movie
        )
        render json: ReviewSerializer.new(review).to_serialized_json
    end

    def update
        review = Review.find(params[:id])
        user = User.find(params[:user])
        movie = Movie.find(params[:movie])
        review.update(
            rating: params[:rating],
            user: user,
            movie: movie
        )
        render json: ReviewSerializer.new(review).to_serialized_json
    end

    def destroy
        Review.find(params[:id]).destroy
        render json: {message: "Review has been deleted."}
    end

end
