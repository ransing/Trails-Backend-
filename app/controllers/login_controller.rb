class LoginController < ApplicationController
        
    def login 
        # debugger 
        user = User.find_by(username: params[:username])
        is_authenticated = user && user.authenticate(params[:password])

        if is_authenticated 
            generated_token = create_token(user.id)
            # debugger 
            render json: {token: generated_token, user_id: user.id}
        else  
            render json: {errors: ["try agian"]}, status: 422
        end
    end 

    # def send
    #     begin 
    #         token = request.headers["Authorization"].split(" ")[1]
    #         x = JWT.decode(token, "gsfigsofhofhodhfhfhlahfhfkdhflhdf", true, { algorithm: "HS256"} )
    #         # byebug
    #         # @user = User.find(x[0]["user_id"])
    #         user = x    
    #         # [0]["user_id"]
    #         # byebug
    #         render json: {user: user}
    #     rescue
    #         render json: {message: "Oh no"}
    #     end 
       
    # end 

    # def send
    #     current_user
    # end 


end
