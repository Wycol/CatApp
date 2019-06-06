class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Logeado correctamente"
      redirect_to root_path
    else
      flash.now[:danger] = "Los datos de login son incorrectos."
      render 'new'
    end
  end

  def destroy
    session[:user_id]= nil
    flash[:success] = "Has deslogeado correctamente."
    redirect_to root_path
  end
end
