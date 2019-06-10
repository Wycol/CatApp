class ResourcesController < ApplicationController
    before_action :set_resource, only: [:show, :edit, :destroy, :update]
    before_action :require_admin, except: [:index, :show, :edit, :update]
    before_action :require_user
    def index
        @resources = Resource.all
        @resources_filter = current_user.resources
    end

    def new
        @resource= Resource.new
    end
    
    def create
        @resource= Resource.new(resource_params)
        if @resource.save
            flash[:success] = "Creado recurso nuevo!"
            redirect_to resources_path
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @resource.update(resource_params)
            flash[:success] = "Se actualizaron los datos de recurso."
            redirect_to resource_path(@resource)
        else
            render 'edit'
    end

    end

    def destroy
        @resource.destroy
        flash[:danger]="Recurso eliminado"
        redirect_to resources_path
        
    end

    private
    def resource_params
        params.require(:resource).permit(:name, :localization, :category,
                form_fields_attributes: [:id, :label, :value, :_destroy])
    end

    def set_resource
        @resource = Resource.find(params[:id])
    end

    # def require_admin
    #     if logged_in? && !current_user.admin?
    #       flash[:danger] = "Solo los administradores pueden hacer eso."
    #       redirect_to root_path
    #     end
    # end
end