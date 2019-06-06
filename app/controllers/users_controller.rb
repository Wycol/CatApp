class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :destroy, :update]
    before_action :require_user, except: [:new, :create]
    def index
        @users = User.all.where(admin: false).order(:name)
    end

    def new
        @user= User.new
    end
    
    def create
        @user= User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Bienvenido #{@user.name} a Cat App!"
            redirect_to user_path(@user)
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
    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :tipo, resource_ids:[])
    end

    def set_user
        @user = User.find(params[:id])
    end

    def require_admin
        if logged_in? && !current_user.admin?
          flash[:danger] = "Solo los administradores pueden hacer eso."
          redirect_to root_path
        end
      end
end
