module Api::V1
    class SessionsController < ApiController

    def create
        user = User.find_by(email: params[:email].downcase)
        if user
            if user.active
                if user.authenticate(params[:password])
                user.set_token
                render json: { auth_token: user.auth_token}
                else
                render json: { error: "Datos incorrectos "}
                end
            else
                render json: { error: "El usuario no ha sido activado aún, contacte con el administrador. "}
            end
        else
            render json: { error: "No existe el usuario. "}
        end
    end

    end
end