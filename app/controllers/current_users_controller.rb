class CurrentUsersController < ApplicationController

    def index 
        # current_user
        @current_user = current_user
        render json: @current_user
        # debugger
    end 


end
