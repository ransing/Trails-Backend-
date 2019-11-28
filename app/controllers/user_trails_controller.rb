class UserTrailsController < ApplicationController

    def create
       
        # byebug
        @user_trail = UserTrail.create(user_id: current_user.id, trail_id: user_trail_params)
        if @user_trail.valid?
            render json: @user_trail 
        else 
            render json: { error: @user_trail.errors.full_messages}, status: :not_accepatble 
        end
    end 
    
    def show 
        @user_trail = UserTrail.find(params[:id])
        render json: @user_trail
    end 

    def index 
        @user_trails = UserTrail.all 
        render json: @user_trails
    end 


    private 

    def user_trail_params 
        params.require(:user_trail).permit(:trail_id)[:trail_id]
    end 
end
