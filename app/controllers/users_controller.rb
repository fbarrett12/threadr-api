class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, include: "**", status: 200
    end 

    def show
        @user = User.find_by(id: params[:id])
        render json: @user, include: "**", status: 200
    end

    def login
        @user = User.find_or_create_by({username: params[:username]})
        render json: @user, include: "**", status: 200
    end
end
