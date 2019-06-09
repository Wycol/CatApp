class FormFieldsController < ApplicationController

    def create
        @newform = FormField.new(form_field_params)
        resource = Resource.find(params[:form_field][:resource_id])
    
        if @newform.save
            flash[:success]  = "Campo agregado correctamente."
          redirect_to edit_resource_path(resource)
        else
          flash[:alert] = "Los campos requeridos estan vacíos."
          redirect_to edit_resource_path(resource)
        end
    end

    private
    def form_field_params
        params.require(:form_field).permit(:resource_id, :value, :label, :input_type)
    end
end