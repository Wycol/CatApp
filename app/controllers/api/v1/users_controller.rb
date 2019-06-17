module Api::V1
    class UsersController < ApiController
        before_action :set_user, only: [:show, :destroy, :update]
        before_action :req_token
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
                render json: {message: "Error al crear usuario"}
            end
    
        end

        def update
            @user.update(user_params)
            head :no_content
        end

        def destroy
            @user.destroy
            head :no_content
        end

        def user_params
            params.permit(:name, :email, :password, :password_confirmation, :tipo, :active, :age, :perfil, :phone, :dni, resource_ids:[])
        end

        def set_user
            @user = User.find(params[:id])
        end

    end
end