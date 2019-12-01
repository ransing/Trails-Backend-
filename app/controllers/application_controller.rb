class ApplicationController < ActionController::API
    private

    # def decoded_token
    #     begin
    #         token = request.headers["Authorization"].split(" ")[1]
    def decoded_token
        begin
            token = request.headers["Authorization"].split(" ")[1]
            JWT.decode(token, "gsfigsofhofhodhfhfhlahfhfkdhflhdf", true, { algorithm: "HS256"} )
        rescue 
            return nil
        end 
    end 

    def create_token(user_id)
        payload = {user_id: user_id}
        JWT.encode(payload, "gsfigsofhofhodhfhfhlahfhfkdhflhdf", "HS256")
    end 

    def current_user
        # byebug
        if decoded_token !=nil
            # byebug
            User.find(decoded_token[0]["user_id"])
        end  
        # return current_user
    end 


    def token_is_valid
        current_user != nil
    end 

    def signing_secret
        null
    end 
       
    # def user_id_from_token
    #     begin
    #         token = request.headers["Authorization"].split(" ")[1]
    #         decoded_token = JWT.decode(token, "gsfigsofhofhodhfhfhlahfhfkdhflhdf", true, { algorithm: 'HS256' })
    #         return decoded_token.first["user_id"]
    #       rescue 
    #         return nil
    #       end
    # end




end
