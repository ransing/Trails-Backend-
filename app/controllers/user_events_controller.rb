class UserEventsController < ApplicationController

    def create
        # byebug
        @user_event = UserEvent.create(user_id: current_user.id, event_id: user_event_params)
        if @user_event.valid?
            render json: @user_event 
        else 
            render json: { error: @user_event.errors.full_messages}, status: :not_accepatble 
        end
    end 
    
    def show 
        @user_event = UserEvent.find(params[:id])
        render json: @user_event
    end 

    def index 
        @user_events = UserEvent.all 
        render json: @user_events
    end 


    private 

    def user_event_params 
        params.require(:user_events).permit(:event_id)[:event_id]
    end 

end
