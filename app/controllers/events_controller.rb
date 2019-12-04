class EventsController < ApplicationController

    def index 
        @events = Event.all 
        render json: @events
        # debugger
    end 

    def show
        @event = Event.find(params[:id])
        render json: @event
    end 

    def create
        @event = Event.create(event_params)
        if @event.valid?
            # render json: @event 
            ActionCable.server.broadcast('events_channel', EventSerializer.new(event))
            # byebug
        else 
            render json: { error: @event.errors.full_messages}, status: :not_accepatble 
        end
        # debugger 
        CreateEvent.create(user_id: current_user.id, event_id: @event.id)
    end 

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
    end 


    private 

    def event_params 
        params.require(:event).permit(:trail_id, :name, :category, :detail, :duration, :date, :time)
    end 

    def create_event_params
        # params.require(:create_event).permit(event_id: @event.id, user_id: current_user.id, :details)
    end 



















end
