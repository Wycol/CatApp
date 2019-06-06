module Api::V1
    class ResourcesController < ApiController

        def index
            @resources = Resource.all
        end

        def create
            @resource = Resource.new(resources_params)
            
             if  @resource.save
                render json: {message: "Recurso añadido"}
            
            else
                render json: {message: "Arroz en el sistema"}
            end
    
        end

        def resources_params
            params.permit(:name, :localization, :category)
        end

    end
end