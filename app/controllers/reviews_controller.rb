class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews, include: {user: {only: [:name]}, movie: {only: [:title,:genre]}}
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        user = User.find(params[:user])
        movie = Movie.find(params[:movie])
        review = Review.create(
            rating: params[:rating],
            user: user,
            movie: movie
        )
        render json: review, include: {user: {only: [:name]}, movie: {only: [:title,:genre]}}
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
        render json: review, include: {user: {only: [:name]}, movie: {only: [:title,:genre]}}
    end

    def destroy
        Review.find(params[:id]).destroy
        render json: {message: "Review has been deleted."}
    end

end
