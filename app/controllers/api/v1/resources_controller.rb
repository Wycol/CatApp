module Api::V1
    class ResourcesController < ApiController
        before_action :set_resource, only: [:show, :destroy, :update]

        def index
            @resources = Resource.all
        end

        def show
        end

        def update
            @resource.update(resources_params)
            head :no_content
        end

        def destroy
            @resource.destroy
            head :no_content
        end

        def create
            @resource = Resource.new(resources_params)
            
             if  @resource.save
                render json: {message: "Recurso añadido"}
            
            else
                render json: {message: "Error al crear recurso"}
            end
    
        end

        def resources_params
            params.permit(:name, :localization, :category)
        end

        def set_resource
            @resource = Resource.find(params[:id])
        end

    end
end