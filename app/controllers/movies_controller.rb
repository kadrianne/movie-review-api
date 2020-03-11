class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        render json: @movies
    end

    def show
        movie = Movie.find(params[:id])
        render json: movie
    end

    def create
        @movie = Movie.create(
            title: params[:title],
            rating: params[:rating],
            genre: params[:genre],
            release_date: params[:release_date],
            runtime: params[:runtime],
            synopsis: params[:synopsis]
        )
        render json: @movie
    end

    def update
        movie = Movie.find(params[:id])
        movie.update(
            title: params[:title],
            rating: params[:rating],
            genre: params[:genre],
            release_date: params[:release_date],
            runtime: params[:runtime],
            synopsis: params[:synopsis]
        )
        render json: movie
    end

    def destroy
        Movie.find(params[:id]).destroy
        render json: {message: "Movie has been deleted successfully."} 
    end 
end
