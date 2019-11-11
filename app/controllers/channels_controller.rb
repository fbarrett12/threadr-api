class ChannelsController < ApplicationController
    def index
        @channels = Channel.all 
        render json: @channels, include: "**", status: :created
    end

    def create
        @channel = Channel.create({
            title: params[:title],
            description: params[:description]
            })
        render json: @channel, include: "**", status: :created
    end
end
