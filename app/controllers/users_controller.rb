class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :destroy, :update, :activate, :deactivate]
    before_action :require_admin, except: [:new, :create]
    def index
        @users = User.all.order(:name)
    end

    def new
        @user= User.new
    end
    
    def create
        @user= User.new(user_params)
        if @user.save
            flash[:success] = "Usuario creado!"
            redirect_to root_path
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @user.update(user_params)
            flash[:success] = "Se actualizaron los datos de usuario."
                redirect_to user_path(@user)
        else
            render 'edit'
    end

    end

    def destroy
        if !@user.admin?
        @user.destroy
        flash[:danger]="Usuario eliminado"
        redirect_to users_path
        end
    end

    def activate
        if @user.user_activation
        flash[:success] = "Usuario activado."
        redirect_to users_path
        else
            render 'index'
        end
    end
    def deactivate
       if  @user.user_deactivation
        flash[:success] = "Usuario activado."
        redirect_to users_path
        else
        render 'index'
       end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :tipo, :active, :age, :perfil, :phone, :dni, resource_ids:[])
    end

    def set_user
        @user = User.find(params[:id])
    end

    
end
