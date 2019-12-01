class TrailsController < ApplicationController

    def index 
        @trails = Trail.all 
        render json: @trails 
        # byebug
    end 



end
