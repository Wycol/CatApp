class SessionsController < ApplicationController

  def new
    if logged_in? 
      redirect_to root_path
    end

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user
      if user.active
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:success] = "Logeado correctamente"
          redirect_to root_path
        else
          flash.now[:danger] = "Los datos de login son incorrectos."
          render 'new'
        end
      else
        flash.now[:danger] = "El usuario no ha sido activado aún, contacte con el administrador."
        render 'new'
      end
    else
      flash.now[:danger] = "El usuario no existe."
        render 'new'
    end
  end

  def destroy
    session[:user_id]= nil
    flash[:success] = "Has deslogeado correctamente."
    redirect_to root_path
  end
end
