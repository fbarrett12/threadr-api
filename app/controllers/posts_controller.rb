class PostsController < ApplicationController

    def index
        @posts = Post.all
        render json: @posts, include: "**", status: :created
    end

    def create
        @post = Post.create(
        {
            title: params[:title],
            body: params[:body],
            channel_id: params[:channel_id],
            user_id: params[:user_id]
        })
        render json: @post, include: "**", status: :created
    end

    def show
        @post = Post.find_by(id: params[:id])
        render json: @post, include: "**", status: :created
    end

    def edit
        
    end

    def destroy
        @post = Post.find_by(id: params[:id])
        @post.destroy()
    end

end
