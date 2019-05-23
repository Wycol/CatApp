module Api::V1
    class UsersController < ApiController

        def index
            @users = User.all
        end

        def create
            @user = User.new(user_params)
            
             if  @user.save
                render json: {message: "Usuario creado"}

            else
                render json: {message: "Arroz en el sistema"}
            end
    
        end

        def user_params
            params.permit(:name, :email, :password, :password_confirmation)
        end

    end
end