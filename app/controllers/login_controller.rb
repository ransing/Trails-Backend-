class LoginController < ApplicationController
        
    def login 
        # debugger 
        user = User.find_by(username: params[:username])
        is_authenticated = user && user.authenticate(params[:password])

        if is_authenticated 
            generated_token = create_token(user.id)
            render json: {token: generated_token, user_id: user.id}
        else  
            render json: {errors: ["try agian"]}, status: 422
        end
    end 


end
