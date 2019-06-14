module Api::V1
    class UsersController < ApiController
        before_action :set_user, only: [:show, :edit, :destroy, :update]

        def index
            @users = User.all
        end

        def show
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

        def set_user
            @user = User.find(params[:id])
        end

    end
end