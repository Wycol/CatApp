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

    def destroy
        if request.headers[:token].present?
            user = User.find_by(auth_token: request.headers[:token].to_s)
            if user
                user.auth_token = nil
                user.save
                render json: { Success: "Has deslogeado correctamente. "}
            else
                render json: { Error: "El token es incorrecto o no existe"}
            end
        else
        render json: { Error: "No estas logeado. "}

      end
    end

    end
end