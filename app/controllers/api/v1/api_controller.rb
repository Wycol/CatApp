module Api::V1
    class ApiController < ApplicationController
        
        def json_response(object, status = :ok)
            render json: object, status: status
          end




        def req_token
            if request.headers[:token].present?
                p 'HayToken:'
                user = User.find_by(auth_token: request.headers[:token].to_s)
                if user
                    
                else
                    render json: { error: "Error en los datos de login."}
                end
            else
                render json: { error: "No hay token en el header"}
            end
        end
    end
end