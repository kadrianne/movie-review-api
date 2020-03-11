class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        user = User.create(
            name: params[:name],
            age: params[:age],
        )
        render json: user
    end

    def update
        @user = User.find(params[:id])
        @user.update(
            name: params[:name],
            age: params[:age],
        )
        render json: @user
    end

    def destroy
        User.find(params[:id]).destroy
        render json: {message: "User has been successfully deleted."}
    end
end
