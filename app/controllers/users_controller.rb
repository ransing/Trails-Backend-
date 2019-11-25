class UsersController < ApplicationController

    def create 
            user = User.create(user_params)
        if user.valid?
            render json: {token: create_token(user.id), user_id: user.id}
        else 
            render json: {errors: user.errors.full_messages}, status: 422
        end 
    end 

    def profile
        # found = current_user
        render json: current_user
    end 

    def show
        user_id = params[:id]
        # byebug
        # if user_id_from_token == user_id.to_i
        if decoded_token == user_id.to_i
            user = User.find(user_id)
            render json: user
        else  
            render json: { go_away: true}, status: :unauthorized 
        end 
    end 

    private
    def user_params
        params.permit(:username, :password)
    end 


end
