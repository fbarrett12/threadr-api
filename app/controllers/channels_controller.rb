class ChannelsController < ApplicationController

    def index 
        @channels = Channel.all
        render json: @channels
    end

    def create 
        @channel = Channel.create()
    end

end
