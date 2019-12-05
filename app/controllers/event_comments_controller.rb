class EventCommentsController < ApplicationController

    def index 
        @event_comments = EventComment.all 
        render json: @event_comments
    end 

    def create 
        # event = Event.find(params[:event_id])
        @event_comment = EventComment.new(event_comment_params)

        #!Broadcast that this comment went out 

        if @event_comment.save
            # debugger
            ActionCable.server.broadcast('event_comments_channel', EventCommentSerializer.new(@event_comment))
            # render json: @event_comment
            # EventMessagesChannel.broadcast_to(event, ChatSerializer.new(chat))
            # byebug
        else 
            render json: { error: @event_comment.errors.full_messages}, status: :not_accepatble 
        end 
    end 

    def show
        @event_comment = EventComment.find(params[:id])
        render json: @event_comment
    end 

    def destroy
        @event_comment = EventComment.find(params[:id])
        @event_comment.destroy
    end 




    private

    def event_comment_params
        # byebug
        params.require(:event_comment).permit(:details, :event_id, :user_id)
    end 


end
